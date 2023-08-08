#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"
#include "animation.h"

const struct InvestigationPresentData gUnknown_08021C70[125] = {
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x126,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x70,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x127,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x82,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x128,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x83,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x128,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x84,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x129,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12B,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12C,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3C,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12D,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x63,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12E,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x65,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12F,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x67,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x130,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x68,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x131,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x69,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x132,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x6A,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x132,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x92,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x70,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x93,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x77,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x94,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x7E,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x95,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x7F,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x96,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x80,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x97,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x82,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x98,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x84,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x98,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x83,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x98,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x9A,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x9B,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x6D,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x9C,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3C,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x9D,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3E,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x9E,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x65,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x9F,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x67,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xA0,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x68,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xA1,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x6A,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0xA2,
        .uninterestedSection = 0x99,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x70,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB2,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x6E,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB3,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x75,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB4,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x77,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB5,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x7F,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB5,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x7E,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB5,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x78,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB6,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x79,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB7,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x7A,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB8,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x80,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xB9,
        .uninterestedSection = 0xBA,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x62,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xBB,
        .uninterestedSection = 0xC0,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x65,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xBC,
        .uninterestedSection = 0xC0,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x67,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xBD,
        .uninterestedSection = 0xC0,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x68,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xBE,
        .uninterestedSection = 0xC0,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x69,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xB7,
        .uninterestedSection = 0xC0,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x6A,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xB7,
        .uninterestedSection = 0xC0,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x6C,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xBF,
        .uninterestedSection = 0xC0,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0xFF,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xC1,
        .uninterestedSection = 0xC1,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0xFF,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xC1,
        .uninterestedSection = 0xC1,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x2,
        .evidenceId = 0xFF,
        .personId = 0x23,
        .isProfile = 0x0,
        .interestedSection = 0xC1,
        .uninterestedSection = 0xC1,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x2,
        .evidenceId = 0xFF,
        .personId = 0x23,
        .isProfile = 0x1,
        .interestedSection = 0xC1,
        .uninterestedSection = 0xC1,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x6E,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE7,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x9B,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE8,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x75,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE6,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x77,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE9,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x7F,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE9,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x7E,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE9,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x78,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xEA,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x79,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xEB,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x7A,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xEC,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x7C,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xED,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x80,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xEE,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x62,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF0,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x65,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF1,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x67,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF2,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x68,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF3,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x69,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF4,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x0,
        .evidenceId = 0x6A,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF4,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x6E,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE7,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x9B,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE8,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x75,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE6,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x77,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE9,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x7F,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE9,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x7E,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xE9,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x78,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xEA,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x79,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xEB,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x7A,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xEC,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x7C,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xED,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x80,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xEE,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x62,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF0,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x65,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF1,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x67,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF2,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x68,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF3,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x69,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF4,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x1,
        .evidenceId = 0x6A,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xF4,
        .uninterestedSection = 0xEF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x2,
        .evidenceId = 0xFF,
        .personId = 0x24,
        .isProfile = 0x0,
        .interestedSection = 0xFF,
        .uninterestedSection = 0xFF,
    },
    {
        .roomId = 0x1,
        .roomseq = 0x2,
        .evidenceId = 0xFF,
        .personId = 0x24,
        .isProfile = 0x1,
        .interestedSection = 0xFF,
        .uninterestedSection = 0xFF,
    },
    {
        .roomId = 0x13,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x27,
        .isProfile = 0x0,
        .interestedSection = 0x10F,
        .uninterestedSection = 0x10F,
    },
    {
        .roomId = 0x13,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x27,
        .isProfile = 0x1,
        .interestedSection = 0x10F,
        .uninterestedSection = 0x10F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x126,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x70,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x127,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x82,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x128,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x83,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x128,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x84,
        .personId = 0x14,
        .isProfile = 0x0,
        .interestedSection = 0x129,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12B,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12C,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x3C,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12D,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x63,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12E,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x65,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x12F,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x67,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x130,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x68,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x131,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x69,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x132,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x6A,
        .personId = 0x14,
        .isProfile = 0x1,
        .interestedSection = 0x132,
        .uninterestedSection = 0x12A,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x141,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x70,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x142,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x75,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x143,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x77,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x144,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x7E,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x144,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x9B,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x144,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x7F,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x144,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x78,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x144,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x7C,
        .personId = 0x28,
        .isProfile = 0x0,
        .interestedSection = 0x145,
        .uninterestedSection = 0x146,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0x28,
        .isProfile = 0x1,
        .interestedSection = 0x147,
        .uninterestedSection = 0x14F,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x3C,
        .personId = 0x28,
        .isProfile = 0x1,
        .interestedSection = 0x148,
        .uninterestedSection = 0x14F,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x62,
        .personId = 0x28,
        .isProfile = 0x1,
        .interestedSection = 0x149,
        .uninterestedSection = 0x14F,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x63,
        .personId = 0x28,
        .isProfile = 0x1,
        .interestedSection = 0x14A,
        .uninterestedSection = 0x14F,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x67,
        .personId = 0x28,
        .isProfile = 0x1,
        .interestedSection = 0x14B,
        .uninterestedSection = 0x14F,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x65,
        .personId = 0x28,
        .isProfile = 0x1,
        .interestedSection = 0x14C,
        .uninterestedSection = 0x14F,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x68,
        .personId = 0x28,
        .isProfile = 0x1,
        .interestedSection = 0x14D,
        .uninterestedSection = 0x14F,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0x6A,
        .personId = 0x28,
        .isProfile = 0x1,
        .interestedSection = 0x14E,
        .uninterestedSection = 0x14F,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x8,
        .isProfile = 0x0,
        .interestedSection = 0x156,
        .uninterestedSection = 0x156,
    },
    {
        .roomId = 0xF,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x8,
        .isProfile = 0x1,
        .interestedSection = 0x156,
        .uninterestedSection = 0x156,
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

const u16 gUnknown_0802224C[4] = {
    0x00AD, 0x00AE, 0x00E4, 0x00E5,
};

const struct TalkData gUnknown_08022254[22] = {
    {
        .roomId = 0x0,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x84, 0x85, 0xFF, 0xFF },
        .talkFlagId = { 0xDE, 0xDC, 0xFF, 0xFF },
        .talkSection = { 0x122, 0x123, 0x0, 0x0 }
    },
    {
        .roomId = 0x0,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x84, 0x85, 0x86, 0xFF },
        .talkFlagId = { 0xDE, 0xDC, 0xDD, 0xFF },
        .talkSection = { 0x122, 0x123, 0x124, 0x0 }
    },
    {
        .roomId = 0x0,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x84, 0x85, 0x86, 0x87 },
        .talkFlagId = { 0xDE, 0xDC, 0xDD, 0xDF },
        .talkSection = { 0x122, 0x123, 0x124, 0x125 }
    },
    {
        .roomId = 0x0,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x75, 0x7D, 0xFF, 0xFF },
        .talkFlagId = { 0xF0, 0xF1, 0xFF, 0xFF },
        .talkSection = { 0x90, 0x91, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x7E, 0x7F, 0xFF, 0xFF },
        .talkFlagId = { 0xE3, 0xE4, 0xFF, 0xFF },
        .talkSection = { 0xAD, 0xAF, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x7E, 0x7F, 0xFF, 0xFF },
        .talkFlagId = { 0xE3, 0xE4, 0xFF, 0xFF },
        .talkSection = { 0xAE, 0xAF, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x7E, 0x61, 0xFF, 0xFF },
        .talkFlagId = { 0xE8, 0xE9, 0xFF, 0xFF },
        .talkSection = { 0xB0, 0xB1, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x76, 0x66, 0xFF, 0xFF },
        .talkFlagId = { 0xE5, 0xE6, 0xFF, 0xFF },
        .talkSection = { 0xE2, 0xE3, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x76, 0x66, 0x80, 0xFF },
        .talkFlagId = { 0xE5, 0xE6, 0xE7, 0xFF },
        .talkSection = { 0xE2, 0xE3, 0xE4, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x76, 0x66, 0x80, 0xFF },
        .talkFlagId = { 0xE5, 0xE6, 0xE7, 0xFF },
        .talkSection = { 0xE2, 0xE3, 0xE5, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x76, 0x66, 0x80, 0xFF },
        .talkFlagId = { 0xE5, 0xE6, 0xEA, 0xFF },
        .talkSection = { 0xE2, 0xE3, 0xFD, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x76, 0x66, 0x80, 0x81 },
        .talkFlagId = { 0xE5, 0xE6, 0xEA, 0xEB },
        .talkSection = { 0xE2, 0xE3, 0xFD, 0xFE }
    },
    {
        .roomId = 0x13,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x82, 0x7F, 0xFF, 0xFF },
        .talkFlagId = { 0xE0, 0xE1, 0xFF, 0xFF },
        .talkSection = { 0x10C, 0x10D, 0x0, 0x0 }
    },
    {
        .roomId = 0x13,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x82, 0x7F, 0x83, 0xFF },
        .talkFlagId = { 0xE0, 0xE1, 0xE2, 0xFF },
        .talkSection = { 0x10C, 0x10D, 0x10E, 0x0 }
    },
    {
        .roomId = 0x11,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x84, 0x85, 0xFF, 0xFF },
        .talkFlagId = { 0xDE, 0xDC, 0xFF, 0xFF },
        .talkSection = { 0x122, 0x123, 0x0, 0x0 }
    },
    {
        .roomId = 0x11,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x84, 0x85, 0x86, 0xFF },
        .talkFlagId = { 0xDE, 0xDC, 0xDD, 0xFF },
        .talkSection = { 0x122, 0x123, 0x124, 0x0 }
    },
    {
        .roomId = 0x11,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x84, 0x85, 0x86, 0x87 },
        .talkFlagId = { 0xDE, 0xDC, 0xDD, 0xDF },
        .talkSection = { 0x122, 0x123, 0x124, 0x125 }
    },
    {
        .roomId = 0xF,
        .personId = 0x28,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x88, 0x76, 0x89, 0xFF },
        .talkFlagId = { 0xEC, 0xED, 0xEE, 0xFF },
        .talkSection = { 0x13D, 0x13E, 0x13F, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x28,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x88, 0x76, 0x89, 0x83 },
        .talkFlagId = { 0xEC, 0xED, 0xEE, 0xEF },
        .talkSection = { 0x13D, 0x13E, 0x13F, 0x140 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x76, 0x4A, 0xFF, 0xFF },
        .talkFlagId = { 0xF2, 0xF3, 0xFF, 0xFF },
        .talkSection = { 0x153, 0x154, 0x0, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x76, 0x4A, 0x8A, 0xFF },
        .talkFlagId = { 0xF2, 0xF3, 0xF4, 0xFF },
        .talkSection = { 0x153, 0x154, 0x155, 0x0 }
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

