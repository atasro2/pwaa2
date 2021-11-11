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
    /* +0x00 */ u16 unk0; // unity AA4: finger_pos_x
    /* +0x02 */ u16 unk2; // unity AA4: finger_pos_y
    /* +0x04 */ u8 filler04[0x2];
    /* +0x06 */ u8 unk6;
    /* +0x06 */ u8 filler07[0x9];
    /* +0x10 */ u8 unk10;
    /* +0x11 */ u8 filler11[0x8];
    ///* +0x04 */ u8 unk4; // unity AA4: sel_place
    ///* +0x05 */ u8 unk5; // unity: person_flag // is person in current room?
    ///* +0x06 */ u8 unk6; // unity AA4: ckeck_no_flag
    ///* +0x07 */ u8 unk7; // unity AA4: menu_mv_be_flag
    ///* +0x08 */ u8 unk8; // unity AA4: finger_speed_x
    ///* +0x09 */ u8 unk9; // unity: siteki_no // 指摘 in japanese meaning "Pointed out" used for spot selection minigame, it's the collision it has to load for the minigame
    ///* +0x0A */ u8 unkA; // unity: menu // selected investigation button, why menu?
    ///* +0x0B */ u8 unkB; // unity AA4: menu_old
    ///* +0x0C */ u8 unkC; // unity AA4: menu_rno
    ///* +0x0D */ u8 unkD; // unity AA4: menu_pos_y
    ///* +0x0E */ u8 unkE; // unity AA4: menu_add
    ///* +0x0F */ u8 unkF; // unity AA4: menu_add_old
    ///* +0x10 */ bool8 unk10[4]; // unity AA4: sel_place_be Which buttons for moving are active
    ///* +0x14 */ u8 unk14; // unity AA4: yubi_no
    ///* +0x15 */ u8 unk15; // unity AA4: yubi_timer
    ///* +0x16 */ u8 unk16; // unity AA4: yubi_col_no
    ///* +0x17 */ u8 unk17; // unity AA4: yubi_col_timer
};

extern struct TalkData gTalkData[32];
extern struct ExaminationData gExaminationData[16];
extern struct InvestigationStruct gInvestigation;

/* data stuff from segments */
extern u8 gUnknown_0801CA24[4];
extern u8 gUnknown_0801CA28[0x1E0];
extern u8 gUnknown_0801CC08[0x28];

extern u8 gUnknown_0801CC30[0x78];
extern u8 gUnknown_0801CCA8[0x28];
extern u8 gUnknown_0801CCD0[0x8C];
extern u8 gUnknown_0801CD5C[0x50];
extern u8 gUnknown_0801CDAC[0x64];
extern u8 gUnknown_0801CE10[0x78];
extern u8 gUnknown_0801CE88[0x64];
extern u8 gUnknown_0801CEEC[0x50];
extern u8 gUnknown_0801CF3C[0x50];
extern u8 gUnknown_0801CF8C[0x64];

extern u8 gUnknown_0801D464[12];
extern u8 gUnknown_0801D470[0x26C];
extern u8 gUnknown_0801D6DC[0x28];

extern u8 gUnknown_0801D704[0x64];
extern u8 gUnknown_0801D768[0x28];
extern u8 gUnknown_0801D790[0x8C];
extern u8 gUnknown_0801D81C[0x50];
extern u8 gUnknown_0801D86C[0x78];
extern u8 gUnknown_0801D8E4[0x64];
extern u8 gUnknown_0801D948[0x78];
extern u8 gUnknown_0801D9C0[0x64];
extern u8 gUnknown_0801DA24[0x64];
extern u8 gUnknown_0801DA88[0x78];

extern u8 gUnknown_0801E014[4];
extern u8 gUnknown_0801E018[0x208];
extern u8 gUnknown_0801E220[0x50];

extern u8 gUnknown_0801E270[0x64];
extern u8 gUnknown_0801E2D4[0x28];
extern u8 gUnknown_0801E2FC[0x28];
extern u8 gUnknown_0801E324[0xA0];
extern u8 gUnknown_0801E3C4[0x50];
extern u8 gUnknown_0801E414[0x50];
extern u8 gUnknown_0801E464[0xC8];
extern u8 gUnknown_0801E52C[0xC8];
extern u8 gUnknown_0801E5F4[0x104];
extern u8 gUnknown_0801E6F8[0x104];
extern u8 gUnknown_0801E7FC[0x12C];
extern u8 gUnknown_0801E928[0xC8];
extern u8 gUnknown_0801E9F0[0xC8];
extern u8 gUnknown_0801EAB8[0xC8];

