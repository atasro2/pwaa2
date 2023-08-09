#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"
#include "animation.h"

const u8 gUnknown_0801C41C[8] = {
    0x00, 0x03, 0xFE, 0x05, 0x06, 0x07, 0x09, 0xFF,
};
const u8 gUnknown_0801C424[12] = {
    0x00, 0x03, 0x01, 0xFE, 0x05, 0x06, 0x07, 0x09, 0x08, 0x0A, 0x0B, 0xFF,
};
const struct CourtPresentData gUnknown_0801C430[10] = {
    {
        .presentingSection = 0x8D,
        .evidenceId = 0x0,
        .presentedSection = 0x9A,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x8E,
        .evidenceId = 0x0,
        .presentedSection = 0x9A,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x8F,
        .evidenceId = 0x0,
        .presentedSection = 0x9A,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAD,
        .evidenceId = 0xB,
        .presentedSection = 0xBA,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAE,
        .evidenceId = 0xB,
        .presentedSection = 0xBA,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAF,
        .evidenceId = 0xB,
        .presentedSection = 0xBA,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB0,
        .evidenceId = 0xB,
        .presentedSection = 0xBA,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB1,
        .evidenceId = 0xB,
        .presentedSection = 0xBA,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB2,
        .evidenceId = 0xB,
        .presentedSection = 0xBA,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .presentedSection = 0xFFFF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
};

const struct CourtPresentData gUnknown_0801C480[11] = {
    {
        .presentingSection = 0x87,
        .evidenceId = 0xB,
        .presentedSection = 0x91,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x97,
        .evidenceId = 0x7,
        .presentedSection = 0x9F,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x98,
        .evidenceId = 0x7,
        .presentedSection = 0x9F,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xA5,
        .evidenceId = 0x8,
        .presentedSection = 0xA7,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAA,
        .evidenceId = 0x9,
        .presentedSection = 0xAD,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB0,
        .evidenceId = 0xE,
        .presentedSection = 0xB2,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB3,
        .evidenceId = 0xE,
        .presentedSection = 0xB5,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB3,
        .evidenceId = 0xD,
        .presentedSection = 0xB6,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xBC,
        .evidenceId = 0x3,
        .presentedSection = 0xBE,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xC4,
        .evidenceId = 0xF,
        .presentedSection = 0xC6,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .presentedSection = 0xFFFF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
};

const u8 gUnknown_0801C4D8[2] = {
    0xFE, 0xFF,
};

const u8 gUnknown_0801C4DA[18] = {
    0x14, 0x18, 0x19, 0x02, 0x16, 0x1C, 0x1F, 0x1D, 0x1A, 0xFE, 0x05, 0x27, 0x23, 0x2B, 0x28, 0x2C, 0x2D, 0xFF,
};

const u8 gUnknown_0801C4EC[24] = {
    0x14, 0x18, 0x19, 0x02, 0x16, 0x1C, 0x1F, 0x1D, 0x1A, 0x20, 0xFE, 0x05, 0x27, 0x23, 0x2B, 0x28, 0x2C, 0x2D, 0x24, 0x26, 0x2E, 0x2F, 0x31, 0xFF,
};

const u8 gUnknown_0801C504[26] = {
    0x14, 0x18, 0x19, 0x02, 0x16, 0x1C, 0x1F, 0x1D, 0x1A, 0x20, 0xFE, 0x05, 0x27, 0x2B, 0x23, 0x28, 0x2C, 0x2D, 0x24, 0x26, 0x2E, 0x2F, 0x31, 0x33, 0x34, 0xFF,
};

const u8 gUnknown_0801C51E[34] = {
    0x14, 0x18, 0x19, 0x02, 0x16, 0x1C, 0x1F, 0x1D, 0x1A, 0x20, 0x21, 0x22, 0xFE, 0x05, 0x27, 0x2B, 0x23, 0x29, 0x2C, 0x2D, 0x24, 0x26, 0x2E, 0x2F, 0x31, 0x33, 0x34, 0x36, 0x37, 0x38, 0x39, 0x3A, 0xFF,
};

const struct CourtPresentData gUnknown_0801C540[4] = {
    {
        .presentingSection = 0xA4,
        .evidenceId = 0x31,
        .presentedSection = 0xB3,
        .flagId = 0xFF,
        .action = 0x0,
    },
    {
        .presentingSection = 0xB7,
        .evidenceId = 0x31,
        .presentedSection = 0xBF,
        .flagId = 0xFF,
        .action = 0x0,
    },
    {
        .presentingSection = 0xC2,
        .evidenceId = 0x2C,
        .presentedSection = 0xC4,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .presentedSection = 0xFFFF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
};

const struct CourtPresentData gUnknown_0801C560[2] = {
    {
        .presentingSection = 0xDF,
        .evidenceId = 0x2D,
        .presentedSection = 0xE1,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .presentedSection = 0xFFFF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
};

const struct CourtPresentData gUnknown_0801C570[13] = {
    {
        .presentingSection = 0xBC,
        .evidenceId = 0x31,
        .presentedSection = 0xCD,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xBC,
        .evidenceId = 0x34,
        .presentedSection = 0xCD,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xD5,
        .evidenceId = 0x36,
        .presentedSection = 0xEE,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xD5,
        .evidenceId = 0x16,
        .presentedSection = 0xEA,
        .flagId = 0xFF,
        .action = 0x0,
    },
    {
        .presentingSection = 0xEB,
        .evidenceId = 0x36,
        .presentedSection = 0xED,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xEF,
        .evidenceId = 0x16,
        .presentedSection = 0xF1,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x102,
        .evidenceId = 0x39,
        .presentedSection = 0x104,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x106,
        .evidenceId = 0x39,
        .presentedSection = 0x108,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x106,
        .evidenceId = 0x2C,
        .presentedSection = 0x108,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x10B,
        .evidenceId = 0x1C,
        .presentedSection = 0x10D,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x10E,
        .evidenceId = 0x1D,
        .presentedSection = 0x110,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x10E,
        .evidenceId = 0x29,
        .presentedSection = 0x110,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .presentedSection = 0xFFFF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
};

const struct CourtPresentData gUnknown_0801C5D8[7] = {
    {
        .presentingSection = 0x8B,
        .evidenceId = 0x3A,
        .presentedSection = 0x99,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB7,
        .evidenceId = 0x1D,
        .presentedSection = 0xB9,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xBA,
        .evidenceId = 0x27,
        .presentedSection = 0xBC,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xBF,
        .evidenceId = 0x16,
        .presentedSection = 0xC1,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xA1,
        .evidenceId = 0x29,
        .presentedSection = 0xB3,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0x9E,
        .evidenceId = 0x29,
        .presentedSection = 0xB3,
        .flagId = 0x14,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .presentedSection = 0xFFFF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
};

const struct InvestigationPresentData gUnknown_0801C610[87] = {
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x2A,
        .personId = 0x4,
        .isProfile = 0x0,
        .interestedSection = 0x90,
        .uninterestedSection = 0x91,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x92,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x14,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x93,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x17,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x94,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x18,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x94,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x1A,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x95,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x1C,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x96,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x15,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x97,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x97,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0x5,
        .isProfile = 0x0,
        .interestedSection = 0x147,
        .uninterestedSection = 0x14A,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x2B,
        .personId = 0x5,
        .isProfile = 0x0,
        .interestedSection = 0x148,
        .uninterestedSection = 0x14A,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x2D,
        .personId = 0x5,
        .isProfile = 0x0,
        .interestedSection = 0x149,
        .uninterestedSection = 0x14A,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0x5,
        .isProfile = 0x1,
        .interestedSection = 0x14B,
        .uninterestedSection = 0x150,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0x5,
        .isProfile = 0x1,
        .interestedSection = 0x14C,
        .uninterestedSection = 0x150,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x1C,
        .personId = 0x5,
        .isProfile = 0x1,
        .interestedSection = 0x14D,
        .uninterestedSection = 0x150,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x18,
        .personId = 0x5,
        .isProfile = 0x1,
        .interestedSection = 0x14E,
        .uninterestedSection = 0x150,
    },
    {
        .roomId = 0x1,
        .roomseq = 0xFF,
        .evidenceId = 0x19,
        .personId = 0x5,
        .isProfile = 0x1,
        .interestedSection = 0x14F,
        .uninterestedSection = 0x150,
    },
    {
        .roomId = 0x3,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0x4,
        .isProfile = 0x0,
        .interestedSection = 0xA4,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x3,
        .roomseq = 0xFF,
        .evidenceId = 0x13,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0xA6,
        .uninterestedSection = 0xA8,
    },
    {
        .roomId = 0x3,
        .roomseq = 0xFF,
        .evidenceId = 0x17,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0xA7,
        .uninterestedSection = 0xA8,
    },
    {
        .roomId = 0x3,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x18,
        .isProfile = 0x0,
        .interestedSection = 0xAC,
        .uninterestedSection = 0xAC,
    },
    {
        .roomId = 0x3,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x18,
        .isProfile = 0x1,
        .interestedSection = 0xAC,
        .uninterestedSection = 0xAC,
    },
    {
        .roomId = 0x3,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x18,
        .isProfile = 0x0,
        .interestedSection = 0xAF,
        .uninterestedSection = 0xAF,
    },
    {
        .roomId = 0x3,
        .roomseq = 0xFF,
        .evidenceId = 0x17,
        .personId = 0x18,
        .isProfile = 0x1,
        .interestedSection = 0xB0,
        .uninterestedSection = 0xAF,
    },
    {
        .roomId = 0x3,
        .roomseq = 0xFF,
        .evidenceId = 0x14,
        .personId = 0x18,
        .isProfile = 0x1,
        .interestedSection = 0xB1,
        .uninterestedSection = 0xAF,
    },
    {
        .roomId = 0x3,
        .roomseq = 0xFF,
        .evidenceId = 0x1C,
        .personId = 0x18,
        .isProfile = 0x1,
        .interestedSection = 0xB2,
        .uninterestedSection = 0xAF,
    },
    {
        .roomId = 0x3,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0x18,
        .isProfile = 0x1,
        .interestedSection = 0xB3,
        .uninterestedSection = 0xAF,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0x17,
        .isProfile = 0x0,
        .interestedSection = 0xBD,
        .uninterestedSection = 0xBF,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x23,
        .personId = 0x17,
        .isProfile = 0x0,
        .interestedSection = 0xBE,
        .uninterestedSection = 0xBF,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x17,
        .personId = 0x17,
        .isProfile = 0x1,
        .interestedSection = 0xC0,
        .uninterestedSection = 0xC2,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x1B,
        .personId = 0x17,
        .isProfile = 0x1,
        .interestedSection = 0xC1,
        .uninterestedSection = 0xC2,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x1C,
        .personId = 0x17,
        .isProfile = 0x1,
        .interestedSection = 0xC1,
        .uninterestedSection = 0xC2,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xCE,
        .uninterestedSection = 0xD3,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x2B,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xD1,
        .uninterestedSection = 0xD3,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x2D,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xD2,
        .uninterestedSection = 0xD3,
    },
    {
        .roomId = 0x4,
        .roomseq = 0x0,
        .evidenceId = 0x27,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xCF,
        .uninterestedSection = 0xD3,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x27,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xD0,
        .uninterestedSection = 0xD3,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD4,
        .uninterestedSection = 0xD8,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x17,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD6,
        .uninterestedSection = 0xD8,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x18,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD6,
        .uninterestedSection = 0xD8,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x1C,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD5,
        .uninterestedSection = 0xD8,
    },
    {
        .roomId = 0x4,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD7,
        .uninterestedSection = 0xD8,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0x2A,
        .personId = 0x15,
        .isProfile = 0x0,
        .interestedSection = 0xF7,
        .uninterestedSection = 0xF6,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0x2C,
        .personId = 0x15,
        .isProfile = 0x0,
        .interestedSection = 0xF8,
        .uninterestedSection = 0xF6,
    },
    {
        .roomId = 0x5,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x15,
        .isProfile = 0x0,
        .interestedSection = 0xE3,
        .uninterestedSection = 0xE3,
    },
    {
        .roomId = 0x5,
        .roomseq = 0x0,
        .evidenceId = 0x17,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xE4,
        .uninterestedSection = 0xE3,
    },
    {
        .roomId = 0x5,
        .roomseq = 0x0,
        .evidenceId = 0x13,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xE5,
        .uninterestedSection = 0xE3,
    },
    {
        .roomId = 0x5,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xE3,
        .uninterestedSection = 0xE3,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0x17,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xF9,
        .uninterestedSection = 0xFD,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0x18,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xF9,
        .uninterestedSection = 0xFD,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0x14,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xFA,
        .uninterestedSection = 0xFD,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0x15,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xFB,
        .uninterestedSection = 0xFD,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xFB,
        .uninterestedSection = 0xFD,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0x1C,
        .personId = 0x15,
        .isProfile = 0x1,
        .interestedSection = 0xFC,
        .uninterestedSection = 0xFD,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xEB,
        .uninterestedSection = 0xEB,
    },
    {
        .roomId = 0x5,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xEB,
        .uninterestedSection = 0xEB,
    },
    {
        .roomId = 0x7,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x13,
        .isProfile = 0x0,
        .interestedSection = 0x10A,
        .uninterestedSection = 0x10A,
    },
    {
        .roomId = 0x7,
        .roomseq = 0x0,
        .evidenceId = 0x17,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x10C,
        .uninterestedSection = 0x10B,
    },
    {
        .roomId = 0x7,
        .roomseq = 0x0,
        .evidenceId = 0x1E,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x116,
        .uninterestedSection = 0x10B,
    },
    {
        .roomId = 0x7,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x10B,
        .uninterestedSection = 0x10B,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0x13,
        .isProfile = 0x0,
        .interestedSection = 0x111,
        .uninterestedSection = 0x113,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x2A,
        .personId = 0x13,
        .isProfile = 0x0,
        .interestedSection = 0x112,
        .uninterestedSection = 0x113,
    },
    {
        .roomId = 0x7,
        .roomseq = 0x2,
        .evidenceId = 0x2B,
        .personId = 0x13,
        .isProfile = 0x0,
        .interestedSection = 0x112,
        .uninterestedSection = 0x113,
    },
    {
        .roomId = 0x7,
        .roomseq = 0x3,
        .evidenceId = 0x2B,
        .personId = 0x13,
        .isProfile = 0x0,
        .interestedSection = 0x11D,
        .uninterestedSection = 0x113,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x2B,
        .personId = 0x13,
        .isProfile = 0x0,
        .interestedSection = 0x112,
        .uninterestedSection = 0x113,
    },
    {
        .roomId = 0x7,
        .roomseq = 0x4,
        .evidenceId = 0x28,
        .personId = 0x13,
        .isProfile = 0x0,
        .interestedSection = 0x122,
        .uninterestedSection = 0x121,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x17,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x114,
        .uninterestedSection = 0x117,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x18,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x114,
        .uninterestedSection = 0x117,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x1C,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x115,
        .uninterestedSection = 0x117,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x1E,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x116,
        .uninterestedSection = 0x117,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x1F,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x116,
        .uninterestedSection = 0x117,
    },
    {
        .roomId = 0x7,
        .roomseq = 0x1,
        .evidenceId = 0xFF,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x117,
        .uninterestedSection = 0x117,
    },
    {
        .roomId = 0x7,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0x13,
        .isProfile = 0x1,
        .interestedSection = 0x11C,
        .uninterestedSection = 0x117,
    },
    {
        .roomId = 0x6,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x12E,
        .uninterestedSection = 0x12E,
    },
    {
        .roomId = 0x6,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12E,
        .uninterestedSection = 0x12E,
    },
    {
        .roomId = 0x6,
        .roomseq = 0x1,
        .evidenceId = 0x2A,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x134,
        .uninterestedSection = 0x133,
    },
    {
        .roomId = 0x6,
        .roomseq = 0xFF,
        .evidenceId = 0x2A,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x139,
        .uninterestedSection = 0x139,
    },
    {
        .roomId = 0x6,
        .roomseq = 0x1,
        .evidenceId = 0xFF,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x133,
        .uninterestedSection = 0x133,
    },
    {
        .roomId = 0x6,
        .roomseq = 0x1,
        .evidenceId = 0xFF,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x133,
        .uninterestedSection = 0x133,
    },
    {
        .roomId = 0x6,
        .roomseq = 0xFF,
        .evidenceId = 0x2B,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x139,
        .uninterestedSection = 0x13C,
    },
    {
        .roomId = 0x6,
        .roomseq = 0xFF,
        .evidenceId = 0x2D,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x13A,
        .uninterestedSection = 0x13C,
    },
    {
        .roomId = 0x6,
        .roomseq = 0xFF,
        .evidenceId = 0x2C,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x13B,
        .uninterestedSection = 0x13C,
    },
    {
        .roomId = 0x6,
        .roomseq = 0xFF,
        .evidenceId = 0x1C,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x13D,
        .uninterestedSection = 0x140,
    },
    {
        .roomId = 0x6,
        .roomseq = 0xFF,
        .evidenceId = 0x17,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x13E,
        .uninterestedSection = 0x140,
    },
    {
        .roomId = 0x6,
        .roomseq = 0xFF,
        .evidenceId = 0x18,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x13E,
        .uninterestedSection = 0x140,
    },
    {
        .roomId = 0x6,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x13F,
        .uninterestedSection = 0x140,
    },
    {
        .roomId = 0xFF,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0xFF,
        .isProfile = 0xFF,
        .interestedSection = 0xFFFF,
        .uninterestedSection = 0xFFFF,
    },
};

const u16 gUnknown_0801CA24[2] = {
    0x0119, 0x011A,
};

const struct TalkData gUnknown_0801CA28[24] = {
    {
        .roomId = 0x1,
        .personId = 0x4,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x0, 0x1, 0xFF, 0xFF },
        .talkFlagId = { 0x12, 0x13, 0xFF, 0xFF },
        .talkSection = { 0x8D, 0x8E, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x4,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x0, 0x1, 0x2, 0xFF },
        .talkFlagId = { 0x12, 0x13, 0x14, 0xFF },
        .talkSection = { 0x8D, 0x8E, 0x8F, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x5,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x3, 0x4, 0xFF, 0xFF },
        .talkFlagId = { 0x26, 0x27, 0xFF, 0xFF },
        .talkSection = { 0x144, 0x145, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x5,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3, 0x4, 0x5, 0xFF },
        .talkFlagId = { 0x26, 0x27, 0x28, 0xFF },
        .talkSection = { 0x144, 0x145, 0x146, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x4,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x6, 0x7, 0x8, 0xFF },
        .talkFlagId = { 0x0, 0x1, 0x2, 0xFF },
        .talkSection = { 0xA1, 0xA2, 0xA3, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x9, 0xA, 0xFF, 0xFF },
        .talkFlagId = { 0x8, 0x9, 0xFF, 0xFF },
        .talkSection = { 0xAA, 0xAB, 0x0, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x9, 0xA, 0xB, 0xFF },
        .talkFlagId = { 0x8, 0x9, 0xC, 0xFF },
        .talkSection = { 0xAA, 0xAB, 0xAE, 0x0 }
    },
    {
        .roomId = 0x4,
        .personId = 0x17,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x6, 0xC, 0xFF, 0xFF },
        .talkFlagId = { 0x3, 0x4, 0xFF, 0xFF },
        .talkSection = { 0xBB, 0xBC, 0x0, 0x0 }
    },
    {
        .roomId = 0x4,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0xD, 0xE, 0xF, 0xFF },
        .talkFlagId = { 0x20, 0x21, 0x1F, 0xFF },
        .talkSection = { 0xCB, 0xCC, 0xCA, 0x0 }
    },
    {
        .roomId = 0x4,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0xD, 0xE, 0xF, 0x10 },
        .talkFlagId = { 0x20, 0x21, 0x1F, 0x29 },
        .talkSection = { 0xCB, 0xCC, 0xCA, 0xCD }
    },
    {
        .roomId = 0x5,
        .personId = 0x15,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0xC, 0x6, 0x11, 0xFF },
        .talkFlagId = { 0x5, 0x6, 0x7, 0xFF },
        .talkSection = { 0xE0, 0xE1, 0xE2, 0x0 }
    },
    {
        .roomId = 0x5,
        .personId = 0x15,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x13, 0x11, 0x14, 0xFF },
        .talkFlagId = { 0x15, 0x16, 0x17, 0xFF },
        .talkSection = { 0xF3, 0xF4, 0xF5, 0x0 }
    },
    {
        .roomId = 0x5,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0xC, 0x12, 0xFF, 0xFF },
        .talkFlagId = { 0xA, 0xB, 0xFF, 0xFF },
        .talkSection = { 0xE9, 0xEA, 0x0, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x14, 0x16, 0xFF, 0xFF },
        .talkFlagId = { 0x10, 0x11, 0xFF, 0xFF },
        .talkSection = { 0x12E, 0x12E, 0x0, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x14, 0x16, 0xFF, 0xFF },
        .talkFlagId = { 0x1B, 0x1C, 0xFF, 0xFF },
        .talkSection = { 0x132, 0x132, 0x0, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x14, 0x16, 0xFF, 0xFF },
        .talkFlagId = { 0x1D, 0x1E, 0xFF, 0xFF },
        .talkSection = { 0x135, 0x136, 0x0, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x14, 0xFF, 0xFF, 0xFF },
        .talkFlagId = { 0x1D, 0xFF, 0xFF, 0xFF },
        .talkSection = { 0x135, 0x0, 0x0, 0x0 }
    },
    {
        .roomId = 0x7,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x15, 0x1, 0xFF, 0xFF },
        .talkFlagId = { 0xD, 0xE, 0xFF, 0xFF },
        .talkSection = { 0x107, 0x108, 0x0, 0x0 }
    },
    {
        .roomId = 0x7,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x15, 0x1, 0xE, 0xFF },
        .talkFlagId = { 0xD, 0xE, 0xF, 0xFF },
        .talkSection = { 0x107, 0x108, 0x109, 0x0 }
    },
    {
        .roomId = 0x7,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x15, 0x13, 0xE, 0xFF },
        .talkFlagId = { 0x18, 0x19, 0x1A, 0xFF },
        .talkSection = { 0x10E, 0x10F, 0x110, 0x0 }
    },
    {
        .roomId = 0x7,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x15, 0x13, 0xE, 0xFF },
        .talkFlagId = { 0x18, 0x19, 0x22, 0xFF },
        .talkSection = { 0x10E, 0x10F, 0x119, 0x0 }
    },
    {
        .roomId = 0x7,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x15, 0x13, 0xE, 0xFF },
        .talkFlagId = { 0x18, 0x19, 0x22, 0xFF },
        .talkSection = { 0x10E, 0x10F, 0x11A, 0x0 }
    },
    {
        .roomId = 0x7,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x15, 0x13, 0xE, 0xFF },
        .talkFlagId = { 0x18, 0x19, 0x24, 0xFF },
        .talkSection = { 0x10E, 0x10F, 0x11B, 0x0 }
    },
    {
        .roomId = 0xFF,
        .personId = 0xFF,
        .unk2 = 0xFF,
        .enableFlag = 0xFF,
        .iconId = { 0xFF, 0xFF, 0xFF, 0xFF },
        .talkFlagId = { 0xFF, 0xFF, 0xFF, 0xFF },
        .talkSection = { 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF }
    },
};

