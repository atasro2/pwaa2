#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"

// this should be a Struct811DC98, but its size is off by 4
const u8 gUnknown_0802039C[852] = {
    0x00, 0xFF, 0x05, 0x14, 0x00, 0x00, 0x88, 0x00, 0x89, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x3C, 0x14, 0x01, 0x00, 0x8A, 0x00, 0x89, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x16, 0x14, 0x01, 0x00, 0x8B, 0x00, 0x89, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x02, 0x14, 0x01, 0x00, 0x8C, 0x00, 0x89, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x62, 0x14, 0x01, 0x00, 0x8D, 0x00, 0x89, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x19, 0x00, 0x00, 0x52, 0x01, 0x52, 0x01, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x19, 0x01, 0x00, 0x52, 0x01, 0x52, 0x01, 0x00, 0x00, 0x01, 0xFF, 0x6E, 0x23, 0x00, 0x00, 0x94, 0x00, 0x93, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x70, 0x23, 0x00, 0x00, 0x95, 0x00, 0x93, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x7C, 0x23, 0x00, 0x00, 0x96, 0x00, 0x93, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x62, 0x23, 0x01, 0x00, 0x97, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x65, 0x23, 0x01, 0x00, 0x98, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x67, 0x23, 0x01, 0x00, 0x9B, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x68, 0x23, 0x01, 0x00, 0x99, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x01, 0xFF, 0x69, 0x23, 0x01, 0x00, 0x9A, 0x00, 0x9C, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x05, 0x28, 0x00, 0x00, 0xB8, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x6E, 0x28, 0x00, 0x00, 0xB9, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x70, 0x28, 0x00, 0x00, 0xBA, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x74, 0x28, 0x00, 0x00, 0xBB, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x16, 0x28, 0x01, 0x00, 0xBD, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x3C, 0x28, 0x01, 0x00, 0xBE, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x62, 0x28, 0x01, 0x00, 0xBF, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x63, 0x28, 0x01, 0x00, 0xC0, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x65, 0x28, 0x01, 0x00, 0xC1, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x67, 0x28, 0x01, 0x00, 0xC2, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x13, 0xFF, 0x68, 0x28, 0x01, 0x00, 0xC3, 0x00, 0xC4, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x6E, 0x18, 0x00, 0x00, 0xD1, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x71, 0x18, 0x00, 0x00, 0xD2, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x72, 0x18, 0x00, 0x00, 0xD2, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x16, 0x18, 0x01, 0x00, 0xD4, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x3C, 0x18, 0x01, 0x00, 0xD5, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x3E, 0x18, 0x01, 0x00, 0xD6, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x63, 0x18, 0x01, 0x00, 0xD7, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x65, 0x18, 0x01, 0x00, 0xD8, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x67, 0x18, 0x01, 0x00, 0xD8, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x12, 0xFF, 0x64, 0x18, 0x01, 0x00, 0xD9, 0x00, 0xD3, 0x00, 0x00, 0x00, 0x14, 0xFF, 0xFF, 0x27, 0x00, 0x00, 0xA8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x14, 0xFF, 0xFF, 0x27, 0x01, 0x00, 0xA8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x10, 0xFF, 0x6E, 0x24, 0x00, 0x00, 0xF2, 0x00, 0xF3, 0x00, 0x00, 0x00, 0x10, 0xFF, 0x62, 0x24, 0x01, 0x00, 0xF4, 0x00, 0xF3, 0x00, 0x00, 0x00, 0x10, 0xFF, 0x65, 0x24, 0x01, 0x00, 0xF5, 0x00, 0xF3, 0x00, 0x00, 0x00, 0x10, 0xFF, 0x67, 0x24, 0x01, 0x00, 0xF6, 0x00, 0xF3, 0x00, 0x00, 0x00, 0x10, 0xFF, 0x68, 0x24, 0x01, 0x00, 0xF7, 0x00, 0xF3, 0x00, 0x00, 0x00, 0x11, 0xFF, 0x74, 0x0A, 0x00, 0x00, 0x17, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x76, 0x0A, 0x00, 0x00, 0x18, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x70, 0x0A, 0x00, 0x00, 0x19, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x78, 0x0A, 0x00, 0x00, 0x1A, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x7C, 0x0A, 0x00, 0x00, 0x1B, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x02, 0x0A, 0x01, 0x00, 0x1C, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x16, 0x0A, 0x01, 0x00, 0x1D, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x3C, 0x0A, 0x01, 0x00, 0x1E, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x3E, 0x0A, 0x01, 0x00, 0x1F, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x63, 0x0A, 0x01, 0x00, 0x20, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x64, 0x0A, 0x01, 0x00, 0x21, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x65, 0x0A, 0x01, 0x00, 0x22, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x67, 0x0A, 0x01, 0x00, 0x23, 0x01, 0x25, 0x01, 0x00, 0x00, 0x11, 0xFF, 0x68, 0x0A, 0x01, 0x00, 0x24, 0x01, 0x25, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x7C, 0x0A, 0x00, 0x00, 0x33, 0x01, 0x3A, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x74, 0x0A, 0x00, 0x00, 0x34, 0x01, 0x3A, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x76, 0x0A, 0x00, 0x00, 0x35, 0x01, 0x3A, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x78, 0x0A, 0x00, 0x00, 0x36, 0x01, 0x3A, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x65, 0x0A, 0x01, 0x00, 0x37, 0x01, 0x3A, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x67, 0x0A, 0x01, 0x00, 0x38, 0x01, 0x3A, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x68, 0x0A, 0x01, 0x00, 0x39, 0x01, 0x3A, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x79, 0x08, 0x00, 0x00, 0x42, 0x01, 0x41, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x7A, 0x08, 0x00, 0x00, 0x43, 0x01, 0x41, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x65, 0x08, 0x01, 0x00, 0x44, 0x01, 0x48, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x67, 0x08, 0x01, 0x00, 0x45, 0x01, 0x48, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x68, 0x08, 0x01, 0x00, 0x46, 0x01, 0x48, 0x01, 0x00, 0x00, 0x0F, 0xFF, 0x69, 0x08, 0x01, 0x00, 0x47, 0x01, 0x48, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00,
};

