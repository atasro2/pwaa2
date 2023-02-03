#include "global.h"
#include "background.h"
#include "court_record.h"
#include "case_data.h"
#include "graphics.h"
#include "main.h"
#include "constants/process.h"

struct EvidenceProfileData
{
    /* +0x00 */ u8 * descriptionTiles;
    /* +0x04 */ u16 evidenceImageId;
    /* +0x06 */ u16 evidenceDetailId;
};

const struct EvidenceProfileData gEvidenceProfileData[] = {
    {
        .descriptionTiles = gUnknown_081508C4,
        .evidenceImageId = 0x8,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08150CCC,
        .evidenceImageId = 0xA,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08151104,
        .evidenceImageId = 0xB,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08151568,
        .evidenceImageId = 0xC,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081519B8,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08151D54,
        .evidenceImageId = 0x3F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08152124,
        .evidenceImageId = 0x5,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081524CC,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08152970,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x1,
    },
    {
        .descriptionTiles = gUnknown_08152DBC,
        .evidenceImageId = 0x2,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081531C8,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x2,
    },
    {
        .descriptionTiles = gUnknown_081535F8,
        .evidenceImageId = 0x3,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081539C8,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08153DE8,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815421C,
        .evidenceImageId = 0x5,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815464C,
        .evidenceImageId = 0xD,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08154AD0,
        .evidenceImageId = 0xD,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08154F20,
        .evidenceImageId = 0x6,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815523C,
        .evidenceImageId = 0x9,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815566C,
        .evidenceImageId = 0x1E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08155AE4,
        .evidenceImageId = 0x1E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08155FBC,
        .evidenceImageId = 0x1F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081563D0,
        .evidenceImageId = 0x1F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815680C,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08156C20,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081570B8,
        .evidenceImageId = 0x25,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08157500,
        .evidenceImageId = 0x20,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08157904,
        .evidenceImageId = 0x21,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08157D08,
        .evidenceImageId = 0x21,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08158134,
        .evidenceImageId = 0x22,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081585C4,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081589AC,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08158E10,
        .evidenceImageId = 0x28,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08159200,
        .evidenceImageId = 0x29,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815965C,
        .evidenceImageId = 0x27,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08159AA4,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x3,
    },
    {
        .descriptionTiles = gUnknown_08159EEC,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x4,
    },
    {
        .descriptionTiles = gUnknown_0815A350,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815A7F4,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815ACC8,
        .evidenceImageId = 0x1D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815B100,
        .evidenceImageId = 0xE,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815B5CC,
        .evidenceImageId = 0xE,
        .evidenceDetailId = 0x8,
    },
    {
        .descriptionTiles = gUnknown_0815B9F0,
        .evidenceImageId = 0x1B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815BDE0,
        .evidenceImageId = 0x1C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815C1C0,
        .evidenceImageId = 0xF,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815C590,
        .evidenceImageId = 0x10,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815C9A0,
        .evidenceImageId = 0x12,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815CE18,
        .evidenceImageId = 0x13,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815D230,
        .evidenceImageId = 0x14,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815D668,
        .evidenceImageId = 0x14,
        .evidenceDetailId = 0x5,
    },
    {
        .descriptionTiles = gUnknown_0815DA90,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x6,
    },
    {
        .descriptionTiles = gUnknown_0815DEB4,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x6,
    },
    {
        .descriptionTiles = gUnknown_0815E2E4,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x7,
    },
    {
        .descriptionTiles = gUnknown_0815E73C,
        .evidenceImageId = 0x16,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815EB38,
        .evidenceImageId = 0x16,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815EFC0,
        .evidenceImageId = 0x17,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815F3CC,
        .evidenceImageId = 0x18,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815F7C8,
        .evidenceImageId = 0x19,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0815FBC4,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816000C,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08160318,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08160758,
        .evidenceImageId = 0x3D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08160B6C,
        .evidenceImageId = 0x28,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08160F68,
        .evidenceImageId = 0x43,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08161378,
        .evidenceImageId = 0x3E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08161764,
        .evidenceImageId = 0x40,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08161B40,
        .evidenceImageId = 0x40,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08161EF8,
        .evidenceImageId = 0x41,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081622C4,
        .evidenceImageId = 0x42,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816264C,
        .evidenceImageId = 0x42,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08162A54,
        .evidenceImageId = 0x44,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08162E54,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x9,
    },
    {
        .descriptionTiles = gUnknown_08163274,
        .evidenceImageId = 0x2A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816365C,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xA,
    },
    {
        .descriptionTiles = gUnknown_08163A80,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08163EB8,
        .evidenceImageId = 0x2B,
        .evidenceDetailId = 0xB,
    },
    {
        .descriptionTiles = gUnknown_081642BC,
        .evidenceImageId = 0x2C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08164670,
        .evidenceImageId = 0x2D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08164A14,
        .evidenceImageId = 0x2E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08164DD4,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08165280,
        .evidenceImageId = 0x30,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08165670,
        .evidenceImageId = 0x31,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08165AA0,
        .evidenceImageId = 0x2F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08165EA4,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xC,
    },
    {
        .descriptionTiles = gUnknown_081662C0,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xD,
    },
    {
        .descriptionTiles = gUnknown_0816670C,
        .evidenceImageId = 0x33,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08166B4C,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0xE,
    },
    {
        .descriptionTiles = gUnknown_08166F74,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0xF,
    },
    {
        .descriptionTiles = gUnknown_08167370,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0x10,
    },
    {
        .descriptionTiles = gUnknown_0816777C,
        .evidenceImageId = 0x36,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08167B98,
        .evidenceImageId = 0x35,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08167F64,
        .evidenceImageId = 0x37,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08168378,
        .evidenceImageId = 0x3A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08168650,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08168994,
        .evidenceImageId = 0x3B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08168C6C,
        .evidenceImageId = 0x39,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08168F38,
        .evidenceImageId = 0x38,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08169228,
        .evidenceImageId = 0x3C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08169504,
        .evidenceImageId = 0x45,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081698E4,
        .evidenceImageId = 0x46,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08169CC8,
        .evidenceImageId = 0x20,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816A0C0,
        .evidenceImageId = 0x47,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816A528,
        .evidenceImageId = 0x48,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816A92C,
        .evidenceImageId = 0x48,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816AD64,
        .evidenceImageId = 0x49,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816B188,
        .evidenceImageId = 0x4A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816B5E4,
        .evidenceImageId = 0x4A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816BA60,
        .evidenceImageId = 0x4B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816BEC8,
        .evidenceImageId = 0x4C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816C304,
        .evidenceImageId = 0x4D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816C748,
        .evidenceImageId = 0x4E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816CB90,
        .evidenceImageId = 0x4F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816CF80,
        .evidenceImageId = 0x4F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816D35C,
        .evidenceImageId = 0x5E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816D774,
        .evidenceImageId = 0x5E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816DB84,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x11,
    },
    {
        .descriptionTiles = gUnknown_0816DFC4,
        .evidenceImageId = 0x50,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816E3E8,
        .evidenceImageId = 0x50,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816E810,
        .evidenceImageId = 0x51,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816EC1C,
        .evidenceImageId = 0x67,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816F0A4,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x12,
    },
    {
        .descriptionTiles = gUnknown_0816F4FC,
        .evidenceImageId = 0x54,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816F998,
        .evidenceImageId = 0x54,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0816FE30,
        .evidenceImageId = 0x52,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08170210,
        .evidenceImageId = 0x53,
        .evidenceDetailId = 0x13,
    },
    {
        .descriptionTiles = gUnknown_08170678,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08170B20,
        .evidenceImageId = 0x69,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08170F70,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x14,
    },
    {
        .descriptionTiles = gUnknown_081713B4,
        .evidenceImageId = 0x55,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081717BC,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08171BC4,
        .evidenceImageId = 0x56,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08172060,
        .evidenceImageId = 0x5C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08172478,
        .evidenceImageId = 0x57,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0817288C,
        .evidenceImageId = 0x58,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08172D00,
        .evidenceImageId = 0x59,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0817311C,
        .evidenceImageId = 0x59,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08173544,
        .evidenceImageId = 0x5A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0817399C,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08173DE8,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081740C8,
        .evidenceImageId = 0x68,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081743A0,
        .evidenceImageId = 0x68,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081747CC,
        .evidenceImageId = 0x6A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08174AA8,
        .evidenceImageId = 0x5F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08174D74,
        .evidenceImageId = 0x5D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08175034,
        .evidenceImageId = 0x62,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08175484,
        .evidenceImageId = 0x62,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081758CC,
        .evidenceImageId = 0x64,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08175CD4,
        .evidenceImageId = 0x64,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081760F0,
        .evidenceImageId = 0x65,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0817651C,
        .evidenceImageId = 0x65,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08176920,
        .evidenceImageId = 0x66,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_08176CF0,
        .evidenceImageId = 0x60,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_0817701C,
        .evidenceImageId = 0x61,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081772D4,
        .evidenceImageId = 0x63,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gUnknown_081775FC,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x15,
    },
    {
        .descriptionTiles = gUnknown_081779E4,
        .evidenceImageId = 0x51,
        .evidenceDetailId = 0x0,
    },
};