const u8 gUnknown_0801CC08[8][5] = {
    { 0x12, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x11, 0x00, 0x03, 0xFF, 0xFF },
	{ 0x22, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x80, 0x04, 0xFF, 0xFF, 0xFF },
	{ 0x1D, 0x03, 0x05, 0x06, 0xFF },
	{ 0x1E, 0x04, 0xFF, 0xFF, 0xFF },
	{ 0x1F, 0x07, 0x04, 0xFF, 0xFF },
	{ 0x21, 0x06, 0xFF, 0xFF, 0xFF },
};

const struct ExaminationData gUnknown_0801CC30[6] = {
    {
        .examinationSection = 0x83,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 99, .y = 80 },
            [1] = { .x = 128, .y = 80 },
            [2] = { .x = 128, .y = 160 },
            [3] = { .x = 96, .y = 160 },
        }}
    },
    {
        .examinationSection = 0x84,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 221, .y = 23 },
            [1] = { .x = 240, .y = 23 },
            [2] = { .x = 240, .y = 112 },
            [3] = { .x = 221, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x85,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 16 },
            [1] = { .x = 88, .y = 33 },
            [2] = { .x = 88, .y = 112 },
            [3] = { .x = 0, .y = 133 },
        }}
    },
    {
        .examinationSection = 0x87,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 147, .y = 129 },
            [1] = { .x = 240, .y = 129 },
            [2] = { .x = 240, .y = 144 },
            [3] = { .x = 146, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x88,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 147, .y = 43 },
            [1] = { .x = 195, .y = 43 },
            [2] = { .x = 195, .y = 100 },
            [3] = { .x = 148, .y = 100 },
        }}
    },
    {
        .examinationSection = 0x86,
        .unk2 = 0xFE,
        .unk3 = 0x9,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 0, .y = 0 },
            [2] = { .x = 0, .y = 0 },
            [3] = { .x = 0, .y = 0 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CCA8[2] = {
    {
        .examinationSection = 0x8B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 196, .y = 76 },
            [1] = { .x = 211, .y = 76 },
            [2] = { .x = 223, .y = 132 },
            [3] = { .x = 199, .y = 132 },
        }}
    },
    {
        .examinationSection = 0x8C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 26, .y = 24 },
            [1] = { .x = 46, .y = 34 },
            [2] = { .x = 46, .y = 40 },
            [3] = { .x = 26, .y = 33 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CCD0[7] = {
    {
        .examinationSection = 0x9C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 77, .y = 5 },
            [1] = { .x = 88, .y = 5 },
            [2] = { .x = 99, .y = 25 },
            [3] = { .x = 69, .y = 19 },
        }}
    },
    {
        .examinationSection = 0x9C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 69, .y = 19 },
            [1] = { .x = 99, .y = 25 },
            [2] = { .x = 101, .y = 105 },
            [3] = { .x = 68, .y = 106 },
        }}
    },
    {
        .examinationSection = 0x9D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 28, .y = 56 },
            [1] = { .x = 64, .y = 66 },
            [2] = { .x = 64, .y = 128 },
            [3] = { .x = 30, .y = 134 },
        }}
    },
    {
        .examinationSection = 0x9E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 43 },
            [1] = { .x = 27, .y = 57 },
            [2] = { .x = 27, .y = 148 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x9F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 159, .y = 71 },
            [1] = { .x = 213, .y = 0 },
            [2] = { .x = 190, .y = 156 },
            [3] = { .x = 156, .y = 119 },
        }}
    },
    {
        .examinationSection = 0x9F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 213, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 151 },
            [3] = { .x = 190, .y = 156 },
        }}
    },
    {
        .examinationSection = 0xA0,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 100, .y = 74 },
            [1] = { .x = 158, .y = 69 },
            [2] = { .x = 157, .y = 89 },
            [3] = { .x = 101, .y = 96 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CD5C[4] = {
    {
        .examinationSection = 0xB7,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 20, .y = 5 },
            [1] = { .x = 80, .y = 17 },
            [2] = { .x = 74, .y = 40 },
            [3] = { .x = 16, .y = 33 },
        }}
    },
    {
        .examinationSection = 0xB8,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 16, .y = 33 },
            [1] = { .x = 76, .y = 40 },
            [2] = { .x = 76, .y = 96 },
            [3] = { .x = 16, .y = 99 },
        }}
    },
    {
        .examinationSection = 0xB9,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 92, .y = 49 },
            [1] = { .x = 132, .y = 54 },
            [2] = { .x = 132, .y = 77 },
            [3] = { .x = 92, .y = 77 },
        }}
    },
    {
        .examinationSection = 0xBA,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 142, .y = 53 },
            [1] = { .x = 183, .y = 47 },
            [2] = { .x = 183, .y = 103 },
            [3] = { .x = 142, .y = 93 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CDAC[5] = {
    {
        .examinationSection = 0xDB,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 22, .y = 20 },
            [1] = { .x = 92, .y = 37 },
            [2] = { .x = 92, .y = 115 },
            [3] = { .x = 22, .y = 134 },
        }}
    },
    {
        .examinationSection = 0xDC,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 151, .y = 101 },
            [1] = { .x = 326, .y = 101 },
            [2] = { .x = 358, .y = 146 },
            [3] = { .x = 120, .y = 147 },
        }}
    },
    {
        .examinationSection = 0xDE,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 319, .y = 81 },
            [1] = { .x = 364, .y = 81 },
            [2] = { .x = 414, .y = 149 },
            [3] = { .x = 358, .y = 147 },
        }}
    },
    {
        .examinationSection = 0xF0,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 354, .y = 50 },
            [1] = { .x = 444, .y = 26 },
            [2] = { .x = 444, .y = 150 },
            [3] = { .x = 354, .y = 112 },
        }}
    },
    {
        .examinationSection = 0xDF,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 446, .y = 21 },
            [1] = { .x = 479, .y = 9 },
            [2] = { .x = 479, .y = 156 },
            [3] = { .x = 446, .y = 139 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CE10[6] = {
    {
        .examinationSection = 0xDD,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 180, .y = 112 },
            [1] = { .x = 227, .y = 112 },
            [2] = { .x = 227, .y = 136 },
            [3] = { .x = 180, .y = 136 },
        }}
    },
    {
        .examinationSection = 0xEE,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 22, .y = 20 },
            [1] = { .x = 92, .y = 37 },
            [2] = { .x = 92, .y = 115 },
            [3] = { .x = 22, .y = 134 },
        }}
    },
    {
        .examinationSection = 0xDC,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 151, .y = 101 },
            [1] = { .x = 326, .y = 101 },
            [2] = { .x = 358, .y = 146 },
            [3] = { .x = 120, .y = 147 },
        }}
    },
    {
        .examinationSection = 0xF2,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 319, .y = 81 },
            [1] = { .x = 364, .y = 81 },
            [2] = { .x = 414, .y = 149 },
            [3] = { .x = 358, .y = 147 },
        }}
    },
    {
        .examinationSection = 0xEF,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 354, .y = 50 },
            [1] = { .x = 444, .y = 26 },
            [2] = { .x = 444, .y = 150 },
            [3] = { .x = 354, .y = 112 },
        }}
    },
    {
        .examinationSection = 0xF1,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 446, .y = 21 },
            [1] = { .x = 479, .y = 9 },
            [2] = { .x = 479, .y = 156 },
            [3] = { .x = 446, .y = 139 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CE88[5] = {
    {
        .examinationSection = 0x129,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 200, .y = 63 },
            [1] = { .x = 219, .y = 63 },
            [2] = { .x = 219, .y = 88 },
            [3] = { .x = 200, .y = 88 },
        }}
    },
    {
        .examinationSection = 0x12A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 84, .y = 44 },
            [1] = { .x = 185, .y = 44 },
            [2] = { .x = 185, .y = 99 },
            [3] = { .x = 84, .y = 96 },
        }}
    },
    {
        .examinationSection = 0x12B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 24, .y = 47 },
            [1] = { .x = 64, .y = 47 },
            [2] = { .x = 64, .y = 108 },
            [3] = { .x = 24, .y = 108 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 99 },
            [1] = { .x = 172, .y = 103 },
            [2] = { .x = 72, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 57 },
            [1] = { .x = 24, .y = 59 },
            [2] = { .x = 24, .y = 100 },
            [3] = { .x = 0, .y = 99 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CEEC[4] = {
    {
        .examinationSection = 0xFF,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 59, .y = 93 },
            [1] = { .x = 111, .y = 90 },
            [2] = { .x = 179, .y = 127 },
            [3] = { .x = 94, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x100,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 131, .y = 1 },
            [1] = { .x = 239, .y = 1 },
            [2] = { .x = 239, .y = 128 },
            [3] = { .x = 120, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x101,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 31, .y = 29 },
            [1] = { .x = 120, .y = 29 },
            [2] = { .x = 120, .y = 90 },
            [3] = { .x = 31, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x102,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 49 },
            [1] = { .x = 27, .y = 49 },
            [2] = { .x = 27, .y = 72 },
            [3] = { .x = 0, .y = 72 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CF3C[4] = {
    {
        .examinationSection = 0x105,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 59, .y = 93 },
            [1] = { .x = 111, .y = 90 },
            [2] = { .x = 179, .y = 127 },
            [3] = { .x = 94, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x100,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 131, .y = 1 },
            [1] = { .x = 239, .y = 1 },
            [2] = { .x = 239, .y = 128 },
            [3] = { .x = 120, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x101,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 31, .y = 29 },
            [1] = { .x = 120, .y = 29 },
            [2] = { .x = 120, .y = 90 },
            [3] = { .x = 31, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x102,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 49 },
            [1] = { .x = 27, .y = 49 },
            [2] = { .x = 27, .y = 72 },
            [3] = { .x = 0, .y = 72 },
        }}
    },
};