const u8 gUnknown_0802240C[26][5] = {
    { 0x12, 0x01, 0x14, 0x0F, 0xFF },
	{ 0x11, 0x00, 0x0F, 0xFF, 0xFF },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x42, 0x0D, 0xFF, 0xFF, 0xFF },
	{ 0x13, 0x01, 0x00, 0x14, 0xFF },
	{ 0x5A, 0x12, 0xFF, 0xFF, 0xFF },
	{ 0x5B, 0x12, 0xFF, 0xFF, 0xFF },
	{ 0x59, 0x11, 0x13, 0xFF, 0xFF },
	{ 0x58, 0x12, 0x14, 0xFF, 0xFF },
	{ 0x5D, 0x00, 0x0F, 0x13, 0x16 },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x5E, 0x14, 0xFF, 0xFF, 0xFF },
	{ 0x60, 0x18, 0xFF, 0xFF, 0xFF },
	{ 0x5F, 0x17, 0xFF, 0xFF, 0xFF },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
};

const struct ExaminationData gUnknown_08022490[5] = {
    {
        .examinationSection = 0x82,
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
        .examinationSection = 0x83,
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
        .examinationSection = 0x84,
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
        .examinationSection = 0x85,
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
        .examinationSection = 0x86,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 147, .y = 43 },
            [1] = { .x = 195, .y = 43 },
            [2] = { .x = 195, .y = 100 },
            [3] = { .x = 148, .y = 100 },
        }}
    },
};

