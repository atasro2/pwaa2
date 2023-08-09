#include "global.h"
#include "case_data.h"
#include "animation.h"
#include "background.h"
#include "investigation.h"
#include "script.h"
#include "utils.h"
#include "sound.h"
#include "constants/oam_allocations.h"

const u8 gCaseStartProcess[] = {
    3, 3, 4, 3,
    3, 4, 3, 3,
    4, 3, 3, 4,
    3, 3, 4, 4,
    3, 3, 4, 4,
    3, 3,
};

const u16 gCaseGameoverSections[] = { /* gCaseGameoverSections */
    0x00BB, 0x00CA, 0x0000, 0x00CB,
    0x00E2, 0x0000, 0x0112, 0x00C3,
    0x0000, 0x00EB, 0x00B8, 0x0000,
    0x00C9, 0x00CD, 0x0000, 0x0000,
    0x00FE, 0x00F3, 0x0000, 0x0000,
    0x00F8, 0x0109, 0x0000,
};

const u8 * gCourtRecordInitialItemLists[22] = { /* gCourtRecordInitialItemLists */
    gUnknown_0801C41C,
    gUnknown_0801C424,
    gUnknown_0801C4D8,
    gUnknown_0801C4DA,
    gUnknown_0801C4EC,
    gUnknown_0801C504,
    gUnknown_0801C51E,
    gUnknown_0801C51E,
    gUnknown_0801DB00,
    gUnknown_0801DB02,
    gUnknown_0801DB16,
    gUnknown_0801DB2D,
    gUnknown_0801DB44,
    gUnknown_0801DB60,
    gUnknown_0801FA34,
    gUnknown_0801FA36,
    gUnknown_0801FA45,
    gUnknown_0801FA60,
    gUnknown_0801FA7F,
    gUnknown_0801FA9E,
    gUnknown_0801FABF,
    gUnknown_0801FAE6,
};

const struct CourtPresentData * gCourtPresentData[22] = {
    gUnknown_0801C430,
    gUnknown_0801C480,
    gUnknown_0801C540,
    gUnknown_0801C540,
    gUnknown_0801C560,
    gUnknown_0801C570,
    gUnknown_0801C570,
    gUnknown_0801C5D8,
    gUnknown_0801DB7C,
    gUnknown_0801DB7C,
    gUnknown_0801DBC4,
    gUnknown_0801DBEC,
    gUnknown_0801DBEC,
    gUnknown_0801DC4C,
    gUnknown_0801FB10,
    gUnknown_0801FB60,
    gUnknown_0801FB10,
    gUnknown_0801FB60,
    gUnknown_0801FBF0,
    gUnknown_0801FC28,
    gUnknown_0801FBF0,
    gUnknown_0801FC28,
};

const struct InvestigationPresentData * gInvestigationPresentData[22] = {
    gUnknown_0801C610,
    gUnknown_0801C610,
    gUnknown_0801C610,
    gUnknown_0801C610,
    gUnknown_0801C610,
    gUnknown_0801CFF0,
    gUnknown_0801C610,
    gUnknown_0801C610,
    gUnknown_0801DC84,
    gUnknown_0801DC84,
    gUnknown_0801DC84,
    gUnknown_0801EB80,
    gUnknown_0801DC84,
    gUnknown_0801DC84,
    gUnknown_0801FC98,
    gUnknown_0802039C,
    gUnknown_0801FC98,
    gUnknown_0801FC98,
    gUnknown_080210F0,
    gUnknown_08021C70,
    gUnknown_0801FC98,
    gUnknown_0801FC98,

};

void (*gInvestigationSegmentSetupFunctions[22])(struct Main *) = {
    InvestigationDummy,
    InvestigationDummy,
    InvestigationSegmentSetup_1_0,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationSegmentSetup_1_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationSegmentSetup_2_0,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationSegmentSetup_2_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationSegmentSetup_3_0,
    InvestigationSegmentSetup_3_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationSegmentSetup_3_4,
    InvestigationSegmentSetup_3_6,
    InvestigationDummy,
    InvestigationDummy,
};

void (*gInvestigationRoomSetupFunctions[22])(struct Main *) = {
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomSetup_1_0,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomSetup_1_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomSetup_2_0,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomSetup_2_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomSetup_3_0,
    InvestigationRoomSetup_3_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomSetup_3_4,
    InvestigationRoomSetup_3_6,
    InvestigationDummy,
    InvestigationDummy,
};

void (*gInvestigationRoomUpdateFunctions[22])(struct Main *) = {
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomUpdate_1_0,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomUpdate_1_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomUpdate_2_0,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomUpdate_2_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomUpdate_3_0,
    InvestigationRoomUpdate_3_2,
    InvestigationDummy,
    InvestigationDummy,
    InvestigationRoomUpdate_3_4,
    InvestigationRoomUpdate_3_6,
    InvestigationDummy,
    InvestigationDummy,
};

void InvestigationSetPersonAnimation(u32 arg0, u32 arg1, u32 arg2) // Set_char
{
    struct Main *main = &gMain;
    main->talkingAnimationOffset = arg1;
    main->idleAnimationOffset = arg2;
    PlayPersonAnimation(arg0, 0, arg1, 0);
    gInvestigation.personActive = 1;
    SetInactiveActionButtons(&gInvestigation, 0xF);
}

void InvestigationSetScriptSectionAndFlag(u32 section, u32 flagId) // Set_event
{
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    SlideTextbox(1);
    PauseBGM();
}

void sub_8004458(u32 section, u32 flagId) // Set_event
{
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    SlideTextbox(2);
}

void sub_8004478(u32 section, u32 flagId) // unused? Set_event2?
{
    struct OamAttrs *sprite = &gOamObjects[OAM_IDX_INVESTIGATION_ACTIONS];
    u32 i = 0;

    for (i = 0; i < 4; sprite++, i++)
    {
        sprite->attr0 = SPRITE_ATTR0((-64 & 255), ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        // 64x32 sprite
        sprite->attr1 = SPRITE_ATTR1_NONAFFINE(60 * i, 0, 0, 3);
        sprite->attr2 = SPRITE_ATTR2((0x100 + i * 0x20), 0, 5);
    }
    SET_PROCESS(4, 1, 0, 0);
    ChangeFlag(0, flagId, TRUE);
    ChangeScriptSection(section);
    SlideTextbox(1);
    SetInactiveActionButtons(&gInvestigation, 0xF);
    gInvestigation.selectedActionYOffset = 0x40;
}

void InvestigationDummy(struct Main *main)
{
}