const struct ExaminationData gUnknown_0801CF8C[5] = {
    {
        .examinationSection = 0x103,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 110, .y = 110 },
            [1] = { .x = 217, .y = 110 },
            [2] = { .x = 217, .y = 159 },
            [3] = { .x = 110, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x105,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 59, .y = 93 },
            [1] = { .x = 111, .y = 90 },
            [2] = { .x = 179, .y = 127 },
            [3] = { .x = 94, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x100,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 131, .y = 1 },
            [1] = { .x = 239, .y = 1 },
            [2] = { .x = 239, .y = 128 },
            [3] = { .x = 120, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x101,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 31, .y = 29 },
            [1] = { .x = 120, .y = 29 },
            [2] = { .x = 120, .y = 90 },
            [3] = { .x = 31, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x106,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 49 },
            [1] = { .x = 27, .y = 49 },
            [2] = { .x = 27, .y = 72 },
            [3] = { .x = 0, .y = 72 },
        }}
    },
};

void InvestigationSegmentSetup_1_0(struct Main *main) {
    DmaCopy16(3, gUnknown_0801CC08, gMain.roomData, sizeof(gUnknown_0801CC08));
    DmaCopy16(3, gUnknown_0801CA28, gTalkData, sizeof(gUnknown_0801CA28));
    DmaCopy16(3, gUnknown_0801CA24, gUnknown_03003B70, sizeof(gUnknown_0801CA24));
    main->currentRoomId = 0;
    sub_8017910();
}