const struct ExaminationData gUnknown_080224F4[5] = {
    {
        .examinationSection = 0x8B,
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
        .examinationSection = 0x8C,
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
        .examinationSection = 0x8D,
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
        .examinationSection = 0x8E,
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
        .examinationSection = 0x8F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 147, .y = 43 },
            [1] = { .x = 195, .y = 43 },
            [2] = { .x = 195, .y = 100 },
            [3] = { .x = 148, .y = 100 },
        }}
    },
};

const struct ExaminationData gUnknown_08022558[2] = {
    {
        .examinationSection = 0xA4,
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
        .examinationSection = 0xA5,
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

const struct ExaminationData gUnknown_08022580[2] = {
    {
        .examinationSection = 0xDF,
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
        .examinationSection = 0xE0,
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

const struct ExaminationData gUnknown_080225A8[10] = {
    {
        .examinationSection = 0x106,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 54, .y = 133 },
            [1] = { .x = 88, .y = 121 },
            [2] = { .x = 88, .y = 159 },
            [3] = { .x = 50, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x106,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 88, .y = 121 },
            [1] = { .x = 173, .y = 122 },
            [2] = { .x = 173, .y = 159 },
            [3] = { .x = 88, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x106,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 173, .y = 122 },
            [1] = { .x = 224, .y = 134 },
            [2] = { .x = 229, .y = 159 },
            [3] = { .x = 173, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x107,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 39, .y = 99 },
            [1] = { .x = 100, .y = 103 },
            [2] = { .x = 103, .y = 119 },
            [3] = { .x = 39, .y = 122 },
        }}
    },
    {
        .examinationSection = 0x107,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 108, .y = 97 },
            [1] = { .x = 129, .y = 94 },
            [2] = { .x = 131, .y = 105 },
            [3] = { .x = 108, .y = 105 },
        }}
    },
    {
        .examinationSection = 0x107,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 142, .y = 108 },
            [1] = { .x = 239, .y = 97 },
            [2] = { .x = 239, .y = 115 },
            [3] = { .x = 142, .y = 118 },
        }}
    },
    {
        .examinationSection = 0x108,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 141, .y = 62 },
            [1] = { .x = 217, .y = 57 },
            [2] = { .x = 217, .y = 101 },
            [3] = { .x = 141, .y = 101 },
        }}
    },
    {
        .examinationSection = 0x10A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 67 },
            [1] = { .x = 22, .y = 67 },
            [2] = { .x = 22, .y = 108 },
            [3] = { .x = 0, .y = 109 },
        }}
    },
    {
        .examinationSection = 0x10B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 108, .y = 0 },
            [1] = { .x = 166, .y = 0 },
            [2] = { .x = 166, .y = 36 },
            [3] = { .x = 108, .y = 36 },
        }}
    },
    {
        .examinationSection = 0x109,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 102 },
            [3] = { .x = 0, .y = 109 },
        }}
    },
};