extern u8 gUnknown_0801EFDC[8];
extern u8 gUnknown_0801EFE4[0x208];
extern u8 gUnknown_0801F1EC[0x50];

extern u8 gUnknown_0801F23C[0x64];
extern u8 gUnknown_0801F2A0[0x28];
extern u8 gUnknown_0801F2C8[0x28];
extern u8 gUnknown_0801F2F0[0xA0];
extern u8 gUnknown_0801F390[0xC8];
extern u8 gUnknown_0801F458[0xC8];
extern u8 gUnknown_0801F520[0x50];
extern u8 gUnknown_0801F570[0x118];
extern u8 gUnknown_0801F688[0x118];
extern u8 gUnknown_0801F7A0[0x104];
extern u8 gUnknown_0801F8A4[0xC8];
extern u8 gUnknown_0801F96C[0xC8];

extern u8 gUnknown_0801FE30[0x140];
extern u8 gUnknown_0801FF70[0x7C];

extern u8 gUnknown_0801FFF0[0x28];
extern u8 gUnknown_08020018[0xC8];
extern u8 gUnknown_080200E0[0xC8];
extern u8 gUnknown_080201A8[0xB4];
extern u8 gUnknown_0802025C[0xA0];
extern u8 gUnknown_080202FC[0xA0];

extern u8 gUnknown_080206F0[0xC];
extern u8 gUnknown_080206FC[0x258];
extern u8 gUnknown_08020954[0x7C];

extern u8 gUnknown_080209D4[0x64];
extern u8 gUnknown_08020A38[0x28];
extern u8 gUnknown_08020A60[0xC8];
extern u8 gUnknown_08020B28[0xB4];
extern u8 gUnknown_08020BDC[0xB4];
extern u8 gUnknown_08020C90[0xA0];
extern u8 gUnknown_08020D30[0xF0];
extern u8 gUnknown_08020E20[0x190];
extern u8 gUnknown_08020FB0[0x8C];
extern u8 gUnknown_0802108C[0x64];

extern u8 gUnknown_08021318[0x118];
extern u8 gUnknown_08021430[0x82];

extern u8 gUnknown_080214B4[0x64];
extern u8 gUnknown_08021518[0x64];
extern u8 gUnknown_0802157C[0x28];
extern u8 gUnknown_080215A4[0xC8];
extern u8 gUnknown_0802166C[0xB4];
extern u8 gUnknown_08021720[0xB4];
extern u8 gUnknown_080217D4[0xA0];
extern u8 gUnknown_08021874[0x17C];
extern u8 gUnknown_080219F0[0x8C];
extern u8 gUnknown_08021A7C[0x50];
extern u8 gUnknown_08021ACC[0x8C];
extern u8 gUnknown_08021B58[0xA0];
extern u8 gUnknown_08021BF8[0x78];

extern u8 gUnknown_0802224C[8];
extern u8 gUnknown_08022254[0x1B8];
extern u8 gUnknown_0802240C[0x82];

extern u8 gUnknown_08022490[0x64];
extern u8 gUnknown_080224F4[0x64];
extern u8 gUnknown_08022558[0x28];
extern u8 gUnknown_08022580[0x28];
extern u8 gUnknown_080225A8[0xC8];
extern u8 gUnknown_08022670[0xB4];
extern u8 gUnknown_08022724[0xA0];
extern u8 gUnknown_080227C4[0x17C];
extern u8 gUnknown_08022940[0x8C];
extern u8 gUnknown_080229CC[0x64];
extern u8 gUnknown_08022A30[0x8C];
extern u8 gUnknown_08022ABC[0xA0];
extern u8 gUnknown_08022B5C[0xA0];

void sub_800EAC8();
void sub_801480C(u32);
/* end data stuff from segments */

void sub_800EB24(struct InvestigationStruct *, u32);
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