void InvestigationRoomSetup_1_0(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            if(GetFlag(0, 0x48)) {
                if(!GetFlag(0, 0x6B)) {
                    InvestigationSetScriptSectionAndFlag(0x82, 0xFF);
                }
                if(!GetFlag(0, 0x6C)) {
                    PlayAnimation(9);
                }
                LOADEXAMDATA(gUnknown_0801CC30);
            }
            if(GetFlag(0, 0x49)) {
                ChangeFlag(0, 0x4A, 1);
            }
            break;
        }
        case 1: {
            if(GetFlag(0, 0x4E) && GetFlag(0, 0x81)) {
                LoadCurrentScriptIntoRam();
                if(GetFlag(0, 0x7D)) {
                        InvestigationSetPersonAnimation(5, 0, 0);
                        PlayBGM(0xD0);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0x143, 0xFF);
                }
            }
            else if(GetFlag(0, 0x4A)) {
                if(!GetFlag(0, 0x6D)) {
                    InvestigationSetScriptSectionAndFlag(0x99, 0xFF);
                }
            }
            else if(GetFlag(0, 0x48)) {
                InvestigationSetPersonAnimation(4, 0, 0);
                PlayBGM(0xD0);
            }
            else {
                InvestigationSetScriptSectionAndFlag(0x89, 0xFF);
            }
            LOADEXAMDATA(gUnknown_0801CCA8);
            break;
        }
        case 3: {
            if(GetFlag(0, 0x4E) && GetFlag(0, 0x81)) {
                if(!GetFlag(0, 0x4F)) {
                    InvestigationSetScriptSectionAndFlag(0xB5, 0xFF);
                }
            }
            else if(GetFlag(0, 0x48)) {
                if(!GetFlag(0, 0x6E)) {
                    InvestigationSetScriptSectionAndFlag(0xB4, 0xFF);
                }
                else {
                    PlayBGM(31);
                }
            }
            else if(GetFlag(0, 0x42)) {
                if(!GetFlag(0, 0x44)) {
                    if(GetFlag(0, 0x66)) {
                        InvestigationSetPersonAnimation(0x18, 0x1468, 0x1468);
                        PlayBGM(31);
                    }
                    else {
                        InvestigationSetScriptSectionAndFlag(0xAD, 0xFF);
                    }
                }
            }
            else if(GetFlag(0, 0x41)) {
                if(GetFlag(0, 0x61)) {
                    InvestigationSetPersonAnimation(0x18, 0xD38, 0xC14);
                    PlayBGM(0x0C);
                }
                InvestigationSetScriptSectionAndFlag(0xA9, 0xFF);
            }
            else if(GetFlag(0, 0x51)) {
                if(!GetFlag(0, 0x52) || !GetFlag(0, 0x53) || !GetFlag(0, 0x54)) {
                    InvestigationSetPersonAnimation(4, 0x378, 0x378);
                    PlayBGM(0x1F);
                }
            }
            else {
                InvestigationSetScriptSectionAndFlag(0x9A, 0x50);
            }
            if(GetFlag(0, 0x49)) {
                ChangeFlag(0, 0x4A, 1);
            }
            LOADEXAMDATA(gUnknown_0801CCD0);
            break;
        }
        case 4: {
            if(GetFlag(0, 0x4D)) {
                if(GetFlag(0, 0x7A) && !GetFlag(0, 0x4F)) {
                    InvestigationSetPersonAnimation(0xA, 0, 0);
                    PlayBGM(1);
                }
                else if(!GetFlag(0, 0x4F)) {
                    InvestigationSetScriptSectionAndFlag(0xC9, 0xFF);
                }
            }
            else if(GetFlag(0, 0x48)) {
                if(!GetFlag(0, 0x6F)) {
                    InvestigationSetScriptSectionAndFlag(0xC8, 0xFF);
                }
            }
            else if(GetFlag(0, 0x44) && GetFlag(0, 0x45) && GetFlag(0, 0x46) && GetFlag(0, 0x47)) {
                InvestigationSetScriptSectionAndFlag(0xC7, 0xFF);
            }
            else if(GetFlag(0, 0x41)) {
                if(GetFlag(0, 0x61)) {
                    if(!GetFlag(0, 0x62)) {
                        InvestigationSetScriptSectionAndFlag(0xC6, 0xFF);
                    }
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0xC3, 0xFF);
                }
            }
            else if(GetFlag(0, 0x56)) {
                InvestigationSetPersonAnimation(0x17, 0, 0);
                PlayBGM(0xD7);
            }
            else {
                InvestigationSetScriptSectionAndFlag(0xB6, 0xFF);
            }
            LOADEXAMDATA(gUnknown_0801CD5C);
            break;
        }
        case 5: {
            if(GetFlag(0, 0x48)) {
                LOADEXAMDATA(gUnknown_0801CE10);
                if(GetFlag(0, 0x70) && !GetFlag(0, 0x4B)) {
                    InvestigationSetPersonAnimation(0x4015, 0, 0);
                    PlayBGM(0xCF);
                }
                else if(!GetFlag(0, 0x4B)) {
                    InvestigationSetScriptSectionAndFlag(0xEC, 0xFF);
                }
                PlayAnimation(0xC);
            }
            else if(GetFlag(0, 0x41)) {
                if(GetFlag(0, 0x60)) {
                    if(GetFlag(0, 0x63)) {
                        InvestigationSetPersonAnimation(0xA, 0, 0);
                        PlayBGM(0xC);
                    }
                    else {
                        InvestigationSetScriptSectionAndFlag(0xE7, 0xFF);
                    }
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0xE6, 0xFF);
                }
                PlayAnimation(0xD);
            }
            else {
                LOADEXAMDATA(gUnknown_0801CDAC);
                if(GetFlag(0, 0x57)) {
                    InvestigationSetPersonAnimation(0x4015, 0, 0);
                    PlayBGM(0xCF);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0xD9, 0xFF);
                }
            }
            break;
        }
        case 6: {
            if(GetFlag(0, 0x4B) && GetFlag(0, 0x4C)) {
                if(GetFlag(0, 0x77) && !GetFlag(0, 0x4D)) {
                    InvestigationSetPersonAnimation(0x14, 0x468, 0x468);
                    if(GetFlag(0, 0x82)) {
                        PlayBGM(0xF2);
                    }
                }
                else if(!GetFlag(0, 0x4D)) {
                    InvestigationSetScriptSectionAndFlag(0x130, 0xFF);
                }
            }
            else if(GetFlag(0, 0x48)) {
                if(!GetFlag(0, 0x76)) {
                    InvestigationSetScriptSectionAndFlag(0x12F, 0xFF);
                }
            }
            else if(GetFlag(0, 0x43)) {
                if(GetFlag(0, 0x67)) {
                    InvestigationSetPersonAnimation(0x14, 0x468, 0x468);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0x12D, 0xFF);
                }
            }
            else if(GetFlag(0, 0x5B) && GetFlag(0, 0x5C) && !GetFlag(0, 0x5E)) {
                InvestigationSetScriptSectionAndFlag(0x124, 0xFF);
            }
            else if(!GetFlag(0, 0x5D)) {
                InvestigationSetScriptSectionAndFlag(0x123, 0xFF);
            }
            LOADEXAMDATA(gUnknown_0801CE88);
            break;
        }
        case 7: {
            if(GetFlag(0, 0x4D)) {
                LOADEXAMDATA(gUnknown_0801CF8C);
                if(GetFlag(0, 0x7B) && !GetFlag(0, 0x4E)) {
                    InvestigationSetPersonAnimation(0x13, 0, 0);
                    PlayBGM(0xD7);
                }
                else if(!GetFlag(0, 0x4E)) {
                    InvestigationSetScriptSectionAndFlag(0x118, 0xFF);
                }
            }
            else if(GetFlag(0, 0x48)) {
                LOADEXAMDATA(gUnknown_0801CF8C);
                if(GetFlag(0, 0x75)) {
                    InvestigationSetPersonAnimation(0x13, 0, 0);
                    PlayBGM(0xD7);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0x10D, 0xFF);
                }
            }
            else if(GetFlag(0, 0x42)) {
                LOADEXAMDATA(gUnknown_0801CF3C);
                if(GetFlag(0, 0x43)) {
                    InvestigationSetPersonAnimation(0x13, 0, 0);
                    PlayBGM(215);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0x104, 0xFF);
                }
            }
            else {
                LOADEXAMDATA(gUnknown_0801CEEC);
                if(!GetFlag(0, 0x5C)) {
                    InvestigationSetScriptSectionAndFlag(0xFE, 0xFF);
                }
            }
            break;
        }
    }
}

void InvestigationRoomUpdate_1_0(struct Main *main) {
    if(main->currentRoomId == 7) {
        if(GetFlag(0, 0x4E)) {
            struct ExaminationData* ptr = gExaminationData;
            ptr += 1;
            ptr->examinationSection = 0xFF;
            ptr += 3;
            ptr->examinationSection = 0x102;
        }
    }
}