const struct ExaminationData gUnknown_08022670[9] = {
    {
        .examinationSection = 0x114,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 101, .y = 54 },
            [1] = { .x = 122, .y = 54 },
            [2] = { .x = 122, .y = 76 },
            [3] = { .x = 101, .y = 76 },
        }}
    },
    {
        .examinationSection = 0x116,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 51, .y = 42 },
            [1] = { .x = 66, .y = 51 },
            [2] = { .x = 66, .y = 116 },
            [3] = { .x = 56, .y = 121 },
        }}
    },
    {
        .examinationSection = 0x115,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 23, .y = 0 },
            [2] = { .x = 26, .y = 87 },
            [3] = { .x = 0, .y = 76 },
        }}
    },
    {
        .examinationSection = 0x115,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 22, .y = 1 },
            [1] = { .x = 74, .y = 87 },
            [2] = { .x = 42, .y = 159 },
            [3] = { .x = 26, .y = 87 },
        }}
    },
    {
        .examinationSection = 0x115,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 90, .y = 53 },
            [1] = { .x = 113, .y = 106 },
            [2] = { .x = 101, .y = 159 },
            [3] = { .x = 42, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x111,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 94 },
            [1] = { .x = 29, .y = 94 },
            [2] = { .x = 38, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x113,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 152, .y = 59 },
            [1] = { .x = 162, .y = 54 },
            [2] = { .x = 161, .y = 122 },
            [3] = { .x = 152, .y = 113 },
        }}
    },
    {
        .examinationSection = 0x112,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 134, .y = 67 },
            [1] = { .x = 146, .y = 55 },
            [2] = { .x = 149, .y = 114 },
            [3] = { .x = 130, .y = 115 },
        }}
    },
    {
        .examinationSection = 0x112,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 166, .y = 48 },
            [1] = { .x = 182, .y = 29 },
            [2] = { .x = 181, .y = 145 },
            [3] = { .x = 153, .y = 149 },
        }}
    },
};

const struct ExaminationData gUnknown_08022724[8] = {
    {
        .examinationSection = 0x101,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 34, .y = 79 },
            [1] = { .x = 48, .y = 78 },
            [2] = { .x = 60, .y = 146 },
            [3] = { .x = 9, .y = 156 },
        }}
    },
    {
        .examinationSection = 0x101,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 134, .y = 78 },
            [1] = { .x = 148, .y = 76 },
            [2] = { .x = 152, .y = 154 },
            [3] = { .x = 121, .y = 146 },
        }}
    },
    {
        .examinationSection = 0x101,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 204, .y = 89 },
            [1] = { .x = 212, .y = 87 },
            [2] = { .x = 227, .y = 152 },
            [3] = { .x = 198, .y = 148 },
        }}
    },
    {
        .examinationSection = 0x101,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 68, .y = 95 },
            [1] = { .x = 74, .y = 95 },
            [2] = { .x = 74, .y = 109 },
            [3] = { .x = 62, .y = 109 },
        }}
    },
    {
        .examinationSection = 0x101,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 169, .y = 95 },
            [1] = { .x = 177, .y = 95 },
            [2] = { .x = 177, .y = 109 },
            [3] = { .x = 169, .y = 109 },
        }}
    },
    {
        .examinationSection = 0x102,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 68 },
            [3] = { .x = 0, .y = 68 },
        }}
    },
    {
        .examinationSection = 0x103,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 93, .y = 74 },
            [1] = { .x = 146, .y = 74 },
            [2] = { .x = 146, .y = 109 },
            [3] = { .x = 93, .y = 109 },
        }}
    },
    {
        .examinationSection = 0x104,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 49, .y = 109 },
            [1] = { .x = 191, .y = 109 },
            [2] = { .x = 194, .y = 141 },
            [3] = { .x = 46, .y = 142 },
        }}
    },
};

