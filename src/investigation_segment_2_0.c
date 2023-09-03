#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"
#include "animation.h"

const u8 gCourtRecordInitialItems_2_0[2] = {
    0xFE, 0xFF,
};

const u8 gCourtRecordInitialItems_2_1[20] = {
    0x3C, 0x3D, 0x42, 0x02, 0x3E, 0x40, 0x3F, 0x43, 0xFE, 0x05, 0x2B, 0x47, 0x48, 0x4A, 0x4B, 0x4C, 0x49, 0x4E, 0x52, 0xFF,
};

const u8 gCourtRecordInitialItems_2_2[23] = {
    0x3C, 0x3D, 0x42, 0x02, 0x3E, 0x40, 0x3F, 0x43, 0xFE, 0x05, 0x2B, 0x47, 0x48, 0x4A, 0x4B, 0x4C, 0x49, 0x4E, 0x52, 0x4F, 0x50, 0x51, 0xFF,
};

const u8 gCourtRecordInitialItems_2_3[23] = {
    0x3C, 0x3D, 0x42, 0x02, 0x3E, 0x40, 0x3F, 0x43, 0xFE, 0x05, 0x2B, 0x47, 0x48, 0x4A, 0x4B, 0x4C, 0x49, 0x4E, 0x52, 0x4F, 0x50, 0x51, 0xFF,
};

const u8 gCourtRecordInitialItems_2_4[28] = {
    0x3C, 0x3D, 0x42, 0x02, 0x3E, 0x40, 0x3F, 0x43, 0x45, 0x46, 0xFE, 0x05, 0x2B, 0x47, 0x48, 0x4A, 0x4B, 0x4C, 0x49, 0x4E, 0x59, 0x4F, 0x50, 0x51, 0x53, 0x58, 0x54, 0xFF,
};

const u8 gCourtRecordInitialItems_2_5[28] = {
    0x3C, 0x3D, 0x42, 0x02, 0x3E, 0x40, 0x3F, 0x43, 0x45, 0x46, 0xFE, 0x05, 0x2B, 0x47, 0x48, 0x4A, 0x4B, 0x4C, 0x49, 0x4E, 0x59, 0x4F, 0x50, 0x51, 0x53, 0x58, 0x54, 0xFF,
};