const u16 gUnknown_080206F0[6] = {
    0x00A4, 0x00A5, 0x00CE, 0x00CF, 0x00EF, 0x00F0,
};

const struct TalkData gUnknown_080206FC[30] = {
    {
        .roomId = 0x0,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x49, 0x58, 0xFF, 0xFF },
        .talkFlagId = { 0xA3, 0xA4, 0xFF, 0xFF },
        .talkSection = { 0x86, 0x87, 0x0, 0x0 }
    },
    {
        .roomId = 0x0,
        .personId = 0x19,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x4A, 0x59, 0xFF, 0xFF },
        .talkFlagId = { 0xC1, 0xC2, 0xFF, 0xFF },
        .talkSection = { 0x150, 0x151, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x4C, 0x4D, 0xFF, 0xFF },
        .talkFlagId = { 0xA5, 0xA6, 0xFF, 0xFF },
        .talkSection = { 0x91, 0x92, 0x0, 0x0 }
    },
    {
        .roomId = 0x13,
        .personId = 0x28,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x50, 0x51, 0xFF, 0xFF },
        .talkFlagId = { 0xB4, 0xB5, 0xFF, 0xFF },
        .talkSection = { 0xB5, 0xB6, 0x0, 0x0 }
    },
    {
        .roomId = 0x13,
        .personId = 0x28,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x50, 0x51, 0x5A, 0xFF },
        .talkFlagId = { 0xB4, 0xB5, 0xB6, 0xFF },
        .talkSection = { 0xB5, 0xB6, 0xB7, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x4D, 0x4C, 0xFF, 0xFF },
        .talkFlagId = { 0xA7, 0xA8, 0xFF, 0xFF },
        .talkSection = { 0xA2, 0xA3, 0x0, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4D, 0x4C, 0x5B, 0xFF },
        .talkFlagId = { 0xA7, 0xA8, 0xA9, 0xFF },
        .talkSection = { 0xA2, 0xA3, 0xA4, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4D, 0x4C, 0x5B, 0xFF },
        .talkFlagId = { 0xA7, 0xA8, 0xA9, 0xFF },
        .talkSection = { 0xA2, 0xA3, 0xA5, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4D, 0x4C, 0x5B, 0xFF },
        .talkFlagId = { 0xA7, 0xA8, 0xAA, 0xFF },
        .talkSection = { 0xA2, 0xA3, 0xA6, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4D, 0x4C, 0x5B, 0x5C },
        .talkFlagId = { 0xA7, 0xA8, 0xAA, 0xAB },
        .talkSection = { 0xA2, 0xA3, 0xA6, 0xA7 }
    },
    {
        .roomId = 0x12,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x5D, 0x4C, 0xFF, 0xFF },
        .talkFlagId = { 0xAC, 0xAD, 0xFF, 0xFF },
        .talkSection = { 0xCC, 0xCD, 0x0, 0x0 }
    },
    {
        .roomId = 0x12,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x5D, 0x4C, 0x5E, 0xFF },
        .talkFlagId = { 0xAC, 0xAD, 0xAE, 0xFF },
        .talkSection = { 0xCC, 0xCD, 0xCE, 0x0 }
    },
    {
        .roomId = 0x12,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x5D, 0x4C, 0x5E, 0xFF },
        .talkFlagId = { 0xAC, 0xAD, 0xAE, 0xFF },
        .talkSection = { 0xCC, 0xCD, 0xCF, 0x0 }
    },
    {
        .roomId = 0x12,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x5D, 0x4C, 0x5E, 0xFF },
        .talkFlagId = { 0xAC, 0xAD, 0xAF, 0xFF },
        .talkSection = { 0xCC, 0xCD, 0xD0, 0x0 }
    },
    {
        .roomId = 0x10,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x5F, 0x60, 0xFF, 0xFF },
        .talkFlagId = { 0xB0, 0xB1, 0xFF, 0xFF },
        .talkSection = { 0xED, 0xEE, 0x0, 0x0 }
    },
    {
        .roomId = 0x10,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x5F, 0x60, 0x61, 0xFF },
        .talkFlagId = { 0xB0, 0xB1, 0xB2, 0xFF },
        .talkSection = { 0xED, 0xEE, 0xEF, 0x0 }
    },
    {
        .roomId = 0x10,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x5F, 0x60, 0x61, 0xFF },
        .talkFlagId = { 0xB0, 0xB1, 0xB2, 0xFF },
        .talkSection = { 0xED, 0xEE, 0xF0, 0x0 }
    },
    {
        .roomId = 0x10,
        .personId = 0x24,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x5F, 0x60, 0x61, 0xFF },
        .talkFlagId = { 0xB0, 0xB1, 0xB3, 0xFF },
        .talkSection = { 0xED, 0xEE, 0xF1, 0x0 }
    },
    {
        .roomId = 0x11,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x62, 0x63, 0xFF, 0xFF },
        .talkFlagId = { 0xB7, 0xB8, 0xFF, 0xFF },
        .talkSection = { 0x115, 0x116, 0x0, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x64, 0x65, 0xFF, 0xFF },
        .talkFlagId = { 0xB9, 0xBA, 0xFF, 0xFF },
        .talkSection = { 0x130, 0x131, 0x0, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x64, 0x65, 0x66, 0xFF },
        .talkFlagId = { 0xB9, 0xBA, 0xBB, 0xFF },
        .talkSection = { 0x130, 0x131, 0x132, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x68, 0x67, 0xFF, 0xFF },
        .talkFlagId = { 0xBD, 0xBC, 0xFF, 0xFF },
        .talkSection = { 0x13E, 0x13C, 0x0, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x68, 0x67, 0x6A, 0xFF },
        .talkFlagId = { 0xBD, 0xBC, 0xBF, 0xFF },
        .talkSection = { 0x13E, 0x13C, 0x13F, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x6B, 0x67, 0xFF, 0xFF },
        .talkFlagId = { 0xC0, 0xBC, 0xFF, 0xFF },
        .talkSection = { 0x140, 0x13C, 0x0, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x6B, 0x67, 0x6A, 0xFF },
        .talkFlagId = { 0xC0, 0xBC, 0xBF, 0xFF },
        .talkSection = { 0x140, 0x13C, 0x13F, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x68, 0x67, 0x69, 0xFF },
        .talkFlagId = { 0xBD, 0xBC, 0xBE, 0xFF },
        .talkSection = { 0x13E, 0x13C, 0x13D, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x68, 0x67, 0x69, 0x6A },
        .talkFlagId = { 0xBD, 0xBC, 0xBE, 0xBF },
        .talkSection = { 0x13E, 0x13C, 0x13D, 0x13F }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x6B, 0x67, 0x69, 0xFF },
        .talkFlagId = { 0xC0, 0xBC, 0xBE, 0xFF },
        .talkSection = { 0x140, 0x13C, 0x13D, 0x0 }
    },
    {
        .roomId = 0xF,
        .personId = 0x8,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x6B, 0x67, 0x69, 0x6A },
        .talkFlagId = { 0xC0, 0xBC, 0xBE, 0xBF },
        .talkSection = { 0x140, 0x13C, 0x13D, 0x13F }
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