const struct ExaminationData gUnknown_080227C4[19] = {
    {
        .examinationSection = 0x11E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 255, .y = 9 },
            [1] = { .x = 371, .y = 9 },
            [2] = { .x = 371, .y = 77 },
            [3] = { .x = 255, .y = 77 },
        }}
    },
    {
        .examinationSection = 0x11F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 289, .y = 133 },
            [1] = { .x = 363, .y = 133 },
            [2] = { .x = 380, .y = 159 },
            [3] = { .x = 277, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x120,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 427, .y = 112 },
            [1] = { .x = 449, .y = 111 },
            [2] = { .x = 449, .y = 121 },
            [3] = { .x = 427, .y = 124 },
        }}
    },
    {
        .examinationSection = 0x120,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 414, .y = 122 },
            [1] = { .x = 427, .y = 112 },
            [2] = { .x = 427, .y = 124 },
            [3] = { .x = 415, .y = 126 },
        }}
    },
    {
        .examinationSection = 0x118,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 27, .y = 50 },
            [1] = { .x = 52, .y = 50 },
            [2] = { .x = 52, .y = 94 },
            [3] = { .x = 27, .y = 94 },
        }}
    },
    {
        .examinationSection = 0x11B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 178, .y = 113 },
            [1] = { .x = 208, .y = 104 },
            [2] = { .x = 209, .y = 126 },
            [3] = { .x = 181, .y = 140 },
        }}
    },
    {
        .examinationSection = 0x11B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 185, .y = 138 },
            [1] = { .x = 209, .y = 126 },
            [2] = { .x = 207, .y = 156 },
            [3] = { .x = 185, .y = 147 },
        }}
    },
    {
        .examinationSection = 0x11B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 209, .y = 126 },
            [1] = { .x = 231, .y = 132 },
            [2] = { .x = 231, .y = 141 },
            [3] = { .x = 207, .y = 156 },
        }}
    },
    {
        .examinationSection = 0x119,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 34, .y = 76 },
            [1] = { .x = 69, .y = 116 },
            [2] = { .x = 20, .y = 124 },
            [3] = { .x = 2, .y = 96 },
        }}
    },
    {
        .examinationSection = 0x119,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 52, .y = 66 },
            [1] = { .x = 82, .y = 100 },
            [2] = { .x = 69, .y = 116 },
            [3] = { .x = 52, .y = 96 },
        }}
    },
    {
        .examinationSection = 0x119,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 52, .y = 39 },
            [1] = { .x = 92, .y = 58 },
            [2] = { .x = 82, .y = 100 },
            [3] = { .x = 52, .y = 66 },
        }}
    },
    {
        .examinationSection = 0x119,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 76, .y = 10 },
            [1] = { .x = 90, .y = 17 },
            [2] = { .x = 92, .y = 58 },
            [3] = { .x = 52, .y = 39 },
        }}
    },
    {
        .examinationSection = 0x119,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 92, .y = 58 },
            [1] = { .x = 189, .y = 57 },
            [2] = { .x = 188, .y = 100 },
            [3] = { .x = 82, .y = 100 },
        }}
    },
    {
        .examinationSection = 0x119,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 189, .y = 57 },
            [1] = { .x = 216, .y = 50 },
            [2] = { .x = 223, .y = 83 },
            [3] = { .x = 188, .y = 100 },
        }}
    },
    {
        .examinationSection = 0x119,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 223, .y = 83 },
            [1] = { .x = 231, .y = 126 },
            [2] = { .x = 214, .y = 125 },
            [3] = { .x = 188, .y = 100 },
        }}
    },
    {
        .examinationSection = 0x11C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 464, .y = 97 },
            [1] = { .x = 477, .y = 114 },
            [2] = { .x = 461, .y = 144 },
            [3] = { .x = 455, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x11C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 424, .y = 130 },
            [1] = { .x = 460, .y = 121 },
            [2] = { .x = 455, .y = 144 },
            [3] = { .x = 424, .y = 140 },
        }}
    },
    {
        .examinationSection = 0x11D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 461, .y = 65 },
            [1] = { .x = 472, .y = 65 },
            [2] = { .x = 472, .y = 89 },
            [3] = { .x = 461, .y = 89 },
        }}
    },
    {
        .examinationSection = 0x11A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 99, .y = 106 },
            [1] = { .x = 175, .y = 106 },
            [2] = { .x = 180, .y = 137 },
            [3] = { .x = 73, .y = 137 },
        }}
    },
};

