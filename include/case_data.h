#ifndef GUARD_CASE_DATA_H
#define GUARD_CASE_DATA_H

struct CourtPresentData
{
    /* +0x00 */ u16 presentingSection; // unity: keyhole
    /* +0x02 */ u16 evidenceId; // unity: key
    /* +0x04 */ u16 presentedSection; // unity: jump
    /* +0x06 */ u8 flagId; // unity: sce_flag
    /* +0x07 */ u8 action; // unity: win_flag
};

struct InvestigationPresentData
{
    /* +0x00 */ u8 roomId; // unity: room
    /* +0x01 */ u8 roomseq; // unity: item
    /* +0x02 */ u8 evidenceId; // unity: 
    /* +0x03 */ u8 personId; // unity: pl_id
    /* +0x04 */ u8 isProfile; // unity: end
    /* +0x06 */ u16 interestedSection; // unity: mess_true
    /* +0x08 */ u16 uninterestedSection; // unity: mess_false
};

extern const u8 gCaseStartProcess[];
extern const u16 gCaseGameoverSections[];
extern const u16 gCaseGameoverSections[];

extern const u8 * gCourtRecordInitialItemLists[22];
extern const struct CourtPresentData * gCourtPresentData[22];
extern const struct InvestigationPresentData * gInvestigationPresentData[22];
extern void (*gInvestigationSegmentSetupFunctions[])(struct Main *);
extern void (*gInvestigationRoomSetupFunctions[])(struct Main *);
extern void (*gInvestigationRoomUpdateFunctions[])(struct Main *);

void InvestigationSetPersonAnimation(u32 arg0, u32 arg1, u32 arg2);
void InvestigationSetScriptSectionAndFlag(u32 section, u32 flagId);
// InvestigationSetScriptSectionAndFlag_no_window
void sub_8004458(u32 section, u32 flagId);

#define LOADEXAMDATA(x) DmaCopy16(3, (x), gExaminationData, sizeof(x))

#endif//GUARD_CASE_DATA_H