const u8 sCourtRecordLeftArrowTileIndexes[] = {0, 4, 8, 4};
const u8 sCourtRecordRightArrowTileIndexes[] = {12, 16, 20, 16};

void (*gCourtRecordProcessStates[8])(struct Main *, struct CourtRecord *) = {
	CourtRecordInit,
	CourtRecordMain,
	CourtRecordExit,
	CourtRecordChangeState,
	CourtRecordChangeRecord,
	CourtRecordDetailSubMenu,
	CourtRecordLoadGfxChangeState,
	CourtRecordTakeThatSpecial
};

void (*gEvidenceAddedProcessStates[3])(struct Main *, struct CourtRecord *) = {
	EvidenceAddedInit,
	EvidenceAddedMain,
	EvidenceAddedExit
};

void InitializeCourtRecordForScenario(struct Main * main, struct CourtRecord * courtRecord) // Status_init
{
    const u8 * recordIds;
    u32 i;

    for(i = 0; i < 32; i++)
        courtRecord->profileList[i] |= 0xFF;
    courtRecord->profileCount = 0;
    for(i = 0; i < 32; i++)
        courtRecord->evidenceList[i] |= 0xFF;
    courtRecord->evidenceCount = 0;
    recordIds = gCourtRecordInitialItemLists[main->scenarioIdx];
    for(i = 0; *recordIds != 0xFE; i++)
    {
        courtRecord->profileList[i] = *recordIds;
        courtRecord->profileCount++;
        recordIds++;
    }
    recordIds++;
    for(i = 0; *recordIds != 0xFF; i++)
    {
        courtRecord->evidenceList[i] = *recordIds;
        courtRecord->evidenceCount++;
        recordIds++;
    }
}

void CourtRecordProcess(struct Main * main) // Status
{
    gBG1MapBuffer[622] = 9;
    gBG1MapBuffer[623] = 9;
    gCourtRecordProcessStates[main->process[GAME_PROCESS_STATE]](main, &gCourtRecord);
}

void EvidenceAddedProcess(struct Main * main) // Note_add_disp
{
    gEvidenceAddedProcessStates[main->process[GAME_PROCESS_STATE]](main, &gCourtRecord);
}