const struct ExaminationData gUnknown_08022940[7] = {
    {
        .examinationSection = 0x135,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 149, .y = 35 },
            [1] = { .x = 171, .y = 35 },
            [2] = { .x = 171, .y = 54 },
            [3] = { .x = 149, .y = 54 },
        }}
    },
    {
        .examinationSection = 0x136,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 44 },
            [1] = { .x = 20, .y = 44 },
            [2] = { .x = 20, .y = 94 },
            [3] = { .x = 0, .y = 94 },
        }}
    },
    {
        .examinationSection = 0x137,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 110, .y = 37 },
            [1] = { .x = 132, .y = 37 },
            [2] = { .x = 132, .y = 61 },
            [3] = { .x = 110, .y = 61 },
        }}
    },
    {
        .examinationSection = 0x138,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 107 },
            [1] = { .x = 72, .y = 55 },
            [2] = { .x = 79, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x138,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 72, .y = 55 },
            [1] = { .x = 109, .y = 55 },
            [2] = { .x = 108, .y = 112 },
            [3] = { .x = 79, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x138,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 141, .y = 70 },
            [1] = { .x = 239, .y = 71 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 171, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x139,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 115, .y = 17 },
            [1] = { .x = 131, .y = 17 },
            [2] = { .x = 131, .y = 37 },
            [3] = { .x = 115, .y = 37 },
        }}
    },
};

const struct ExaminationData gUnknown_080229CC[5] = {
    {
        .examinationSection = 0x158,
        .unk2 = 0xFE,
        .unk3 = 0x1D,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 0, .y = 0 },
            [2] = { .x = 0, .y = 0 },
            [3] = { .x = 0, .y = 0 },
        }}
    },
    {
        .examinationSection = 0x159,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 58, .y = 75 },
            [1] = { .x = 95, .y = 83 },
            [2] = { .x = 79, .y = 159 },
            [3] = { .x = 9, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x15A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 144, .y = 42 },
            [1] = { .x = 179, .y = 27 },
            [2] = { .x = 179, .y = 159 },
            [3] = { .x = 144, .y = 123 },
        }}
    },
    {
        .examinationSection = 0x15A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 179, .y = 27 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 179, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x15B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 96, .y = 27 },
            [1] = { .x = 134, .y = 27 },
            [2] = { .x = 134, .y = 95 },
            [3] = { .x = 96, .y = 95 },
        }}
    },
};

const struct ExaminationData gUnknown_08022A30[7] = {
    {
        .examinationSection = 0x165,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 66, .y = 0 },
            [1] = { .x = 182, .y = 0 },
            [2] = { .x = 170, .y = 81 },
            [3] = { .x = 66, .y = 54 },
        }}
    },
    {
        .examinationSection = 0x166,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 27, .y = 0 },
            [2] = { .x = 27, .y = 118 },
            [3] = { .x = 0, .y = 137 },
        }}
    },
    {
        .examinationSection = 0x167,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 75, .y = 86 },
            [1] = { .x = 176, .y = 86 },
            [2] = { .x = 154, .y = 159 },
            [3] = { .x = 81, .y = 145 },
        }}
    },
    {
        .examinationSection = 0x167,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 175, .y = 86 },
            [1] = { .x = 221, .y = 104 },
            [2] = { .x = 213, .y = 159 },
            [3] = { .x = 154, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x168,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 210, .y = 19 },
            [1] = { .x = 239, .y = 3 },
            [2] = { .x = 239, .y = 46 },
            [3] = { .x = 213, .y = 51 },
        }}
    },
    {
        .examinationSection = 0x169,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 221, .y = 51 },
            [1] = { .x = 239, .y = 48 },
            [2] = { .x = 239, .y = 111 },
            [3] = { .x = 221, .y = 102 },
        }}
    },
    {
        .examinationSection = 0x16A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 201, .y = 41 },
            [1] = { .x = 211, .y = 39 },
            [2] = { .x = 211, .y = 84 },
            [3] = { .x = 201, .y = 83 },
        }}
    },
};

