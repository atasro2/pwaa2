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
    gCourtRecordInitialItems_0_0,
    gCourtRecordInitialItems_0_1,
    gCourtRecordInitialItems_1_0,
    gCourtRecordInitialItems_1_1,
    gCourtRecordInitialItems_1_2,
    gCourtRecordInitialItems_1_3,
    gCourtRecordInitialItems_1_4_1_5,
    gCourtRecordInitialItems_1_4_1_5,
    gCourtRecordInitialItems_2_0,
    gCourtRecordInitialItems_2_1,
    gCourtRecordInitialItems_2_2,
    gCourtRecordInitialItems_2_3,
    gCourtRecordInitialItems_2_4,
    gCourtRecordInitialItems_2_5,
    gCourtRecordInitialItems_3_0,
    gCourtRecordInitialItems_3_1,
    gCourtRecordInitialItems_3_2,
    gCourtRecordInitialItems_3_3,
    gCourtRecordInitialItems_3_4,
    gCourtRecordInitialItems_3_5,
    gCourtRecordInitialItems_3_6,
    gCourtRecordInitialItems_3_7,
};

const struct CourtPresentData * gCourtPresentData[22] = {
    gCourtPresentData_0_0,
    gCourtPresentData_0_1,
    gCourtPresentData_1_1,
    gCourtPresentData_1_1,
    gCourtPresentData_1_3,
    gCourtPresentData_1_4,
    gCourtPresentData_1_4,
    gCourtPresentData_1_5,
    gCourtPresentData_2_1,
    gCourtPresentData_2_1,
    gCourtPresentData_2_3,
    gCourtPresentData_2_4,
    gCourtPresentData_2_4,
    gCourtPresentData_2_5,
    gCourtPresentData_3_1,
    gCourtPresentData_3_3,
    gCourtPresentData_3_1,
    gCourtPresentData_3_3,
    gCourtPresentData_3_5,
    gCourtPresentData_3_7,
    gCourtPresentData_3_5,
    gCourtPresentData_3_7,
};

const struct InvestigationPresentData * gInvestigationPresentData[22] = {
    gInvestigationPresentData_1_0,
    gInvestigationPresentData_1_0,
    gInvestigationPresentData_1_0,
    gInvestigationPresentData_1_0,
    gInvestigationPresentData_1_0,
    gInvestigationPresentData_1_2,
    gInvestigationPresentData_1_0,
    gInvestigationPresentData_1_0,
    gInvestigationPresentData_2_0,
    gInvestigationPresentData_2_0,
    gInvestigationPresentData_2_0,
    gInvestigationPresentData_2_2,
    gInvestigationPresentData_2_0,
    gInvestigationPresentData_2_0,
    gInvestigationPresentData_3_0,
    gInvestigationPresentData_3_2,
    gInvestigationPresentData_3_0,
    gInvestigationPresentData_3_0,
    gInvestigationPresentData_3_4,
    gInvestigationPresentData_3_6,
    gInvestigationPresentData_3_0,
    gInvestigationPresentData_3_0,

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

void InvestigationSetScriptSectionAndFlagTextboxSlide2(u32 section, u32 flagId) // Set_event
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
