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
    /* +0x0B */ u8 unkB;
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
void sub_800EAC8(u32, u32); // room_seq_chg
u16 sub_800EADC(u16 arg0);
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

/* autodumped */
extern const u8 gUnknown_0801C41C[8];
extern const u8 gUnknown_0801C424[12];
extern const struct CourtPresentData gUnknown_0801C430[10];
extern const struct CourtPresentData gUnknown_0801C480[11];
extern const u8 gUnknown_0801C4D8[2];
extern const u8 gUnknown_0801C4DA[18];
extern const u8 gUnknown_0801C4EC[24];
extern const u8 gUnknown_0801C504[26];
extern const u8 gUnknown_0801C51E[34];
extern const struct CourtPresentData gUnknown_0801C540[4];
extern const struct CourtPresentData gUnknown_0801C560[2];
extern const struct CourtPresentData gUnknown_0801C570[13];
extern const struct CourtPresentData gUnknown_0801C5D8[7];
extern const struct InvestigationPresentData gUnknown_0801C610[87];
extern const u16 gUnknown_0801CA24[2];
extern const struct TalkData gUnknown_0801CA28[24];
extern const u8 gUnknown_0801CC08[8][5];
extern const struct ExaminationData gUnknown_0801CC30[6];
extern const struct ExaminationData gUnknown_0801CCA8[2];
extern const struct ExaminationData gUnknown_0801CCD0[7];
extern const struct ExaminationData gUnknown_0801CD5C[4];
extern const struct ExaminationData gUnknown_0801CDAC[5];
extern const struct ExaminationData gUnknown_0801CE10[6];
extern const struct ExaminationData gUnknown_0801CE88[5];
extern const struct ExaminationData gUnknown_0801CEEC[4];
extern const struct ExaminationData gUnknown_0801CF3C[4];
extern const struct ExaminationData gUnknown_0801CF8C[5];
extern const struct InvestigationPresentData gUnknown_0801CFF0[95];
extern const u16 gUnknown_0801D464[6];
extern const struct TalkData gUnknown_0801D470[31];
extern const u8 gUnknown_0801D6DC[8][5];
extern const struct ExaminationData gUnknown_0801D704[5];
extern const struct ExaminationData gUnknown_0801D768[2];
extern const struct ExaminationData gUnknown_0801D790[7];
extern const struct ExaminationData gUnknown_0801D81C[4];
extern const struct ExaminationData gUnknown_0801D86C[6];
extern const struct ExaminationData gUnknown_0801D8E4[5];
extern const struct ExaminationData gUnknown_0801D948[6];
extern const struct ExaminationData gUnknown_0801D9C0[5];
extern const struct ExaminationData gUnknown_0801DA24[5];
extern const struct ExaminationData gUnknown_0801DA88[6];
extern const u8 gUnknown_0801DB00[2];
extern const u8 gUnknown_0801DB02[20];
extern const u8 gUnknown_0801DB16[23];
extern const u8 gUnknown_0801DB2D[23];
extern const u8 gUnknown_0801DB44[28];
extern const u8 gUnknown_0801DB60[28];
extern const struct CourtPresentData gUnknown_0801DB7C[9];
extern const struct CourtPresentData gUnknown_0801DBC4[5];
extern const struct CourtPresentData gUnknown_0801DBEC[12];
extern const struct CourtPresentData gUnknown_0801DC4C[7];
extern const struct InvestigationPresentData gUnknown_0801DC84[76];
extern const u16 gUnknown_0801E014[2];
extern const struct TalkData gUnknown_0801E018[26];
extern const u8 gUnknown_0801E220[16][5];
extern const struct ExaminationData gUnknown_0801E270[5];
extern const struct ExaminationData gUnknown_0801E2D4[2];
extern const struct ExaminationData gUnknown_0801E2FC[2];
extern const struct ExaminationData gUnknown_0801E324[8];
extern const struct ExaminationData gUnknown_0801E3C4[4];
extern const struct ExaminationData gUnknown_0801E414[4];
extern const struct ExaminationData gUnknown_0801E464[10];
extern const struct ExaminationData gUnknown_0801E52C[10];
extern const struct ExaminationData gUnknown_0801E5F4[13];
extern const struct ExaminationData gUnknown_0801E6F8[13];
extern const struct ExaminationData gUnknown_0801E7FC[15];
extern const struct ExaminationData gUnknown_0801E928[10];
extern const struct ExaminationData gUnknown_0801E9F0[10];
extern const struct ExaminationData gUnknown_0801EAB8[10];
extern const struct InvestigationPresentData gUnknown_0801EB80[93];
extern const u16 gUnknown_0801EFDC[4];
extern const struct TalkData gUnknown_0801EFE4[26];
extern const u8 gUnknown_0801F1EC[16][5];
extern const struct ExaminationData gUnknown_0801F23C[5];
extern const struct ExaminationData gUnknown_0801F2A0[2];
extern const struct ExaminationData gUnknown_0801F2C8[2];
extern const struct ExaminationData gUnknown_0801F2F0[8];
extern const struct ExaminationData gUnknown_0801F390[10];
extern const struct ExaminationData gUnknown_0801F458[10];
extern const struct ExaminationData gUnknown_0801F520[4];
extern const struct ExaminationData gUnknown_0801F570[14];
extern const struct ExaminationData gUnknown_0801F688[14];
extern const struct ExaminationData gUnknown_0801F7A0[13];
extern const struct ExaminationData gUnknown_0801F8A4[10];
extern const struct ExaminationData gUnknown_0801F96C[10];
extern const u8 gUnknown_0801FA34[2];
extern const u8 gUnknown_0801FA36[15];
extern const u8 gUnknown_0801FA45[27];
extern const u8 gUnknown_0801FA60[31];
extern const u8 gUnknown_0801FA7F[31];
extern const u8 gUnknown_0801FA9E[33];
extern const u8 gUnknown_0801FABF[39];
extern const u8 gUnknown_0801FAE6[42];
extern const struct CourtPresentData gUnknown_0801FB10[10];
extern const struct CourtPresentData gUnknown_0801FB60[18];
extern const struct CourtPresentData gUnknown_0801FBF0[7];
extern const struct CourtPresentData gUnknown_0801FC28[14];
extern const struct InvestigationPresentData gUnknown_0801FC98[34];
extern const struct TalkData gUnknown_0801FE30[16];
extern const u8 gUnknown_0801FF70[25][5];
extern const struct ExaminationData gUnknown_0801FFF0[2];
extern const struct ExaminationData gUnknown_08020018[10];
extern const struct ExaminationData gUnknown_080200E0[10];
extern const struct ExaminationData gUnknown_080201A8[9];
extern const struct ExaminationData gUnknown_0802025C[8];
extern const struct ExaminationData gUnknown_080202FC[8];
extern const struct InvestigationPresentData gUnknown_0802039C[71];
extern const u16 gUnknown_080206F0[6];
extern const struct TalkData gUnknown_080206FC[30];
extern const u8 gUnknown_08020954[25][5];
extern const struct ExaminationData gUnknown_080209D4[5];
extern const struct ExaminationData gUnknown_08020A38[2];
extern const struct ExaminationData gUnknown_08020A60[10];
extern const struct ExaminationData gUnknown_08020B28[9];
extern const struct ExaminationData gUnknown_08020BDC[9];
extern const struct ExaminationData gUnknown_08020C90[8];
extern const struct ExaminationData gUnknown_08020D30[12];
extern const struct ExaminationData gUnknown_08020E20[20];
extern const struct ExaminationData gUnknown_08020FB0[7];
extern const struct ExaminationData gUnknown_0802108C[5];
extern const struct InvestigationPresentData gUnknown_080210F0[46];
extern const struct TalkData gUnknown_08021318[14];
extern const u8 gUnknown_08021430[26][5];
extern const struct ExaminationData gUnknown_080214B4[5];
extern const struct ExaminationData gUnknown_08021518[5];
extern const struct ExaminationData gUnknown_0802157C[2];
extern const struct ExaminationData gUnknown_080215A4[10];
extern const struct ExaminationData gUnknown_0802166C[9];
extern const struct ExaminationData gUnknown_08021720[9];
extern const struct ExaminationData gUnknown_080217D4[8];
extern const struct ExaminationData gUnknown_08021874[19];
extern const struct ExaminationData gUnknown_080219F0[7];
extern const struct ExaminationData gUnknown_08021A7C[4];
extern const struct ExaminationData gUnknown_08021ACC[7];
extern const struct ExaminationData gUnknown_08021B58[8];
extern const struct ExaminationData gUnknown_08021BF8[6];
extern const struct InvestigationPresentData gUnknown_08021C70[125];
extern const u16 gUnknown_0802224C[4];
extern const struct TalkData gUnknown_08022254[22];
extern const u8 gUnknown_0802240C[26][5];
extern const struct ExaminationData gUnknown_08022490[5];
extern const struct ExaminationData gUnknown_080224F4[5];
extern const struct ExaminationData gUnknown_08022558[2];
extern const struct ExaminationData gUnknown_08022580[2];
extern const struct ExaminationData gUnknown_080225A8[10];
extern const struct ExaminationData gUnknown_08022670[9];
extern const struct ExaminationData gUnknown_08022724[8];
extern const struct ExaminationData gUnknown_080227C4[19];
extern const struct ExaminationData gUnknown_08022940[7];
extern const struct ExaminationData gUnknown_080229CC[5];
extern const struct ExaminationData gUnknown_08022A30[7];
extern const struct ExaminationData gUnknown_08022ABC[8];
extern const struct ExaminationData gUnknown_08022B5C[8];
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
void sub_8010A3C(struct Main *, struct InvestigationStruct *);

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