const u8 gUnknown_08020954[16][8] = {
    { 0x12, 0x01, 0x14, 0xFF, 0xFF, 0x11, 0x00, 0xFF },
    { 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x13, 0x14, 0x00, 0x01, 0xFF },
    { 0x5A, 0x12, 0xFF, 0xFF, 0xFF, 0x5B, 0x12, 0xFF },
    { 0xFF, 0xFF, 0x59, 0x10, 0x11, 0x13, 0xFF, 0x58 },
    { 0x12, 0x14, 0xFF, 0xFF, 0x5D, 0x13, 0x00, 0xFF },
    { 0xFF, 0x11, 0xFF, 0xFF, 0xFF, 0xFF, 0x5E, 0xFF },
    { 0xFF, 0xFF, 0xFF, 0x80, 0xFF, 0xFF, 0xFF, 0xFF },
    { 0x5F, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00 },
};

const struct ExaminationData gUnknown_080209D4[5] = {
    {
        .examinationSection = 0x81,
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
        .examinationSection = 0x82,
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
        .examinationSection = 0x83,
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
        .examinationSection = 0x84,
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
        .examinationSection = 0x85,
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

const struct ExaminationData gUnknown_08020A38[2] = {
    {
        .examinationSection = 0x8F,
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
        .examinationSection = 0x90,
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

const struct ExaminationData gUnknown_08020A60[10] = {
    {
        .examinationSection = 0xAE,
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
        .examinationSection = 0xAE,
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
        .examinationSection = 0xAE,
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
        .examinationSection = 0xAF,
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
        .examinationSection = 0xAF,
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
        .examinationSection = 0xAF,
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
        .examinationSection = 0xB0,
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
        .examinationSection = 0xB2,
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
        .examinationSection = 0xB3,
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
        .examinationSection = 0xB1,
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

const struct ExaminationData gUnknown_08020B28[9] = {
    {
        .examinationSection = 0xC9,
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
        .examinationSection = 0xCB,
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
        .examinationSection = 0xCA,
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
        .examinationSection = 0xCA,
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
        .examinationSection = 0xCA,
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
        .examinationSection = 0xC6,
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
        .examinationSection = 0xC8,
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
        .examinationSection = 0xC7,
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
        .examinationSection = 0xC7,
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

const struct ExaminationData gUnknown_08020BDC[9] = {
    {
        .examinationSection = 0xC9,
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
        .examinationSection = 0xE4,
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
        .examinationSection = 0xE3,
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
        .examinationSection = 0xE3,
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
        .examinationSection = 0xE3,
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
        .examinationSection = 0xE2,
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
        .examinationSection = 0xC8,
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
        .examinationSection = 0xC7,
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
        .examinationSection = 0xC7,
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

const struct ExaminationData gUnknown_08020C90[8] = {
    {
        .examinationSection = 0x9E,
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
        .examinationSection = 0x9E,
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
        .examinationSection = 0x9E,
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
        .examinationSection = 0x9E,
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
        .examinationSection = 0x9E,
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
        .examinationSection = 0x9F,
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
        .examinationSection = 0xA0,
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
        .examinationSection = 0xA1,
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

const struct ExaminationData gUnknown_08020D30[12] = {
    {
        .examinationSection = 0xEA,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 169, .y = 121 },
            [1] = { .x = 209, .y = 124 },
            [2] = { .x = 216, .y = 142 },
            [3] = { .x = 170, .y = 138 },
        }}
    },
    {
        .examinationSection = 0xE8,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 106, .y = 105 },
            [1] = { .x = 166, .y = 105 },
            [2] = { .x = 110, .y = 146 },
            [3] = { .x = 104, .y = 121 },
        }}
    },
    {
        .examinationSection = 0xE8,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 165, .y = 105 },
            [1] = { .x = 226, .y = 127 },
            [2] = { .x = 157, .y = 159 },
            [3] = { .x = 111, .y = 145 },
        }}
    },
    {
        .examinationSection = 0xE8,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 225, .y = 127 },
            [1] = { .x = 239, .y = 145 },
            [2] = { .x = 221, .y = 159 },
            [3] = { .x = 154, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xE9,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 8, .y = 137 },
            [1] = { .x = 14, .y = 132 },
            [2] = { .x = 25, .y = 158 },
            [3] = { .x = 8, .y = 147 },
        }}
    },
    {
        .examinationSection = 0xE9,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 14, .y = 133 },
            [1] = { .x = 34, .y = 126 },
            [2] = { .x = 58, .y = 159 },
            [3] = { .x = 25, .y = 158 },
        }}
    },
    {
        .examinationSection = 0xE9,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 43, .y = 105 },
            [1] = { .x = 69, .y = 113 },
            [2] = { .x = 57, .y = 159 },
            [3] = { .x = 33, .y = 127 },
        }}
    },
    {
        .examinationSection = 0xEB,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 55, .y = 80 },
            [1] = { .x = 89, .y = 84 },
            [2] = { .x = 74, .y = 141 },
            [3] = { .x = 49, .y = 106 },
        }}
    },
    {
        .examinationSection = 0xEB,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 89, .y = 84 },
            [1] = { .x = 128, .y = 102 },
            [2] = { .x = 119, .y = 133 },
            [3] = { .x = 74, .y = 141 },
        }}
    },
    {
        .examinationSection = 0xEB,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 158, .y = 94 },
            [1] = { .x = 197, .y = 76 },
            [2] = { .x = 197, .y = 130 },
            [3] = { .x = 157, .y = 105 },
        }}
    },
    {
        .examinationSection = 0xEB,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 197, .y = 76 },
            [1] = { .x = 239, .y = 83 },
            [2] = { .x = 239, .y = 157 },
            [3] = { .x = 197, .y = 130 },
        }}
    },
    {
        .examinationSection = 0xEC,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 11, .y = 0 },
            [1] = { .x = 99, .y = 2 },
            [2] = { .x = 99, .y = 100 },
            [3] = { .x = 11, .y = 108 },
        }}
    },
};