const struct ExaminationData gUnknown_08022ABC[8] = {
    {
        .examinationSection = 0x16C,
        .unk2 = 0xFE,
        .unk3 = 0x1F,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 0, .y = 0 },
            [2] = { .x = 0, .y = 0 },
            [3] = { .x = 0, .y = 0 },
        }}
    },
    {
        .examinationSection = 0x16D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 66, .y = 0 },
            [1] = { .x = 182, .y = 0 },
            [2] = { .x = 170, .y = 81 },
            [3] = { .x = 66, .y = 54 },
        }}
    },
    {
        .examinationSection = 0x16E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 27, .y = 0 },
            [2] = { .x = 27, .y = 118 },
            [3] = { .x = 0, .y = 137 },
        }}
    },
    {
        .examinationSection = 0x16F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 75, .y = 86 },
            [1] = { .x = 176, .y = 86 },
            [2] = { .x = 154, .y = 159 },
            [3] = { .x = 81, .y = 145 },
        }}
    },
    {
        .examinationSection = 0x16F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 175, .y = 86 },
            [1] = { .x = 221, .y = 104 },
            [2] = { .x = 213, .y = 159 },
            [3] = { .x = 154, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x170,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 210, .y = 19 },
            [1] = { .x = 239, .y = 3 },
            [2] = { .x = 239, .y = 41 },
            [3] = { .x = 217, .y = 48 },
        }}
    },
    {
        .examinationSection = 0x171,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 221, .y = 51 },
            [1] = { .x = 239, .y = 48 },
            [2] = { .x = 239, .y = 111 },
            [3] = { .x = 221, .y = 102 },
        }}
    },
    {
        .examinationSection = 0x172,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 201, .y = 41 },
            [1] = { .x = 211, .y = 39 },
            [2] = { .x = 211, .y = 84 },
            [3] = { .x = 201, .y = 83 },
        }}
    },
};

const struct ExaminationData gUnknown_08022B5C[8] = {
    {
        .examinationSection = 0x15D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 9 },
            [1] = { .x = 42, .y = 17 },
            [2] = { .x = 42, .y = 102 },
            [3] = { .x = 0, .y = 139 },
        }}
    },
    {
        .examinationSection = 0x15E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 42, .y = 10 },
            [1] = { .x = 76, .y = 10 },
            [2] = { .x = 76, .y = 109 },
            [3] = { .x = 42, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x163,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 112, .y = 94 },
            [1] = { .x = 140, .y = 94 },
            [2] = { .x = 141, .y = 112 },
            [3] = { .x = 112, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x15F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 76, .y = 52 },
            [1] = { .x = 138, .y = 52 },
            [2] = { .x = 138, .y = 102 },
            [3] = { .x = 76, .y = 102 },
        }}
    },
    {
        .examinationSection = 0x160,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 141, .y = 25 },
            [1] = { .x = 179, .y = 25 },
            [2] = { .x = 179, .y = 92 },
            [3] = { .x = 141, .y = 92 },
        }}
    },
    {
        .examinationSection = 0x162,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 158, .y = 79 },
            [1] = { .x = 198, .y = 65 },
            [2] = { .x = 177, .y = 143 },
            [3] = { .x = 155, .y = 105 },
        }}
    },
    {
        .examinationSection = 0x162,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 197, .y = 65 },
            [1] = { .x = 239, .y = 79 },
            [2] = { .x = 239, .y = 143 },
            [3] = { .x = 177, .y = 143 },
        }}
    },
    {
        .examinationSection = 0x161,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 188, .y = 14 },
            [1] = { .x = 239, .y = 1 },
            [2] = { .x = 239, .y = 93 },
            [3] = { .x = 188, .y = 80 },
        }}
    },
};

void InvestigationSegmentSetup_3_6(struct Main *main) {
    DmaCopy16(3, gUnknown_0802240C, gMain.roomData, sizeof(gUnknown_0802240C));
    DmaCopy16(3, gUnknown_08022254, gTalkData, sizeof(gUnknown_08022254));
    DmaCopy16(3, gUnknown_0802224C, gUnknown_03003B70, sizeof(gUnknown_0802224C));
    main->currentRoomId = 17;
}