const struct CourtPresentData gCourtPresentData_2_1[9] = {
    {
        .presentingSection = 0xAD,
        .evidenceId = 0x3F,
        .presentedSection = 0xAF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB3,
        .evidenceId = 0x40,
        .presentedSection = 0xB5,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xBB,
        .evidenceId = 0x52,
        .presentedSection = 0xCF,
        .flagId = 0x1A,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xBC,
        .evidenceId = 0x52,
        .presentedSection = 0xCF,
        .flagId = 0x1A,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xBD,
        .evidenceId = 0x52,
        .presentedSection = 0xCF,
        .flagId = 0x1A,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xD6,
        .evidenceId = 0x4C,
        .presentedSection = 0xE3,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xD6,
        .evidenceId = 0x40,
        .presentedSection = 0xE3,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xE8,
        .evidenceId = 0x3F,
        .presentedSection = 0xEA,
        .flagId = 0xFF,
        .action = 0x0,
    },
    {
        .presentingSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .presentedSection = 0xFFFF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
};

const struct CourtPresentData gCourtPresentData_2_3[5] = {
    {
        .presentingSection = 0x9F,
        .evidenceId = 0x4B,
        .presentedSection = 0xA9,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xA0,
        .evidenceId = 0x4B,
        .presentedSection = 0xA9,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAD,
        .evidenceId = 0x48,
        .presentedSection = 0xB0,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB1,
        .evidenceId = 0x47,
        .presentedSection = 0xB3,
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

const struct CourtPresentData gCourtPresentData_2_4[12] = {
    {
        .presentingSection = 0x90,
        .evidenceId = 0x48,
        .presentedSection = 0x93,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xA4,
        .evidenceId = 0x54,
        .presentedSection = 0xA6,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAB,
        .evidenceId = 0x50,
        .presentedSection = 0xB4,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAB,
        .evidenceId = 0x47,
        .presentedSection = 0xB4,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAC,
        .evidenceId = 0x50,
        .presentedSection = 0xB4,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAC,
        .evidenceId = 0x47,
        .presentedSection = 0xB4,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xBD,
        .evidenceId = 0x4E,
        .presentedSection = 0xBF,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xC0,
        .evidenceId = 0x54,
        .presentedSection = 0xC2,
        .flagId = 0xFF,
        .action = 0x0,
    },
    {
        .presentingSection = 0xC3,
        .evidenceId = 0x3F,
        .presentedSection = 0xC5,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xC6,
        .evidenceId = 0x4B,
        .presentedSection = 0xC8,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xC6,
        .evidenceId = 0x48,
        .presentedSection = 0xC8,
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

const struct CourtPresentData gCourtPresentData_2_5[7] = {
    {
        .presentingSection = 0xA4,
        .evidenceId = 0x40,
        .presentedSection = 0xA6,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xA7,
        .evidenceId = 0x58,
        .presentedSection = 0xA9,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAC,
        .evidenceId = 0x51,
        .presentedSection = 0xAE,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xAF,
        .evidenceId = 0x46,
        .presentedSection = 0xB1,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xB4,
        .evidenceId = 0x5B,
        .presentedSection = 0xB6,
        .flagId = 0xFF,
        .action = 0xFF,
    },
    {
        .presentingSection = 0xC9,
        .evidenceId = 0x46,
        .presentedSection = 0xCB,
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

const struct InvestigationPresentData gInvestigationPresentData_2_0[76] = {
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0x4,
        .isProfile = 0x0,
        .interestedSection = 0x8A,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x48,
        .personId = 0x4,
        .isProfile = 0x0,
        .interestedSection = 0x8B,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x4B,
        .personId = 0x4,
        .isProfile = 0x0,
        .interestedSection = 0x8C,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x4A,
        .personId = 0x4,
        .isProfile = 0x0,
        .interestedSection = 0x8E,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3C,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x91,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3D,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x90,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x92,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3E,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x93,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3F,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x94,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x41,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x95,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x42,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x95,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x43,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x96,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x40,
        .personId = 0x4,
        .isProfile = 0x1,
        .interestedSection = 0x97,
        .uninterestedSection = 0x98,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x5,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xA2,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x48,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xA3,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x47,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xA4,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x3C,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xA6,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x3D,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xA7,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x40,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xA8,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x5,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xA5,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x48,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xA3,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x47,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xA4,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x4D,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xB2,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x4B,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xB3,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x4A,
        .personId = 0x1D,
        .isProfile = 0x0,
        .interestedSection = 0xB4,
        .uninterestedSection = 0xA5,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x3C,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xA6,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x3D,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xA7,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x40,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xA8,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x41,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xB5,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x42,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xB5,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x3F,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xB6,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x3E,
        .personId = 0x1D,
        .isProfile = 0x1,
        .interestedSection = 0xB7,
        .uninterestedSection = 0xA9,
    },
    {
        .roomId = 0x8,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x1E,
        .isProfile = 0x0,
        .interestedSection = 0xCB,
        .uninterestedSection = 0xCB,
    },
    {
        .roomId = 0x8,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x1E,
        .isProfile = 0x1,
        .interestedSection = 0xCB,
        .uninterestedSection = 0xCB,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x48,
        .personId = 0x1C,
        .isProfile = 0x0,
        .interestedSection = 0xDF,
        .uninterestedSection = 0xE0,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x3D,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE1,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x3F,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE2,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x43,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE4,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x40,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE3,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x41,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE5,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x42,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE5,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x3C,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE6,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x0,
        .evidenceId = 0x3E,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE7,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x48,
        .personId = 0x1C,
        .isProfile = 0x0,
        .interestedSection = 0xDF,
        .uninterestedSection = 0xE0,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x47,
        .personId = 0x1C,
        .isProfile = 0x0,
        .interestedSection = 0xEE,
        .uninterestedSection = 0xE0,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x4B,
        .personId = 0x1C,
        .isProfile = 0x0,
        .interestedSection = 0xEF,
        .uninterestedSection = 0xE0,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x4D,
        .personId = 0x1C,
        .isProfile = 0x0,
        .interestedSection = 0xF0,
        .uninterestedSection = 0xE0,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x3D,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE1,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x3F,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE2,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x43,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE4,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x40,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE3,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x41,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE5,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x42,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE5,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x3C,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE6,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0x9,
        .roomseq = 0x1,
        .evidenceId = 0x3E,
        .personId = 0x1C,
        .isProfile = 0x1,
        .interestedSection = 0xE7,
        .uninterestedSection = 0xE8,
    },
    {
        .roomId = 0xA,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xD3,
        .uninterestedSection = 0xD4,
    },
    {
        .roomId = 0xA,
        .roomseq = 0xFF,
        .evidenceId = 0x3D,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD5,
        .uninterestedSection = 0xD9,
    },
    {
        .roomId = 0xA,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD6,
        .uninterestedSection = 0xD9,
    },
    {
        .roomId = 0xA,
        .roomseq = 0xFF,
        .evidenceId = 0x3C,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD7,
        .uninterestedSection = 0xD9,
    },
    {
        .roomId = 0xA,
        .roomseq = 0xFF,
        .evidenceId = 0x3E,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xD8,
        .uninterestedSection = 0xD9,
    },
    {
        .roomId = 0xB,
        .roomseq = 0x0,
        .evidenceId = 0x4D,
        .personId = 0x1E,
        .isProfile = 0x0,
        .interestedSection = 0x101,
        .uninterestedSection = 0xCB,
    },
    {
        .roomId = 0xB,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x1E,
        .isProfile = 0x0,
        .interestedSection = 0xCB,
        .uninterestedSection = 0xCB,
    },
    {
        .roomId = 0xB,
        .roomseq = 0x0,
        .evidenceId = 0xFF,
        .personId = 0x1E,
        .isProfile = 0x1,
        .interestedSection = 0xCB,
        .uninterestedSection = 0xCB,
    },
    {
        .roomId = 0xB,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x1E,
        .isProfile = 0x0,
        .interestedSection = 0xCC,
        .uninterestedSection = 0xCC,
    },
    {
        .roomId = 0xB,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x1E,
        .isProfile = 0x1,
        .interestedSection = 0xCC,
        .uninterestedSection = 0xCC,
    },
    {
        .roomId = 0xD,
        .roomseq = 0xFF,
        .evidenceId = 0x48,
        .personId = 0x1F,
        .isProfile = 0x0,
        .interestedSection = 0x109,
        .uninterestedSection = 0x10B,
    },
    {
        .roomId = 0xD,
        .roomseq = 0xFF,
        .evidenceId = 0x47,
        .personId = 0x1F,
        .isProfile = 0x0,
        .interestedSection = 0x10A,
        .uninterestedSection = 0x10B,
    },
    {
        .roomId = 0xD,
        .roomseq = 0xFF,
        .evidenceId = 0x3F,
        .personId = 0x1F,
        .isProfile = 0x1,
        .interestedSection = 0x10C,
        .uninterestedSection = 0x111,
    },
    {
        .roomId = 0xD,
        .roomseq = 0xFF,
        .evidenceId = 0x40,
        .personId = 0x1F,
        .isProfile = 0x1,
        .interestedSection = 0x10D,
        .uninterestedSection = 0x111,
    },
    {
        .roomId = 0xD,
        .roomseq = 0xFF,
        .evidenceId = 0x3D,
        .personId = 0x1F,
        .isProfile = 0x1,
        .interestedSection = 0x10E,
        .uninterestedSection = 0x111,
    },
    {
        .roomId = 0xD,
        .roomseq = 0x0,
        .evidenceId = 0x41,
        .personId = 0x1F,
        .isProfile = 0x1,
        .interestedSection = 0x10F,
        .uninterestedSection = 0x111,
    },
    {
        .roomId = 0xD,
        .roomseq = 0x0,
        .evidenceId = 0x42,
        .personId = 0x1F,
        .isProfile = 0x1,
        .interestedSection = 0x10F,
        .uninterestedSection = 0x111,
    },
    {
        .roomId = 0xD,
        .roomseq = 0xFF,
        .evidenceId = 0x43,
        .personId = 0x1F,
        .isProfile = 0x1,
        .interestedSection = 0x110,
        .uninterestedSection = 0x111,
    },
    {
        .roomId = 0xD,
        .roomseq = 0x1,
        .evidenceId = 0x41,
        .personId = 0x1F,
        .isProfile = 0x1,
        .interestedSection = 0x117,
        .uninterestedSection = 0x111,
    },
    {
        .roomId = 0xD,
        .roomseq = 0x1,
        .evidenceId = 0x42,
        .personId = 0x1F,
        .isProfile = 0x1,
        .interestedSection = 0x117,
        .uninterestedSection = 0x111,
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

const u16 gPsycheLockedTalkSections_2_0[2] = {
    0x00A0, 0x00A1,
};

const struct TalkData gTalkData_2_0[26] = {
    {
        .roomId = 0x0,
        .personId = 0x4,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x27, 0x28, 0xFF, 0xFF },
        .talkFlagId = { 0x50, 0x51, 0xFF, 0xFF },
        .talkSection = { 0x88, 0x89, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x1D,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x29, 0x2A, 0x2B, 0xFF },
        .talkFlagId = { 0x52, 0x53, 0x54, 0xFF },
        .talkSection = { 0x9D, 0x9E, 0x9F, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x1D,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x29, 0x2A, 0x2B, 0x2C },
        .talkFlagId = { 0x52, 0x53, 0x54, 0x55 },
        .talkSection = { 0x9D, 0x9E, 0x9F, 0xA0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x1D,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x29, 0x2A, 0x2B, 0x2C },
        .talkFlagId = { 0x52, 0x53, 0x54, 0x55 },
        .talkSection = { 0x9D, 0x9E, 0x9F, 0xA1 }
    },
    {
        .roomId = 0x1,
        .personId = 0x1D,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x29, 0x2B, 0x2C, 0xFF },
        .talkFlagId = { 0x60, 0x61, 0x55, 0xFF },
        .talkSection = { 0xAE, 0xAF, 0xA1, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x1D,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x29, 0x2B, 0x2C, 0xFF },
        .talkFlagId = { 0x60, 0x61, 0x66, 0xFF },
        .talkSection = { 0xAE, 0xAF, 0xB0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x1D,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x29, 0x2B, 0x2C, 0x2D },
        .talkFlagId = { 0x60, 0x61, 0x66, 0x67 },
        .talkSection = { 0xAE, 0xAF, 0xB0, 0xB1 }
    },
    {
        .roomId = 0x8,
        .personId = 0x1E,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x2B, 0x29, 0x2E, 0xFF },
        .talkFlagId = { 0x5D, 0x5E, 0x5F, 0xFF },
        .talkSection = { 0xC8, 0xC9, 0xCA, 0x0 }
    },
    {
        .roomId = 0x9,
        .personId = 0x1C,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x2B, 0x2F, 0xFF, 0xFF },
        .talkFlagId = { 0x5A, 0x5B, 0xFF, 0xFF },
        .talkSection = { 0xDC, 0xDD, 0x0, 0x0 }
    },
    {
        .roomId = 0x9,
        .personId = 0x1C,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2B, 0x2F, 0x30, 0xFF },
        .talkFlagId = { 0x5A, 0x5B, 0x5C, 0xFF },
        .talkSection = { 0xDC, 0xDD, 0xDE, 0x0 }
    },
    {
        .roomId = 0x9,
        .personId = 0x1C,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x31, 0x32, 0x33, 0xFF },
        .talkFlagId = { 0x6E, 0x6F, 0x70, 0xFF },
        .talkSection = { 0xEB, 0xEC, 0xED, 0x0 }
    },
    {
        .roomId = 0xA,
        .personId = 0xA,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x36, 0x2B, 0xFF, 0xFF },
        .talkFlagId = { 0x59, 0x56, 0xFF, 0xFF },
        .talkSection = { 0xD0, 0xCF, 0x0, 0x0 }
    },
    {
        .roomId = 0xA,
        .personId = 0xA,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x36, 0x2B, 0x37, 0xFF },
        .talkFlagId = { 0x59, 0x56, 0x57, 0xFF },
        .talkSection = { 0xD0, 0xCF, 0xD1, 0x0 }
    },
    {
        .roomId = 0xA,
        .personId = 0xA,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x36, 0x2B, 0x38, 0xFF },
        .talkFlagId = { 0x59, 0x56, 0x58, 0xFF },
        .talkSection = { 0xD0, 0xCF, 0xD2, 0x0 }
    },
    {
        .roomId = 0xA,
        .personId = 0xA,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x36, 0x2B, 0x37, 0x38 },
        .talkFlagId = { 0x59, 0x56, 0x57, 0x58 },
        .talkSection = { 0xD0, 0xCF, 0xD1, 0xD2 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1E,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x2B, 0x2A, 0xFF, 0xFF },
        .talkFlagId = { 0x68, 0x69, 0xFF, 0xFF },
        .talkSection = { 0xFB, 0xFC, 0x0, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1E,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2B, 0x2A, 0xFF, 0xFF },
        .talkFlagId = { 0x6A, 0x6B, 0xFF, 0xFF },
        .talkSection = { 0xFD, 0xFF, 0x0, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1E,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2B, 0x2A, 0x34, 0xFF },
        .talkFlagId = { 0x6A, 0x6B, 0x6C, 0xFF },
        .talkSection = { 0xFD, 0xFF, 0xFE, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1E,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2B, 0x2A, 0x35, 0xFF },
        .talkFlagId = { 0x6A, 0x6B, 0x6D, 0xFF },
        .talkSection = { 0xFD, 0xFF, 0x100, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1E,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2B, 0x2A, 0x34, 0x35 },
        .talkFlagId = { 0x6A, 0x6B, 0x6C, 0x6D },
        .talkSection = { 0xFD, 0xFF, 0xFE, 0x100 }
    },
    {
        .roomId = 0xD,
        .personId = 0x1F,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x2A, 0x2B, 0xFF, 0xFF },
        .talkFlagId = { 0x62, 0x63, 0xFF, 0xFF },
        .talkSection = { 0x105, 0x106, 0x0, 0x0 }
    },
    {
        .roomId = 0xD,
        .personId = 0x1F,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x2B, 0x39, 0xFF },
        .talkFlagId = { 0x62, 0x63, 0x64, 0xFF },
        .talkSection = { 0x105, 0x106, 0x107, 0x0 }
    },
    {
        .roomId = 0xD,
        .personId = 0x1F,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x2B, 0x3A, 0xFF },
        .talkFlagId = { 0x62, 0x63, 0x65, 0xFF },
        .talkSection = { 0x105, 0x106, 0x108, 0x0 }
    },
    {
        .roomId = 0xD,
        .personId = 0x1F,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x2B, 0x39, 0x3A },
        .talkFlagId = { 0x62, 0x63, 0x64, 0x65 },
        .talkSection = { 0x105, 0x106, 0x107, 0x108 }
    },
    {
        .roomId = 0xD,
        .personId = 0x1F,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2F, 0x31, 0xFF, 0xFF },
        .talkFlagId = { 0x71, 0x72, 0xFF, 0xFF },
        .talkSection = { 0x113, 0x114, 0x0, 0x0 }
    },
    {
        .roomId = 0xFF,
        .personId = 0xFF,
        .unused2 = 0xFF,
        .enableFlag = 0xFF,
        .iconId = { 0xFF, 0xFF, 0xFF, 0xFF },
        .talkFlagId = { 0xFF, 0xFF, 0xFF, 0xFF },
        .talkSection = { 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF }
    },
};

