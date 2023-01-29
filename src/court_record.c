#include "global.h"
#include "court_record.h"

struct EvidenceProfileData
{
    /* +0x00 */ u8 * descriptionTiles;
    /* +0x04 */ u16 evidenceImageId;
    /* +0x06 */ u16 evidenceDetailId;
};

const struct EvidenceProfileData gEvidenceProfileData[] = {
    {
        .descriptionTiles = 0x81508C4,
        .evidenceImageId = 0x8,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8150CCC,
        .evidenceImageId = 0xA,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8151104,
        .evidenceImageId = 0xB,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8151568,
        .evidenceImageId = 0xC,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81519B8,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8151D54,
        .evidenceImageId = 0x3F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8152124,
        .evidenceImageId = 0x5,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81524CC,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8152970,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x1,
    },
    {
        .descriptionTiles = 0x8152DBC,
        .evidenceImageId = 0x2,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81531C8,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x2,
    },
    {
        .descriptionTiles = 0x81535F8,
        .evidenceImageId = 0x3,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81539C8,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8153DE8,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815421C,
        .evidenceImageId = 0x5,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815464C,
        .evidenceImageId = 0xD,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8154AD0,
        .evidenceImageId = 0xD,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8154F20,
        .evidenceImageId = 0x6,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815523C,
        .evidenceImageId = 0x9,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815566C,
        .evidenceImageId = 0x1E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8155AE4,
        .evidenceImageId = 0x1E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8155FBC,
        .evidenceImageId = 0x1F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81563D0,
        .evidenceImageId = 0x1F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815680C,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8156C20,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81570B8,
        .evidenceImageId = 0x25,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8157500,
        .evidenceImageId = 0x20,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8157904,
        .evidenceImageId = 0x21,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8157D08,
        .evidenceImageId = 0x21,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8158134,
        .evidenceImageId = 0x22,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81585C4,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81589AC,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8158E10,
        .evidenceImageId = 0x28,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8159200,
        .evidenceImageId = 0x29,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815965C,
        .evidenceImageId = 0x27,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8159AA4,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x3,
    },
    {
        .descriptionTiles = 0x8159EEC,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x4,
    },
    {
        .descriptionTiles = 0x815A350,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815A7F4,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815ACC8,
        .evidenceImageId = 0x1D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815B100,
        .evidenceImageId = 0xE,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815B5CC,
        .evidenceImageId = 0xE,
        .evidenceDetailId = 0x8,
    },
    {
        .descriptionTiles = 0x815B9F0,
        .evidenceImageId = 0x1B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815BDE0,
        .evidenceImageId = 0x1C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815C1C0,
        .evidenceImageId = 0xF,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815C590,
        .evidenceImageId = 0x10,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815C9A0,
        .evidenceImageId = 0x12,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815CE18,
        .evidenceImageId = 0x13,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815D230,
        .evidenceImageId = 0x14,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815D668,
        .evidenceImageId = 0x14,
        .evidenceDetailId = 0x5,
    },
    {
        .descriptionTiles = 0x815DA90,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x6,
    },
    {
        .descriptionTiles = 0x815DEB4,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x6,
    },
    {
        .descriptionTiles = 0x815E2E4,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x7,
    },
    {
        .descriptionTiles = 0x815E73C,
        .evidenceImageId = 0x16,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815EB38,
        .evidenceImageId = 0x16,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815EFC0,
        .evidenceImageId = 0x17,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815F3CC,
        .evidenceImageId = 0x18,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815F7C8,
        .evidenceImageId = 0x19,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x815FBC4,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816000C,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8160318,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8160758,
        .evidenceImageId = 0x3D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8160B6C,
        .evidenceImageId = 0x28,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8160F68,
        .evidenceImageId = 0x43,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8161378,
        .evidenceImageId = 0x3E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8161764,
        .evidenceImageId = 0x40,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8161B40,
        .evidenceImageId = 0x40,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8161EF8,
        .evidenceImageId = 0x41,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81622C4,
        .evidenceImageId = 0x42,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816264C,
        .evidenceImageId = 0x42,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8162A54,
        .evidenceImageId = 0x44,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8162E54,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x9,
    },
    {
        .descriptionTiles = 0x8163274,
        .evidenceImageId = 0x2A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816365C,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xA,
    },
    {
        .descriptionTiles = 0x8163A80,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8163EB8,
        .evidenceImageId = 0x2B,
        .evidenceDetailId = 0xB,
    },
    {
        .descriptionTiles = 0x81642BC,
        .evidenceImageId = 0x2C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8164670,
        .evidenceImageId = 0x2D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8164A14,
        .evidenceImageId = 0x2E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8164DD4,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8165280,
        .evidenceImageId = 0x30,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8165670,
        .evidenceImageId = 0x31,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8165AA0,
        .evidenceImageId = 0x2F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8165EA4,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xC,
    },
    {
        .descriptionTiles = 0x81662C0,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xD,
    },
    {
        .descriptionTiles = 0x816670C,
        .evidenceImageId = 0x33,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8166B4C,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0xE,
    },
    {
        .descriptionTiles = 0x8166F74,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0xF,
    },
    {
        .descriptionTiles = 0x8167370,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0x10,
    },
    {
        .descriptionTiles = 0x816777C,
        .evidenceImageId = 0x36,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8167B98,
        .evidenceImageId = 0x35,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8167F64,
        .evidenceImageId = 0x37,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8168378,
        .evidenceImageId = 0x3A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8168650,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8168994,
        .evidenceImageId = 0x3B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8168C6C,
        .evidenceImageId = 0x39,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8168F38,
        .evidenceImageId = 0x38,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8169228,
        .evidenceImageId = 0x3C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8169504,
        .evidenceImageId = 0x45,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81698E4,
        .evidenceImageId = 0x46,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8169CC8,
        .evidenceImageId = 0x20,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816A0C0,
        .evidenceImageId = 0x47,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816A528,
        .evidenceImageId = 0x48,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816A92C,
        .evidenceImageId = 0x48,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816AD64,
        .evidenceImageId = 0x49,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816B188,
        .evidenceImageId = 0x4A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816B5E4,
        .evidenceImageId = 0x4A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816BA60,
        .evidenceImageId = 0x4B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816BEC8,
        .evidenceImageId = 0x4C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816C304,
        .evidenceImageId = 0x4D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816C748,
        .evidenceImageId = 0x4E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816CB90,
        .evidenceImageId = 0x4F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816CF80,
        .evidenceImageId = 0x4F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816D35C,
        .evidenceImageId = 0x5E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816D774,
        .evidenceImageId = 0x5E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816DB84,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x11,
    },
    {
        .descriptionTiles = 0x816DFC4,
        .evidenceImageId = 0x50,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816E3E8,
        .evidenceImageId = 0x50,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816E810,
        .evidenceImageId = 0x51,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816EC1C,
        .evidenceImageId = 0x67,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816F0A4,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x12,
    },
    {
        .descriptionTiles = 0x816F4FC,
        .evidenceImageId = 0x54,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816F998,
        .evidenceImageId = 0x54,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x816FE30,
        .evidenceImageId = 0x52,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8170210,
        .evidenceImageId = 0x53,
        .evidenceDetailId = 0x13,
    },
    {
        .descriptionTiles = 0x8170678,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8170B20,
        .evidenceImageId = 0x69,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8170F70,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x14,
    },
    {
        .descriptionTiles = 0x81713B4,
        .evidenceImageId = 0x55,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81717BC,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8171BC4,
        .evidenceImageId = 0x56,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8172060,
        .evidenceImageId = 0x5C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8172478,
        .evidenceImageId = 0x57,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x817288C,
        .evidenceImageId = 0x58,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8172D00,
        .evidenceImageId = 0x59,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x817311C,
        .evidenceImageId = 0x59,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8173544,
        .evidenceImageId = 0x5A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x817399C,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8173DE8,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81740C8,
        .evidenceImageId = 0x68,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81743A0,
        .evidenceImageId = 0x68,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81747CC,
        .evidenceImageId = 0x6A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8174AA8,
        .evidenceImageId = 0x5F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8174D74,
        .evidenceImageId = 0x5D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8175034,
        .evidenceImageId = 0x62,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8175484,
        .evidenceImageId = 0x62,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81758CC,
        .evidenceImageId = 0x64,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8175CD4,
        .evidenceImageId = 0x64,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81760F0,
        .evidenceImageId = 0x65,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x817651C,
        .evidenceImageId = 0x65,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8176920,
        .evidenceImageId = 0x66,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x8176CF0,
        .evidenceImageId = 0x60,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x817701C,
        .evidenceImageId = 0x61,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81772D4,
        .evidenceImageId = 0x63,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = 0x81775FC,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x15,
    },
    {
        .descriptionTiles = 0x81779E4,
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