void InvestigationRoomSetup_3_6(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            ChangeFlag(0, 0xB4, 0);
            if(GetFlag(0, 0x94) && GetFlag(0, 0x95)) {
                if(!GetFlag(0, 0x9B)) {
                    if(!GetFlag(0, 0xB8)) {
                        InvestigationSetScriptSectionAndFlag(0x87, 0x9B);
                    }
                    else {
                        InvestigationSetScriptSectionAndFlag(0x88, 0x9B);
                    }
                }
                else {
                    InvestigationSetPersonAnimation(0xA, 0, 0);
                    PlayBGM(0xC);
                }
                LOADEXAMDATA(gUnknown_080224F4);
            }
            else {
                if(!GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0x81, 0x9A);
                }
                else {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                    PlayBGM(0xD7);
                }
                LOADEXAMDATA(gUnknown_08022490);
            }
            break;
        }
        case 1: {
            if(GetFlag(0, 0x99)) {
                if(!GetFlag(0, 0x9E)) {
                    InvestigationSetScriptSectionAndFlag(0xFC, 0x9E);
                }
                else {
                    InvestigationSetPersonAnimation(0x24, 0x3CB4, 0x3CB4);
                    if(GetFlag(0, 0xBF)) {
                        PlayBGM(0xCB);
                    }
                    else if(!GetFlag(0, 0xBE)) {
                        PlayBGM(0xD6);
                    }
                }
                LOADEXAMDATA(gUnknown_08022580);
            }
            else if(GetFlag(0, 0x90)) {
                if(!GetFlag(0, 0x9D)) {
                    InvestigationSetScriptSectionAndFlag(0xA6, 0x9D);
                }
                else if(GetFlag(0, 0xAA) && !GetFlag(0, 0xBC) && !GetFlag(0, 0xBD)) {
                    InvestigationSetScriptSectionAndFlag(0xAB, 0xBD);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0xA7, 0xFF);
                }
                LOADEXAMDATA(gUnknown_08022580);
            }
            else {
                if(!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0xA3, 0x9C);
                }
                LOADEXAMDATA(gUnknown_08022558);
            }
            break;
        }
        case 19: {
            if(!GetFlag(0, 0x9F)) {
                InvestigationSetScriptSectionAndFlag(0x105, 0x9F);
            }
            else {
                InvestigationSetPersonAnimation(0x27, 0, 0);
                PlayBGM(0xDA);
            }
            LOADEXAMDATA(gUnknown_080225A8);
            break;
        }
        case 18: {
            LoadCurrentScriptIntoRam();
            if(!GetFlag(0, 0xA1)) {
                InvestigationSetScriptSectionAndFlag(0x110, 0xA1);
            }
            LOADEXAMDATA(gUnknown_08022670);
            break;
        }
        case 20: {
            if(!GetFlag(0, 0xA0)) {
                InvestigationSetScriptSectionAndFlag(0x100, 0xA0);
            }
            LOADEXAMDATA(gUnknown_08022724);
            break;
        }
        case 17: {
            ChangeFlag(0, 0xB4, 1);
            if(GetFlag(0, 0xA2)) {
                InvestigationSetPersonAnimation(0x14, 0, 0);
                PlayBGM(0xC);
            }
            LOADEXAMDATA(gUnknown_080227C4);
            break;
        }
        case 15: {
            LOADEXAMDATA(gUnknown_08022940);
            if(GetFlag(0, 0x96) && GetFlag(0, 0xBC)) {
                if(!GetFlag(0, 0xA5)) {
                    InvestigationSetPersonAnimation(8, 0x5804, 0x5804);
                    InvestigationSetScriptSectionAndFlag(0x150, 0xA5);
                }
                else if(!GetFlag(0, 0x97)) {
                    InvestigationSetPersonAnimation(8, 0x3C68, 0x3C68);
                    PlayBGM(0xC);
                }
                gExaminationData[1].examinationSection=0x13C;
            }
            else if(GetFlag(0, 0x91) && GetFlag(0, 0x92) && GetFlag(0, 0x93)) {
                if(!GetFlag(0, 0xA4)) {
                    InvestigationSetScriptSectionAndFlag(0x13A, 0xA4);
                }
                else if(GetFlag(0, 0x94) && !GetFlag(0, 0x9B) && GetFlag(0, 0x95) && !GetFlag(0, 0xB8)) {
                    InvestigationSetScriptSectionAndFlag(0x13B, 0xB8);
                }
                else {
                    InvestigationSetPersonAnimation(0x28, 0, 0);
                    PlayBGM(0xD1);
                }
                gExaminationData[1].examinationSection=0x13C;
            }
            else if(!GetFlag(0, 0xA3)) {
                InvestigationSetScriptSectionAndFlag(0x133, 0xA3);
            }
            break;
        }
        case 23: {
            if(!GetFlag(0, 0x99)) {
                PlayAnimation(0x1D);
            }
            if(!GetFlag(0, 0xA8)) {
                sub_8004458(0x157, 0xA8);
            }
            LOADEXAMDATA(gUnknown_080229CC);
            break;
        }
        case 22: {
            if(GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0x98)) {
                    PlayAnimation(0x1F);
                }
                if(!GetFlag(0, 0xA7)) {
                    InvestigationSetScriptSectionAndFlag(0x16B, 0xA7);
                }
                else if(!GetFlag(0, 0x99)) {
                    PlayBGM(0xEC);
                }
                LOADEXAMDATA(gUnknown_08022ABC);
            }
            else {
                if(!GetFlag(0, 0xA6)) {
                    InvestigationSetScriptSectionAndFlag(0x164, 0xA6);
                }
                else {
                    PlayBGM(0xEE);
                }
                LOADEXAMDATA(gUnknown_08022A30);
            }
            break;
        }
        case 24: {
            if(!GetFlag(0, 0xA9)) {
                InvestigationSetScriptSectionAndFlag(0x15C, 0xA9);
            }
            LOADEXAMDATA(gUnknown_08022B5C);
            break;
        }
    }
}

void InvestigationRoomUpdate_3_6(struct Main *main) {
}