const u8 gRoomData_2_0[16][5] = {
    { 0x12, 0x01, 0xFF, 0xFF, 0xFF },
	{ 0x11, 0x00, 0xFF, 0xFF, 0xFF },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x3E, 0x0A, 0x09, 0x00, 0x01 },
	{ 0x3B, 0x08, 0xFF, 0xFF, 0xFF },
	{ 0x40, 0x08, 0xFF, 0xFF, 0xFF },
	{ 0x3C, 0x09, 0xFF, 0xFF, 0xFF },
	{ 0x3D, 0x09, 0xFF, 0xFF, 0xFF },
	{ 0x41, 0x0A, 0xFF, 0xFF, 0xFF },
	{ 0x42, 0x0D, 0xFF, 0xFF, 0xFF },
	{ 0x13, 0xFF, 0xFF, 0xFF, 0xFF },
};

const struct ExaminationData gExaminationData_2_0_00[5] = {
    {
        .examinationSection = 0x82,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 99, .y = 80 },
            [1] = { .x = 128, .y = 80 },
            [2] = { .x = 128, .y = 160 },
            [3] = { .x = 96, .y = 160 },
        }}
    },
    {
        .examinationSection = 0x83,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 221, .y = 23 },
            [1] = { .x = 240, .y = 23 },
            [2] = { .x = 240, .y = 112 },
            [3] = { .x = 221, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x84,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 16 },
            [1] = { .x = 88, .y = 33 },
            [2] = { .x = 88, .y = 112 },
            [3] = { .x = 0, .y = 133 },
        }}
    },
    {
        .examinationSection = 0x85,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 147, .y = 129 },
            [1] = { .x = 240, .y = 129 },
            [2] = { .x = 240, .y = 144 },
            [3] = { .x = 146, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x86,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 147, .y = 43 },
            [1] = { .x = 195, .y = 43 },
            [2] = { .x = 195, .y = 100 },
            [3] = { .x = 148, .y = 100 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_01[2] = {
    {
        .examinationSection = 0x9B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 196, .y = 76 },
            [1] = { .x = 211, .y = 76 },
            [2] = { .x = 223, .y = 132 },
            [3] = { .x = 199, .y = 132 },
        }}
    },
    {
        .examinationSection = 0x9C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 26, .y = 24 },
            [1] = { .x = 46, .y = 34 },
            [2] = { .x = 46, .y = 40 },
            [3] = { .x = 26, .y = 33 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_02[2] = {
    {
        .examinationSection = 0xAB,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 196, .y = 76 },
            [1] = { .x = 211, .y = 76 },
            [2] = { .x = 223, .y = 132 },
            [3] = { .x = 199, .y = 132 },
        }}
    },
    {
        .examinationSection = 0xAC,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 26, .y = 24 },
            [1] = { .x = 46, .y = 34 },
            [2] = { .x = 46, .y = 40 },
            [3] = { .x = 26, .y = 33 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_03[8] = {
    {
        .examinationSection = 0x11D,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 68, .y = 0 },
            [1] = { .x = 166, .y = 0 },
            [2] = { .x = 149, .y = 78 },
            [3] = { .x = 75, .y = 70 },
        }}
    },
    {
        .examinationSection = 0x123,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 179, .y = 22 },
            [1] = { .x = 190, .y = 22 },
            [2] = { .x = 181, .y = 74 },
            [3] = { .x = 172, .y = 72 },
        }}
    },
    {
        .examinationSection = 0x123,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 224, .y = 8 },
            [1] = { .x = 233, .y = 13 },
            [2] = { .x = 216, .y = 61 },
            [3] = { .x = 207, .y = 62 },
        }}
    },
    {
        .examinationSection = 0x11F,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 198, .y = 79 },
            [1] = { .x = 239, .y = 74 },
            [2] = { .x = 239, .y = 117 },
            [3] = { .x = 198, .y = 117 },
        }}
    },
    {
        .examinationSection = 0x11E,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 146, .y = 70 },
            [1] = { .x = 192, .y = 76 },
            [2] = { .x = 192, .y = 118 },
            [3] = { .x = 146, .y = 116 },
        }}
    },
    {
        .examinationSection = 0x120,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 55 },
            [1] = { .x = 81, .y = 68 },
            [2] = { .x = 81, .y = 120 },
            [3] = { .x = 0, .y = 124 },
        }}
    },
    {
        .examinationSection = 0x121,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 81, .y = 71 },
            [1] = { .x = 146, .y = 78 },
            [2] = { .x = 146, .y = 116 },
            [3] = { .x = 81, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x122,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 2 },
            [1] = { .x = 99, .y = 55 },
            [2] = { .x = 118, .y = 113 },
            [3] = { .x = 0, .y = 112 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_04[4] = {
    {
        .examinationSection = 0x13C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 122, .y = 109 },
            [1] = { .x = 238, .y = 157 },
            [2] = { .x = 93, .y = 157 },
            [3] = { .x = 48, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x13D,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 22 },
            [1] = { .x = 28, .y = 29 },
            [2] = { .x = 41, .y = 114 },
            [3] = { .x = 0, .y = 115 },
        }}
    },
    {
        .examinationSection = 0x13E,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 159, .y = 86 },
            [1] = { .x = 195, .y = 90 },
            [2] = { .x = 195, .y = 118 },
            [3] = { .x = 159, .y = 114 },
        }}
    },
    {
        .examinationSection = 0x13F,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 226, .y = 0 },
            [1] = { .x = 233, .y = 0 },
            [2] = { .x = 234, .y = 144 },
            [3] = { .x = 222, .y = 143 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_05[4] = {
    {
        .examinationSection = 0x140,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 122, .y = 109 },
            [1] = { .x = 238, .y = 157 },
            [2] = { .x = 93, .y = 157 },
            [3] = { .x = 48, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x141,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 22 },
            [1] = { .x = 28, .y = 29 },
            [2] = { .x = 41, .y = 114 },
            [3] = { .x = 0, .y = 115 },
        }}
    },
    {
        .examinationSection = 0x142,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 159, .y = 86 },
            [1] = { .x = 195, .y = 90 },
            [2] = { .x = 195, .y = 118 },
            [3] = { .x = 159, .y = 114 },
        }}
    },
    {
        .examinationSection = 0x143,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 226, .y = 0 },
            [1] = { .x = 233, .y = 0 },
            [2] = { .x = 234, .y = 144 },
            [3] = { .x = 222, .y = 143 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_06[10] = {
    {
        .examinationSection = 0x132,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 164, .y = 119 },
            [1] = { .x = 203, .y = 119 },
            [2] = { .x = 203, .y = 159 },
            [3] = { .x = 164, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x132,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 206, .y = 119 },
            [1] = { .x = 239, .y = 115 },
            [2] = { .x = 239, .y = 146 },
            [3] = { .x = 206, .y = 149 },
        }}
    },
    {
        .examinationSection = 0x133,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 146, .y = 32 },
            [1] = { .x = 173, .y = 37 },
            [2] = { .x = 185, .y = 58 },
            [3] = { .x = 155, .y = 73 },
        }}
    },
    {
        .examinationSection = 0x133,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 119, .y = 58 },
            [1] = { .x = 146, .y = 32 },
            [2] = { .x = 156, .y = 72 },
            [3] = { .x = 127, .y = 86 },
        }}
    },
    {
        .examinationSection = 0x133,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 127, .y = 86 },
            [1] = { .x = 186, .y = 58 },
            [2] = { .x = 162, .y = 120 },
            [3] = { .x = 127, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x138,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 47, .y = 43 },
            [1] = { .x = 74, .y = 43 },
            [2] = { .x = 94, .y = 159 },
            [3] = { .x = 28, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x136,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 9, .y = 99 },
            [1] = { .x = 43, .y = 92 },
            [2] = { .x = 41, .y = 110 },
            [3] = { .x = 11, .y = 113 },
        }}
    },
    {
        .examinationSection = 0x134,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 79, .y = 70 },
            [1] = { .x = 127, .y = 72 },
            [2] = { .x = 132, .y = 94 },
            [3] = { .x = 83, .y = 94 },
        }}
    },
    {
        .examinationSection = 0x134,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 42 },
            [1] = { .x = 21, .y = 52 },
            [2] = { .x = 23, .y = 95 },
            [3] = { .x = 0, .y = 95 },
        }}
    },
    {
        .examinationSection = 0x137,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 120 },
            [1] = { .x = 53, .y = 125 },
            [2] = { .x = 55, .y = 141 },
            [3] = { .x = 0, .y = 157 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_07[10] = {
    {
        .examinationSection = 0x139,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 164, .y = 119 },
            [1] = { .x = 203, .y = 119 },
            [2] = { .x = 203, .y = 159 },
            [3] = { .x = 164, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x139,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 206, .y = 119 },
            [1] = { .x = 239, .y = 115 },
            [2] = { .x = 239, .y = 146 },
            [3] = { .x = 206, .y = 149 },
        }}
    },
    {
        .examinationSection = 0x13A,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 146, .y = 32 },
            [1] = { .x = 173, .y = 37 },
            [2] = { .x = 185, .y = 58 },
            [3] = { .x = 155, .y = 73 },
        }}
    },
    {
        .examinationSection = 0x13A,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 119, .y = 58 },
            [1] = { .x = 146, .y = 32 },
            [2] = { .x = 156, .y = 72 },
            [3] = { .x = 127, .y = 86 },
        }}
    },
    {
        .examinationSection = 0x13A,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 127, .y = 86 },
            [1] = { .x = 186, .y = 58 },
            [2] = { .x = 162, .y = 120 },
            [3] = { .x = 127, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x138,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 47, .y = 43 },
            [1] = { .x = 74, .y = 43 },
            [2] = { .x = 94, .y = 159 },
            [3] = { .x = 28, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x136,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 9, .y = 99 },
            [1] = { .x = 43, .y = 92 },
            [2] = { .x = 41, .y = 110 },
            [3] = { .x = 11, .y = 113 },
        }}
    },
    {
        .examinationSection = 0x13B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 79, .y = 70 },
            [1] = { .x = 127, .y = 72 },
            [2] = { .x = 132, .y = 94 },
            [3] = { .x = 83, .y = 94 },
        }}
    },
    {
        .examinationSection = 0x13B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 42 },
            [1] = { .x = 21, .y = 52 },
            [2] = { .x = 23, .y = 95 },
            [3] = { .x = 0, .y = 95 },
        }}
    },
    {
        .examinationSection = 0x137,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 120 },
            [1] = { .x = 53, .y = 125 },
            [2] = { .x = 55, .y = 141 },
            [3] = { .x = 0, .y = 157 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_08[13] = {
    {
        .examinationSection = 0xF2,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 41, .y = 126 },
            [1] = { .x = 97, .y = 129 },
            [2] = { .x = 95, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x127,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 65, .y = 81 },
            [1] = { .x = 164, .y = 81 },
            [2] = { .x = 164, .y = 127 },
            [3] = { .x = 65, .y = 127 },
        }}
    },
    {
        .examinationSection = 0xF4,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 163, .y = 54 },
            [1] = { .x = 193, .y = 54 },
            [2] = { .x = 187, .y = 122 },
            [3] = { .x = 162, .y = 122 },
        }}
    },
    {
        .examinationSection = 0x128,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 17, .y = 33 },
            [1] = { .x = 58, .y = 33 },
            [2] = { .x = 58, .y = 120 },
            [3] = { .x = 17, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x126,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 212, .y = 39 },
            [1] = { .x = 239, .y = 29 },
            [2] = { .x = 239, .y = 91 },
            [3] = { .x = 212, .y = 92 },
        }}
    },
    {
        .examinationSection = 0x126,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 216, .y = 92 },
            [1] = { .x = 239, .y = 91 },
            [2] = { .x = 239, .y = 132 },
            [3] = { .x = 216, .y = 132 },
        }}
    },
    {
        .examinationSection = 0x126,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 199, .y = 93 },
            [1] = { .x = 216, .y = 92 },
            [2] = { .x = 216, .y = 121 },
            [3] = { .x = 199, .y = 121 },
        }}
    },
    {
        .examinationSection = 0x124,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 38, .y = 10 },
            [1] = { .x = 203, .y = 10 },
            [2] = { .x = 203, .y = 27 },
            [3] = { .x = 38, .y = 27 },
        }}
    },
    {
        .examinationSection = 0x125,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 211, .y = 10 },
            [1] = { .x = 229, .y = 0 },
            [2] = { .x = 227, .y = 24 },
            [3] = { .x = 216, .y = 29 },
        }}
    },
    {
        .examinationSection = 0x125,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 229, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 19 },
            [3] = { .x = 227, .y = 24 },
        }}
    },
    {
        .examinationSection = 0xF3,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 62, .y = 30 },
            [1] = { .x = 164, .y = 30 },
            [2] = { .x = 164, .y = 81 },
            [3] = { .x = 62, .y = 81 },
        }}
    },
    {
        .examinationSection = 0xF3,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 164, .y = 30 },
            [1] = { .x = 214, .y = 30 },
            [2] = { .x = 214, .y = 50 },
            [3] = { .x = 164, .y = 66 },
        }}
    },
    {
        .examinationSection = 0xF3,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 25 },
            [1] = { .x = 16, .y = 33 },
            [2] = { .x = 16, .y = 85 },
            [3] = { .x = 0, .y = 87 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_09[13] = {
    {
        .examinationSection = 0xF2,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 41, .y = 126 },
            [1] = { .x = 97, .y = 129 },
            [2] = { .x = 95, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x127,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 65, .y = 81 },
            [1] = { .x = 164, .y = 81 },
            [2] = { .x = 164, .y = 127 },
            [3] = { .x = 65, .y = 127 },
        }}
    },
    {
        .examinationSection = 0xF4,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 163, .y = 54 },
            [1] = { .x = 193, .y = 54 },
            [2] = { .x = 187, .y = 122 },
            [3] = { .x = 162, .y = 122 },
        }}
    },
    {
        .examinationSection = 0x128,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 17, .y = 33 },
            [1] = { .x = 58, .y = 33 },
            [2] = { .x = 58, .y = 120 },
            [3] = { .x = 17, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x126,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 212, .y = 39 },
            [1] = { .x = 239, .y = 29 },
            [2] = { .x = 239, .y = 91 },
            [3] = { .x = 212, .y = 92 },
        }}
    },
    {
        .examinationSection = 0x126,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 216, .y = 92 },
            [1] = { .x = 239, .y = 91 },
            [2] = { .x = 239, .y = 132 },
            [3] = { .x = 216, .y = 132 },
        }}
    },
    {
        .examinationSection = 0x126,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 199, .y = 93 },
            [1] = { .x = 216, .y = 92 },
            [2] = { .x = 216, .y = 121 },
            [3] = { .x = 199, .y = 121 },
        }}
    },
    {
        .examinationSection = 0x124,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 38, .y = 10 },
            [1] = { .x = 203, .y = 10 },
            [2] = { .x = 203, .y = 27 },
            [3] = { .x = 38, .y = 27 },
        }}
    },
    {
        .examinationSection = 0x125,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 211, .y = 10 },
            [1] = { .x = 229, .y = 0 },
            [2] = { .x = 227, .y = 24 },
            [3] = { .x = 216, .y = 29 },
        }}
    },
    {
        .examinationSection = 0x125,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 229, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 19 },
            [3] = { .x = 227, .y = 24 },
        }}
    },
    {
        .examinationSection = 0x12A,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 62, .y = 30 },
            [1] = { .x = 164, .y = 30 },
            [2] = { .x = 164, .y = 81 },
            [3] = { .x = 62, .y = 81 },
        }}
    },
    {
        .examinationSection = 0x12A,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 164, .y = 30 },
            [1] = { .x = 214, .y = 30 },
            [2] = { .x = 214, .y = 50 },
            [3] = { .x = 164, .y = 66 },
        }}
    },
    {
        .examinationSection = 0x12A,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 25 },
            [1] = { .x = 16, .y = 33 },
            [2] = { .x = 16, .y = 85 },
            [3] = { .x = 0, .y = 87 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_10[15] = {
    {
        .examinationSection = 0xF8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 109, .y = 118 },
            [1] = { .x = 139, .y = 118 },
            [2] = { .x = 139, .y = 142 },
            [3] = { .x = 109, .y = 142 },
        }}
    },
    {
        .examinationSection = 0x12E,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 137, .y = 127 },
            [1] = { .x = 166, .y = 123 },
            [2] = { .x = 167, .y = 141 },
            [3] = { .x = 137, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x12E,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 59, .y = 141 },
            [1] = { .x = 95, .y = 136 },
            [2] = { .x = 95, .y = 159 },
            [3] = { .x = 59, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 158, .y = 94 },
            [1] = { .x = 174, .y = 93 },
            [2] = { .x = 174, .y = 128 },
            [3] = { .x = 158, .y = 111 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 174, .y = 93 },
            [1] = { .x = 208, .y = 93 },
            [2] = { .x = 208, .y = 128 },
            [3] = { .x = 174, .y = 128 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 208, .y = 93 },
            [1] = { .x = 239, .y = 107 },
            [2] = { .x = 239, .y = 128 },
            [3] = { .x = 208, .y = 128 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 112 },
            [1] = { .x = 25, .y = 100 },
            [2] = { .x = 25, .y = 136 },
            [3] = { .x = 0, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 25, .y = 100 },
            [1] = { .x = 67, .y = 100 },
            [2] = { .x = 67, .y = 136 },
            [3] = { .x = 25, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 67, .y = 100 },
            [1] = { .x = 88, .y = 100 },
            [2] = { .x = 88, .y = 116 },
            [3] = { .x = 67, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x12D,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 207, .y = 32 },
            [1] = { .x = 238, .y = 23 },
            [2] = { .x = 238, .y = 72 },
            [3] = { .x = 207, .y = 68 },
        }}
    },
    {
        .examinationSection = 0x12B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 133, .y = 83 },
            [1] = { .x = 138, .y = 83 },
            [2] = { .x = 138, .y = 98 },
            [3] = { .x = 133, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x12B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 138, .y = 83 },
            [1] = { .x = 173, .y = 83 },
            [2] = { .x = 185, .y = 92 },
            [3] = { .x = 138, .y = 98 },
        }}
    },
    {
        .examinationSection = 0x12F,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 101, .y = 76 },
            [1] = { .x = 120, .y = 76 },
            [2] = { .x = 120, .y = 107 },
            [3] = { .x = 101, .y = 107 },
        }}
    },
    {
        .examinationSection = 0x130,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 125, .y = 46 },
            [1] = { .x = 146, .y = 46 },
            [2] = { .x = 146, .y = 71 },
            [3] = { .x = 125, .y = 71 },
        }}
    },
    {
        .examinationSection = 0x131,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 1, .y = 36 },
            [1] = { .x = 51, .y = 45 },
            [2] = { .x = 51, .y = 77 },
            [3] = { .x = 1, .y = 89 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_11[10] = {
    {
        .examinationSection = 0x144,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 139 },
            [1] = { .x = 86, .y = 123 },
            [2] = { .x = 88, .y = 142 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x145,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 143, .y = 142 },
            [1] = { .x = 187, .y = 99 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 151, .y = 155 },
        }}
    },
    {
        .examinationSection = 0x145,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 203, .y = 76 },
            [1] = { .x = 239, .y = 85 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 187, .y = 99 },
        }}
    },
    {
        .examinationSection = 0x146,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 113, .y = 61 },
            [1] = { .x = 159, .y = 75 },
            [2] = { .x = 159, .y = 112 },
            [3] = { .x = 112, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x147,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 179, .y = 0 },
            [1] = { .x = 218, .y = 0 },
            [2] = { .x = 207, .y = 16 },
            [3] = { .x = 169, .y = 16 },
        }}
    },
    {
        .examinationSection = 0x148,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 175, .y = 28 },
            [1] = { .x = 239, .y = 16 },
            [2] = { .x = 239, .y = 55 },
            [3] = { .x = 187, .y = 49 },
        }}
    },
    {
        .examinationSection = 0x149,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 38, .y = 83 },
            [1] = { .x = 75, .y = 83 },
            [2] = { .x = 55, .y = 120 },
            [3] = { .x = 30, .y = 88 },
        }}
    },
    {
        .examinationSection = 0x14A,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 15 },
            [1] = { .x = 39, .y = 32 },
            [2] = { .x = 37, .y = 82 },
            [3] = { .x = 0, .y = 84 },
        }}
    },
    {
        .examinationSection = 0x14A,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 46, .y = 36 },
            [1] = { .x = 113, .y = 39 },
            [2] = { .x = 112, .y = 96 },
            [3] = { .x = 41, .y = 91 },
        }}
    },
    {
        .examinationSection = 0x14B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 209, .y = 43 },
            [1] = { .x = 239, .y = 37 },
            [2] = { .x = 239, .y = 84 },
            [3] = { .x = 209, .y = 81 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_12[10] = {
    {
        .examinationSection = 0x14C,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 139 },
            [1] = { .x = 86, .y = 123 },
            [2] = { .x = 88, .y = 142 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x14D,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 143, .y = 142 },
            [1] = { .x = 187, .y = 99 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 151, .y = 155 },
        }}
    },
    {
        .examinationSection = 0x14D,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 203, .y = 76 },
            [1] = { .x = 239, .y = 85 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 187, .y = 99 },
        }}
    },
    {
        .examinationSection = 0x14E,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 113, .y = 61 },
            [1] = { .x = 159, .y = 75 },
            [2] = { .x = 159, .y = 112 },
            [3] = { .x = 112, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x14F,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 179, .y = 0 },
            [1] = { .x = 218, .y = 0 },
            [2] = { .x = 207, .y = 16 },
            [3] = { .x = 169, .y = 16 },
        }}
    },
    {
        .examinationSection = 0x150,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 175, .y = 28 },
            [1] = { .x = 239, .y = 16 },
            [2] = { .x = 239, .y = 55 },
            [3] = { .x = 187, .y = 49 },
        }}
    },
    {
        .examinationSection = 0x151,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 38, .y = 83 },
            [1] = { .x = 75, .y = 83 },
            [2] = { .x = 55, .y = 120 },
            [3] = { .x = 30, .y = 88 },
        }}
    },
    {
        .examinationSection = 0x152,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 15 },
            [1] = { .x = 39, .y = 32 },
            [2] = { .x = 37, .y = 82 },
            [3] = { .x = 0, .y = 84 },
        }}
    },
    {
        .examinationSection = 0x152,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 46, .y = 36 },
            [1] = { .x = 113, .y = 39 },
            [2] = { .x = 112, .y = 96 },
            [3] = { .x = 41, .y = 91 },
        }}
    },
    {
        .examinationSection = 0x14B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 209, .y = 43 },
            [1] = { .x = 239, .y = 37 },
            [2] = { .x = 239, .y = 84 },
            [3] = { .x = 209, .y = 81 },
        }}
    },
};