const struct ExaminationData gUnknown_08020E20[20] = {
    {
        .examinationSection = 0x113,
        .unk2 = 0xFE,
        .unk3 = 0x1B,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 0, .y = 0 },
            [2] = { .x = 0, .y = 0 },
            [3] = { .x = 0, .y = 0 },
        }}
    },
    {
        .examinationSection = 0x10E,
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
        .examinationSection = 0x10F,
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
        .examinationSection = 0x110,
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
        .examinationSection = 0x110,
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
        .examinationSection = 0x10A,
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
        .examinationSection = 0x10D,
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
        .examinationSection = 0x10D,
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
        .examinationSection = 0x10D,
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
        .examinationSection = 0x10B,
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
        .examinationSection = 0x10B,
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
        .examinationSection = 0x10B,
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
        .examinationSection = 0x10B,
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
        .examinationSection = 0x10B,
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
        .examinationSection = 0x10B,
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
        .examinationSection = 0x10B,
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
        .examinationSection = 0x111,
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
        .examinationSection = 0x111,
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
        .examinationSection = 0x112,
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
        .examinationSection = 0x10C,
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

const struct ExaminationData gUnknown_08020FB0[11] = {
    {
        .examinationSection = 0x128,
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
        .examinationSection = 0x129,
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
        .examinationSection = 0x12A,
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
        .examinationSection = 0x12B,
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
        .examinationSection = 0x12B,
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
        .examinationSection = 0x12B,
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
        .examinationSection = 0x12C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 115, .y = 17 },
            [1] = { .x = 131, .y = 17 },
            [2] = { .x = 131, .y = 37 },
            [3] = { .x = 115, .y = 37 },
        }}
    },
    {
        .examinationSection = 0x154,
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
        .examinationSection = 0x155,
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
        .examinationSection = 0x155,
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
        .examinationSection = 0x156,
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

const struct ExaminationData gUnknown_0802108C[5] = {
    {
        .examinationSection = 0x157,
        .unk2 = 0xFE,
        .unk3 = 0x1A,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 0, .y = 0 },
            [2] = { .x = 0, .y = 0 },
            [3] = { .x = 0, .y = 0 },
        }}
    },
    {
        .examinationSection = 0x154,
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
        .examinationSection = 0x155,
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
        .examinationSection = 0x155,
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
        .examinationSection = 0x156,
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

void InvestigationSegmentSetup_3_2(struct Main *main) {
    DmaCopy16(3, gUnknown_08020954, gMain.roomData, 0x7C);
    DmaCopy16(3, gUnknown_080206FC, gTalkData, sizeof(gUnknown_080206FC));
    DmaCopy16(3, gUnknown_080206F0, gUnknown_03003B70, sizeof(gUnknown_080206F0));
    main->currentRoomId = 0;
}

void InvestigationRoomSetup_3_2(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            if(GetFlag(0, 0xBC)) {
                if(!GetFlag(0, 0xBE)) {
                    InvestigationSetScriptSectionAndFlag(0x14D, 0xBE);
                    break;
                }
                InvestigationSetPersonAnimation(0x19, 0, 0);
                PlayBGM(0xC);
                break;
            }
            if(GetFlag(0, 0xBD)) {
                InvestigationSetPersonAnimation(0x14, 0, 0);
                PlayBGM(0xD7);
            }
            LOADEXAMDATA(gUnknown_080209D4);
            break;
        }
        case 1: {
            if(!GetFlag(0, 0xBF)) {
                InvestigationSetScriptSectionAndFlag(0x8E, 0xBF);
            }
            else if(!GetFlag(0, 0xD3)) {
                InvestigationSetPersonAnimation(0x23, 0, 0);
                PlayBGM(0xEE);
            }
            LOADEXAMDATA(gUnknown_08020A38);
            break;
        }
        case 19: {
            LOADEXAMDATA(gUnknown_08020A60);
            if(GetFlag(0, 0xB0)) {
                if(!GetFlag(0, 0xC1)) {
                    InvestigationSetScriptSectionAndFlag(0xB4, 0xC1);
                    break;
                }
                InvestigationSetPersonAnimation(0x28, 0, 0);
                PlayBGM(0xD7);
            }
            else if(!GetFlag(0, 0xC0)) {
                InvestigationSetScriptSectionAndFlag(0xAD, 0xC0);
            }
            break;
        }
        case 20: {
            if(!GetFlag(0, 0xC2)) {
                InvestigationSetScriptSectionAndFlag(0x9D, 0xC2);
            }
            else {
                InvestigationSetPersonAnimation(0x27, 0, 0);
                PlayBGM(0xDA);
            }
            LOADEXAMDATA(gUnknown_08020C90);
            break;
        }
        case 18: {
            LoadCurrentScriptIntoRam();
            if(GetFlag(0, 0xBC)) {
                if(!GetFlag(0, 0xC4)) {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                    InvestigationSetScriptSectionAndFlag(0xE1, 0xC4);
                }
                LOADEXAMDATA(gUnknown_08020BDC);
            }
            else {
                if(!GetFlag(0, 0xC3)) {
                    InvestigationSetScriptSectionAndFlag(0xC5, 0xC3);
                }
                else {
                    InvestigationSetPersonAnimation(0x18, 0, 0);
                    PlayBGM(0x16);
                }
                LOADEXAMDATA(gUnknown_08020B28);
            }
            break;
        }
        case 16: {
            LOADEXAMDATA(gUnknown_08020D30);
            if(GetFlag(0, 0xBA) && GetFlag(0, 0xBB)) {
                ChangeFlag(0, 0xDC, 1);
                if(!GetFlag(0, 0xC7)) {
                    InvestigationSetScriptSectionAndFlag(0x106, 0xC7);
                }
                else if(!GetFlag(0, 0xBC)) {
                    InvestigationSetPersonAnimation(0x24, 0x3CB4, 0x3CB4);
                    PlayBGM(0xC);
                }
            }
            else if(GetFlag(0, 0xB4)) {
                ChangeFlag(0, 0xDC, 0);
                if(!GetFlag(0, 0xC6)) {
                    InvestigationSetScriptSectionAndFlag(0x105, 0xC6);
                }
            }
            else {
                ChangeFlag(0, 0xDC, 1);
                if(!GetFlag(0, 0xC5)) {
                    InvestigationSetScriptSectionAndFlag(0xE5, 0xC5);
                    break;
                }
                InvestigationSetPersonAnimation(0x24, 0x3CB4, 0x3CB4);
                PlayBGM(0xEE);
            }
            break;
        }
        case 17: {
            LOADEXAMDATA(gUnknown_08020E20);
            if(GetFlag(0, 0xE1)) {
                sub_801480C(0x1B);
            }
            if(!GetFlag(0, 0xC8)) {
                InvestigationSetScriptSectionAndFlag(0x107, 0xC8);
            }
            else if(!GetFlag(0, 0xB1)) {
                InvestigationSetPersonAnimation(0xA, 0, 0);
                PlayBGM(1);
            }
            break;
        }
        case 15: {
            DmaCopy16(3, gUnknown_08020FB0, gExaminationData, sizeof(gUnknown_08020FB0)-(4*sizeof(struct ExaminationData)));
            if(GetFlag(0, 0xBC)) {
                ChangeFlag(0, 0xDF, 0);
                ChangeFlag(0, 0xE0, 0);
                if(!GetFlag(0, 0xCB)) {
                    InvestigationSetScriptSectionAndFlag(0x149, 0xCB);
                }
                gExaminationData[1].examinationSection = 0x14A;
            }
            else if(GetFlag(0, 0xB2) && GetFlag(0, 0xB3)) {
                if(!GetFlag(0, 0xCA)) {
                    InvestigationSetScriptSectionAndFlag(0x12D, 0xCA);
                }
                else if(GetFlag(0, 0xB4)) {
                    InvestigationSetPersonAnimation(8, 0x3C68, 0x3C68);
                    if(GetFlag(0, 0xBB)) {
                        PlayBGM(0xC);
                    }
                    else {
                        PlayBGM(0xF1);
                    }
                }
                else {
                    InvestigationSetPersonAnimation(0xA, 0, 0);
                    PlayBGM(1);
                }
                gExaminationData[1].examinationSection = 0x12E;
            }
            else {
                ChangeFlag(0, 0xDF, 0);
                ChangeFlag(0, 0xE0, 0);
                if(!GetFlag(0, 0xC9)) {
                    InvestigationSetScriptSectionAndFlag(0x126, 0xC9);
                }
            }
            break;
        }
        case 23: {
            LOADEXAMDATA(gUnknown_0802108C);
            if(!GetFlag(0, 0xCC)) {
                InvestigationSetScriptSectionAndFlag(0x153, 0xCC);
            }
            else {
                PlayBGM(0xD3);
            }
            break;
        }
    }
}

void InvestigationRoomUpdate_3_2(struct Main *main) {
    if(main->currentRoomId == 15) {
        if(GetFlag(0, 0xE0)) {
            gExaminationData[1].examinationSection = 0x12F;
        }
    }
}