const struct ExaminationData gExaminationData_2_0_13[10] = {
    {
        .examinationSection = 0x153,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 35, .y = 78 },
            [1] = { .x = 64, .y = 78 },
            [2] = { .x = 64, .y = 107 },
            [3] = { .x = 35, .y = 107 },
        }}
    },
    {
        .examinationSection = 0x154,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 157, .y = 125 },
            [1] = { .x = 175, .y = 117 },
            [2] = { .x = 214, .y = 159 },
            [3] = { .x = 178, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x11B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 30, .y = 83 },
            [1] = { .x = 51, .y = 66 },
            [2] = { .x = 113, .y = 118 },
            [3] = { .x = 40, .y = 114 },
        }}
    },
    {
        .examinationSection = 0x11B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 51, .y = 67 },
            [1] = { .x = 70, .y = 44 },
            [2] = { .x = 123, .y = 70 },
            [3] = { .x = 113, .y = 119 },
        }}
    },
    {
        .examinationSection = 0x11B,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 71, .y = 116 },
            [1] = { .x = 91, .y = 117 },
            [2] = { .x = 76, .y = 121 },
            [3] = { .x = 58, .y = 141 },
        }}
    },
    {
        .examinationSection = 0x155,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 104, .y = 32 },
            [1] = { .x = 136, .y = 32 },
            [2] = { .x = 136, .y = 60 },
            [3] = { .x = 104, .y = 60 },
        }}
    },
    {
        .examinationSection = 0x157,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 161, .y = 85 },
            [1] = { .x = 205, .y = 85 },
            [2] = { .x = 205, .y = 159 },
            [3] = { .x = 161, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x157,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 205, .y = 85 },
            [1] = { .x = 239, .y = 89 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 205, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x158,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 163, .y = 34 },
            [1] = { .x = 191, .y = 34 },
            [2] = { .x = 191, .y = 66 },
            [3] = { .x = 163, .y = 66 },
        }}
    },
    {
        .examinationSection = 0x159,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 32 },
            [1] = { .x = 31, .y = 41 },
            [2] = { .x = 31, .y = 78 },
            [3] = { .x = 0, .y = 84 },
        }}
    },
};

void InvestigationSegmentSetup_2_0(struct Main *main) {
    DmaCopy16(3, gRoomData_2_0, gMain.roomData, sizeof(gRoomData_2_0));
    DmaCopy16(3, gTalkData_2_0, gTalkData, sizeof(gTalkData_2_0));
    DmaCopy16(3, gPsycheLockedTalkSections_2_0, gLoadedPsycheLockedTalkSections, sizeof(gPsycheLockedTalkSections_2_0));
    main->currentRoomId = 0;
    ResetHPBarHealthToMax();
}

void InvestigationRoomSetup_2_0(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            LOADEXAMDATA(gExaminationData_2_0_00);
            if(GetFlag(0, 0xAB)) {
                if(!GetFlag(0, 0x91)) {
                    InvestigationSetPersonAnimation(4, 0xAF8, 0xAF8);
                    InvestigationSetScriptSectionAndFlag(0x87, 0x91);
                }
                else {
                    InvestigationSetPersonAnimation(4, 0x12D0, 0x12D0);
                    PlayBGM(0xCC);
                }
            }
            break;
        }
        case 1: {
            if(GetFlag(0, 0xB5) && GetFlag(0, 0xB6)) {
                if(!GetFlag(0, 0x94)) {
                    InvestigationSetScriptSectionAndFlag(0xAD, 0x94);
                    SetRoomSeq(1, 1);
                }
                else {
                    InvestigationSetPersonAnimation(0x1D, 0x1FEC, 0x1FEC);
                    PlayBGM(0xD0);
                }
                LOADEXAMDATA(gExaminationData_2_0_01);
                break;
            }
            if(GetFlag(0, 0xAC)) {
                if(!GetFlag(0, 0x93)) {
                    InvestigationSetScriptSectionAndFlag(0xAA, 0x93);
                }
                LOADEXAMDATA(gExaminationData_2_0_02);
                break;
            }
            LoadCurrentScriptIntoRam();
            if(!GetFlag(0, 0x92)) {
                InvestigationSetScriptSectionAndFlag(0x99, 0x92);
            }
            else {
                InvestigationSetPersonAnimation(0x1D, 0, 0);
                if(GetFlag(0, 0xAB)) {
                    PlayBGM(0xD0);
                }
                else {
                    PlayBGM(0xD7);
                }
            }
            LOADEXAMDATA(gExaminationData_2_0_01);
            break;
        }
        case 8: {
            LOADEXAMDATA(gExaminationData_2_0_03);
            if(GetFlag(0, 0xB9)) {
                ChangeFlag(0, 0xC6, 0);
                if(!GetFlag(0, 0x97)) {
                    InvestigationSetScriptSectionAndFlag(0xCD, 0x97);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(GetFlag(0, 0xAE) && GetFlag(0, 0xAC)) {
                ChangeFlag(0, 0xC6, 1);
                if(!GetFlag(0, 0x96)) {
                    InvestigationSetScriptSectionAndFlag(0xC7, 0x96);
                    break;
                }
                InvestigationSetPersonAnimation(0x1E, 0, 0);
                PlayBGM(0xD1);
            }
            else {
                ChangeFlag(0, 0xC6, 0);
                if(!GetFlag(0, 0x95)) {
                    InvestigationSetScriptSectionAndFlag(0xC6, 0x95);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            break;
        }
        case 9: {
            if(GetFlag(0, 0xBA)) {
                ChangeFlag(0, 0xC8, 1);
                if(!GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0xEA, 0x9A);
                }
                else {
                    InvestigationSetPersonAnimation(0x1C, 0x10F0, 0x10F0);
                    PlayBGM(0xCD);
                }
                LOADEXAMDATA(gExaminationData_2_0_06);
            }
            else if(GetFlag(0, 0xB9)) {
                ChangeFlag(0, 0xC8, 0);
                if(!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xE9, 0x99);
                }
                LOADEXAMDATA(gExaminationData_2_0_07);
            }
            else {
                ChangeFlag(0, 0xC8, 1);
                if(!GetFlag(0, 0x98)) {
                    InvestigationSetScriptSectionAndFlag(0xDB, 0x98);
                }
                else {
                    InvestigationSetPersonAnimation(0x1C, 0, 0);
                    PlayBGM(0xCD);
                }
                LOADEXAMDATA(gExaminationData_2_0_06);
            }
            break;
        }
        case 10: {
            if(GetFlag(0, 0xBA)) {
                if(!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0xDA, 0x9C);
                }
                else {
                    PlayBGM(0x1F);
                }
                LOADEXAMDATA(gExaminationData_2_0_05);
                break;
            }
            if(!GetFlag(0, 0x9B)) {
                InvestigationSetScriptSectionAndFlag(0xCE, 0x9B);
            }
            else {
                InvestigationSetPersonAnimation(0xA, 0x185C, 0x185C);
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gExaminationData_2_0_04);
            break;
        }
        case 11: {
            LOADEXAMDATA(gExaminationData_2_0_10);
            if(GetFlag(0, 0xB9)) {
                ChangeFlag(0, 0xC7, 1);
                if(!GetFlag(0, 0x9E)) {
                    InvestigationSetScriptSectionAndFlag(0xF9, 0x9E);
                }
                else if(!GetFlag(0, 0xBA)) {
                    if(GetFlag(0, 0xC9)) {
                        InvestigationSetPersonAnimation(0x1E, 0x1364, 0x1364);
                        PlayBGM(0xDA);
                    }
                    else {
                        InvestigationSetPersonAnimation(0x1E, 0, 0);
                        PlayBGM(0xD1);
                    }
                }
            }
            else {
                ChangeFlag(0, 0xC7, 0);
                if(!GetFlag(0, 0x9D)) {
                    InvestigationSetScriptSectionAndFlag(0xF7, 0x9D);
                }
                else {
                    PlayBGM(0xD7);
                }
                LOADEXAMDATA(gExaminationData_2_0_10);
            }
            break;
        }
        case 12: {
            if(GetFlag(0, 0xB6)) {
                LOADEXAMDATA(gExaminationData_2_0_09);
            }
            else {
                LOADEXAMDATA(gExaminationData_2_0_08);
            }
            if(GetFlag(0, 0xB9)) {
                if(!GetFlag(0, 0xA0)) {
                    InvestigationSetScriptSectionAndFlag(0xF5, 0xA0);
                }
            }
            else if(!GetFlag(0, 0x9F)) {
                InvestigationSetScriptSectionAndFlag(0xF1, 0x9F);
            }
            PlayAnimation(0x19);
            break;
        }
        case 13: {
            if(GetFlag(0, 0xBB)) {
                if(!GetFlag(0, 0xA4)) {
                    InvestigationSetScriptSectionAndFlag(0x118, 0xA4);
                }
                LOADEXAMDATA(gExaminationData_2_0_11);
            }
            else if(GetFlag(0, 0xBA)) {
                if(!GetFlag(0, 0xA3)) {
                    InvestigationSetScriptSectionAndFlag(0x112, 0xA3);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                LOADEXAMDATA(gExaminationData_2_0_12);
            }
            else if(GetFlag(0, 0xAF) && GetFlag(0, 0xB0)) {
                if(!GetFlag(0, 0xA2)) {
                    InvestigationSetScriptSectionAndFlag(0x103, 0xA2);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                LOADEXAMDATA(gExaminationData_2_0_12);
            }
            else {
                if(!GetFlag(0, 0xA1)) {
                    InvestigationSetScriptSectionAndFlag(0x102, 0xA1);
                }
                LOADEXAMDATA(gExaminationData_2_0_11);
            }
            break;
        }
        case 14: {
            if(!GetFlag(0, 0xA5)) {
                InvestigationSetScriptSectionAndFlag(0x11A, 0xA5);
            }
            else {
                PlayBGM(0xD7);
            }
            LOADEXAMDATA(gExaminationData_2_0_13);
            break;
        }
    }
}

void InvestigationRoomUpdate_2_0(struct Main *main) {
    if(main->currentRoomId == 12) {
        if(!GetFlag(0, 0xB7) && GetFlag(0, 0xB6)) {
            LOADEXAMDATA(gExaminationData_2_0_09);
            ChangeFlag(0, 0xB7, 1);
        }
    }
}
