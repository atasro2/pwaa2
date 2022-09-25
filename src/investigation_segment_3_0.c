#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"

const u8 gUnknown_0801FA34[2] = {
    0xFE, 0xFF,
};

const u8 gUnknown_0801FA36[15] = {
    0x3C, 0x16, 0x02, 0x62, 0x64, 0x65, 0x67, 0x63, 0xFE, 0x05, 0x2B, 0x9A, 0x6E, 0x70, 0xFF,
};

const u8 gUnknown_0801FA45[27] = {
    0x3C, 0x16, 0x02, 0x3E, 0x6D, 0x62, 0x64, 0x65, 0x67, 0x63, 0x68, 0x69, 0xFE, 0x05, 0x2B, 0x9A, 0x6E, 0x70, 0x72, 0x7C, 0x73, 0x74, 0x76, 0x78, 0x79, 0x7A, 0xFF,
};

const u8 gUnknown_0801FA60[31] = {
    0x3C, 0x16, 0x02, 0x3E, 0x6D, 0x62, 0x64, 0x65, 0x67, 0x63, 0x68, 0x69, 0xFE, 0x05, 0x2B, 0x9A, 0x6E, 0x70, 0x72, 0x7C, 0x73, 0x75, 0x9B, 0x78, 0x77, 0x79, 0x7A, 0x7D, 0x7E, 0x7F, 0xFF,
};

const u8 gUnknown_0801FA7F[31] = {
    0x3C, 0x16, 0x02, 0x3E, 0x6D, 0x62, 0x64, 0x65, 0x67, 0x63, 0x68, 0x69, 0xFE, 0x05, 0x2B, 0x9A, 0x6E, 0x70, 0x72, 0x7C, 0x73, 0x75, 0x9B, 0x78, 0x77, 0x79, 0x7A, 0x7D, 0x7E, 0x7F, 0xFF,
};

const u8 gUnknown_0801FA9E[33] = {
    0x3C, 0x16, 0x02, 0x3E, 0x6D, 0x62, 0x64, 0x65, 0x67, 0x63, 0x68, 0x69, 0x6C, 0xFE, 0x05, 0x2B, 0x9A, 0x6E, 0x70, 0x72, 0x7C, 0x73, 0x75, 0x9B, 0x78, 0x77, 0x79, 0x7A, 0x7D, 0x7E, 0x7F, 0x80, 0xFF,
};

const u8 gUnknown_0801FABF[39] = {
    0x3C, 0x16, 0x02, 0x3E, 0x6D, 0x62, 0x64, 0x65, 0x67, 0x63, 0x68, 0x69, 0x6C, 0xFE, 0x05, 0x2B, 0x9A, 0x6E, 0x70, 0x72, 0x7C, 0x73, 0x75, 0x9B, 0x78, 0x77, 0x79, 0x7A, 0x7D, 0x7E, 0x7F, 0x80, 0x82, 0x83, 0x84, 0x85, 0x88, 0x86, 0xFF,
};

const u8 gUnknown_0801FAE6[42] = {
    0x3C, 0x16, 0x02, 0x3E, 0x6D, 0x62, 0x64, 0x65, 0x67, 0x63, 0x68, 0x69, 0x6C, 0xFE, 0x05, 0x2B, 0x9A, 0x6E, 0x70, 0x72, 0x7C, 0x73, 0x75, 0x9B, 0x78, 0x77, 0x79, 0x7A, 0x7D, 0x7E, 0x7F, 0x80, 0x82, 0x83, 0x84, 0x85, 0x88, 0x87, 0x89, 0xFF, 0x00, 0x00,
};
const struct Struct811DC54 gUnknown_0801FB10[10] = {
    {
        .scriptSection = 0x94,
        .evidenceId = 0x7E,
        .unk4 = 0x9C,
        .flagId = 0xFF,
        .unk7 = 0x0,
    },
    {
        .scriptSection = 0x9F,
        .evidenceId = 0x76,
        .unk4 = 0xA1,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xAB,
        .evidenceId = 0x77,
        .unk4 = 0xBD,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xC2,
        .evidenceId = 0x7E,
        .unk4 = 0xC9,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xCE,
        .evidenceId = 0x7E,
        .unk4 = 0xD0,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD4,
        .evidenceId = 0x68,
        .unk4 = 0xD6,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xE8,
        .evidenceId = 0x72,
        .unk4 = 0xEA,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xEE,
        .evidenceId = 0x72,
        .unk4 = 0xF0,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xF8,
        .evidenceId = 0x68,
        .unk4 = 0xFA,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .unk4 = 0xFFFF,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
};

const struct Struct811DC54 gUnknown_0801FB60[18] = {
    {
        .scriptSection = 0x85,
        .evidenceId = 0x75,
        .unk4 = 0x98,
        .flagId = 0x27,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x85,
        .evidenceId = 0x78,
        .unk4 = 0x98,
        .flagId = 0x27,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x87,
        .evidenceId = 0x75,
        .unk4 = 0x98,
        .flagId = 0x27,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x87,
        .evidenceId = 0x78,
        .unk4 = 0x98,
        .flagId = 0x27,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x9C,
        .evidenceId = 0x75,
        .unk4 = 0xA4,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x9D,
        .evidenceId = 0x75,
        .unk4 = 0xA4,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x9E,
        .evidenceId = 0x75,
        .unk4 = 0xA4,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xA7,
        .evidenceId = 0x9B,
        .unk4 = 0xA9,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xAA,
        .evidenceId = 0x7F,
        .unk4 = 0xAC,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xAA,
        .evidenceId = 0x9A,
        .unk4 = 0xAC,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB0,
        .evidenceId = 0x6E,
        .unk4 = 0xB2,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xC2,
        .evidenceId = 0x7D,
        .unk4 = 0xCB,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD0,
        .evidenceId = 0x68,
        .unk4 = 0xD2,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD6,
        .evidenceId = 0x78,
        .unk4 = 0xE0,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD7,
        .evidenceId = 0x78,
        .unk4 = 0xE0,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD8,
        .evidenceId = 0x78,
        .unk4 = 0xE0,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .unk4 = 0xFFFF,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .unk4 = 0xFFFF,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
};

const struct Struct811DC54 gUnknown_0801FBF0[7] = {
    {
        .scriptSection = 0xA4,
        .evidenceId = 0x78,
        .unk4 = 0xAE,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xA4,
        .evidenceId = 0x9B,
        .unk4 = 0xAE,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB7,
        .evidenceId = 0x86,
        .unk4 = 0xCA,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD4,
        .evidenceId = 0x68,
        .unk4 = 0xD6,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xEE,
        .evidenceId = 0x89,
        .unk4 = 0xF0,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xF3,
        .evidenceId = 0x3E,
        .unk4 = 0xF5,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .unk4 = 0xFFFF,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
};

const struct Struct811DC54 gUnknown_0801FC28[14] = {
    {
        .scriptSection = 0x83,
        .evidenceId = 0x82,
        .unk4 = 0x85,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x83,
        .evidenceId = 0x83,
        .unk4 = 0x85,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x83,
        .evidenceId = 0x84,
        .unk4 = 0x85,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xA1,
        .evidenceId = 0x9B,
        .unk4 = 0xAC,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB5,
        .evidenceId = 0x68,
        .unk4 = 0xC8,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD1,
        .evidenceId = 0x89,
        .unk4 = 0xE7,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD1,
        .evidenceId = 0x87,
        .unk4 = 0xE7,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xE4,
        .evidenceId = 0x89,
        .unk4 = 0xE7,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xE4,
        .evidenceId = 0x87,
        .unk4 = 0xE7,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xF2,
        .evidenceId = 0x6B,
        .unk4 = 0xF5,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xF3,
        .evidenceId = 0x92,
        .unk4 = 0xF6,
        .flagId = 0x44,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xF3,
        .evidenceId = 0x93,
        .unk4 = 0xF6,
        .flagId = 0x44,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xFF,
        .evidenceId = 0x96,
        .unk4 = 0x101,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xFFFF,
        .evidenceId = 0xFFFF,
        .unk4 = 0xFFFF,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
};

const struct Struct811DC98 gUnknown_0801FC98[34] = {
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCA,
        .unk8 = 0xCA,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xCA,
        .unk8 = 0xCA,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x23,
        .unk4 = 0x0,
        .unk6 = 0xD8,
        .unk8 = 0xDB,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x70,
        .unk3 = 0x23,
        .unk4 = 0x0,
        .unk6 = 0xD9,
        .unk8 = 0xDB,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x6E,
        .unk3 = 0x23,
        .unk4 = 0x0,
        .unk6 = 0xDA,
        .unk8 = 0xDB,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x62,
        .unk3 = 0x23,
        .unk4 = 0x1,
        .unk6 = 0xDC,
        .unk8 = 0xDF,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x65,
        .unk3 = 0x23,
        .unk4 = 0x1,
        .unk6 = 0xDD,
        .unk8 = 0xDF,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x66,
        .unk3 = 0x23,
        .unk4 = 0x1,
        .unk6 = 0xDE,
        .unk8 = 0xDF,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x67,
        .unk3 = 0x23,
        .unk4 = 0x1,
        .unk6 = 0xDE,
        .unk8 = 0xDF,
    },
    {
        .roomId = 0x13,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x28,
        .unk4 = 0x0,
        .unk6 = 0x8C,
        .unk8 = 0x8E,
    },
    {
        .roomId = 0x13,
        .evidenceId = 0xFF,
        .unk2 = 0x6E,
        .unk3 = 0x28,
        .unk4 = 0x0,
        .unk6 = 0x8D,
        .unk8 = 0x8E,
    },
    {
        .roomId = 0x13,
        .evidenceId = 0xFF,
        .unk2 = 0x3C,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0x8F,
        .unk8 = 0x92,
    },
    {
        .roomId = 0x13,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0x91,
        .unk8 = 0x92,
    },
    {
        .roomId = 0x13,
        .evidenceId = 0xFF,
        .unk2 = 0x62,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0x90,
        .unk8 = 0x92,
    },
    {
        .roomId = 0x12,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0xA,
        .unk4 = 0x0,
        .unk6 = 0xA5,
        .unk8 = 0xA5,
    },
    {
        .roomId = 0x12,
        .evidenceId = 0xFF,
        .unk2 = 0x66,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xA6,
        .unk8 = 0xAB,
    },
    {
        .roomId = 0x12,
        .evidenceId = 0xFF,
        .unk2 = 0x67,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xA6,
        .unk8 = 0xAB,
    },
    {
        .roomId = 0x12,
        .evidenceId = 0xFF,
        .unk2 = 0x65,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xA7,
        .unk8 = 0xAB,
    },
    {
        .roomId = 0x12,
        .evidenceId = 0xFF,
        .unk2 = 0x64,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xA8,
        .unk8 = 0xAB,
    },
    {
        .roomId = 0x12,
        .evidenceId = 0xFF,
        .unk2 = 0x2,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xA9,
        .unk8 = 0xAB,
    },
    {
        .roomId = 0x12,
        .evidenceId = 0xFF,
        .unk2 = 0x3C,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xAA,
        .unk8 = 0xAB,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0x27,
        .unk4 = 0x0,
        .unk6 = 0xB6,
        .unk8 = 0xB6,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0x27,
        .unk4 = 0x1,
        .unk6 = 0xB6,
        .unk8 = 0xB6,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x28,
        .unk4 = 0x0,
        .unk6 = 0x8C,
        .unk8 = 0x8E,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x6E,
        .unk3 = 0x28,
        .unk4 = 0x0,
        .unk6 = 0x8D,
        .unk8 = 0x8E,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x6F,
        .unk3 = 0x28,
        .unk4 = 0x0,
        .unk6 = 0xC0,
        .unk8 = 0x8E,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x70,
        .unk3 = 0x28,
        .unk4 = 0x0,
        .unk6 = 0xC0,
        .unk8 = 0x8E,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x3C,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0xC1,
        .unk8 = 0x92,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0x91,
        .unk8 = 0x92,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x62,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0xC2,
        .unk8 = 0x92,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x66,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0xC3,
        .unk8 = 0x92,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x67,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0xC3,
        .unk8 = 0x92,
    },
    {
        .roomId = 0x14,
        .evidenceId = 0xFF,
        .unk2 = 0x65,
        .unk3 = 0x28,
        .unk4 = 0x1,
        .unk6 = 0xC4,
        .unk8 = 0x92,
    },
    {
        .roomId = 0xFF,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0xFF,
        .unk4 = 0xFF,
        .unk6 = 0xFFFF,
        .unk8 = 0xFFFF,
    },
};

const struct TalkData gUnknown_0801FE30[16] = {
    {
        .roomId = 0x0,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x49, 0x4A, 0xFF, 0xFF },
        .talkFlagId = { 0x9B, 0x9C, 0xFF, 0xFF },
        .talkSection = { 0xC8, 0xC9, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x4B, 0x4C, 0xFF, 0xFF },
        .talkFlagId = { 0x9E, 0x9D, 0xFF, 0xFF },
        .talkSection = { 0xD2, 0xD1, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4B, 0x4C, 0xFF, 0xFF },
        .talkFlagId = { 0xA0, 0x9F, 0xFF, 0xFF },
        .talkSection = { 0xD5, 0xD4, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4B, 0x4C, 0x4D, 0xFF },
        .talkFlagId = { 0xA0, 0x9F, 0xA1, 0xFF },
        .talkSection = { 0xD5, 0xD4, 0xD6, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4B, 0x4C, 0x4E, 0xFF },
        .talkFlagId = { 0xA0, 0x9F, 0xA2, 0xFF },
        .talkSection = { 0xD5, 0xD4, 0xD7, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x23,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4B, 0x4C, 0x4D, 0x4E },
        .talkFlagId = { 0xA0, 0x9F, 0xA1, 0xA2 },
        .talkSection = { 0xD5, 0xD4, 0xD6, 0xD7 }
    },
    {
        .roomId = 0x13,
        .personId = 0x28,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x4F, 0x50, 0xFF, 0xFF },
        .talkFlagId = { 0x91, 0x90, 0xFF, 0xFF },
        .talkSection = { 0x89, 0x8A, 0x0, 0x0 }
    },
    {
        .roomId = 0x13,
        .personId = 0x28,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4F, 0x50, 0x51, 0xFF },
        .talkFlagId = { 0x91, 0x90, 0x92, 0xFF },
        .talkSection = { 0x89, 0x8A, 0x8B, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x52, 0x53, 0xFF, 0xFF },
        .talkFlagId = { 0x93, 0x94, 0xFF, 0xFF },
        .talkSection = { 0xB2, 0xB3, 0x0, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x27,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x52, 0x53, 0xFF, 0xFF },
        .talkFlagId = { 0x93, 0x94, 0xFF, 0xFF },
        .talkSection = { 0xB4, 0xB5, 0x0, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x28,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x54, 0x55, 0xFF, 0xFF },
        .talkFlagId = { 0x99, 0x9A, 0xFF, 0xFF },
        .talkSection = { 0xBE, 0xBF, 0x0, 0x0 }
    },
    {
        .roomId = 0x12,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x4C, 0x56, 0xFF, 0xFF },
        .talkFlagId = { 0x95, 0x96, 0xFF, 0xFF },
        .talkSection = { 0xA1, 0xA2, 0x0, 0x0 }
    },
    {
        .roomId = 0x12,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4C, 0x56, 0x4D, 0xFF },
        .talkFlagId = { 0x95, 0x96, 0x97, 0xFF },
        .talkSection = { 0xA1, 0xA2, 0xA3, 0x0 }
    },
    {
        .roomId = 0x12,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4C, 0x56, 0x57, 0xFF },
        .talkFlagId = { 0x95, 0x96, 0x98, 0xFF },
        .talkSection = { 0xA1, 0xA2, 0xA4, 0x0 }
    },
    {
        .roomId = 0x12,
        .personId = 0xA,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x4C, 0x56, 0x4D, 0x57 },
        .talkFlagId = { 0x95, 0x96, 0x97, 0x98 },
        .talkSection = { 0xA1, 0xA2, 0xA3, 0xA4 }
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

const u8 gUnknown_0801FF70[25][5] = {
    { 0x12, 0x01, 0xFF, 0xFF, 0xFF },
	{ 0x80, 0x00, 0xFF, 0xFF, 0xFF },
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
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x13, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x5A, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x5B, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x59, 0x13, 0xFF, 0xFF, 0xFF },
	{ 0x58, 0x12, 0xFF, 0xFF, 0xFF },
	{ 0x5D, 0x13, 0xFF, 0xFF, 0xFF },
	{ 0x11, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x5E, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x60, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x5F, 0xFF, 0xFF, 0xFF, 0xFF },
};

const struct ExaminationData gUnknown_0801FFF0[2] = {
    {
        .examinationSection = 0xCE,
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
        .examinationSection = 0xCF,
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

const struct ExaminationData gUnknown_08020018[10] = {
    {
        .examinationSection = 0x83,
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
        .examinationSection = 0x83,
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
        .examinationSection = 0x83,
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
        .examinationSection = 0x84,
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
        .examinationSection = 0x84,
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
        .examinationSection = 0x84,
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
        .examinationSection = 0x85,
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
        .examinationSection = 0x87,
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
        .examinationSection = 0x88,
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
        .examinationSection = 0x86,
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

const struct ExaminationData gUnknown_080200E0[10] = {
    {
        .examinationSection = 0x94,
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
        .examinationSection = 0x94,
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
        .examinationSection = 0x94,
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
        .examinationSection = 0x95,
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
        .examinationSection = 0x95,
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
        .examinationSection = 0x95,
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
        .examinationSection = 0x96,
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
        .examinationSection = 0x97,
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
        .examinationSection = 0x98,
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
        .examinationSection = 0x86,
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

const struct ExaminationData gUnknown_080201A8[9] = {
    {
        .examinationSection = 0x9D,
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
        .examinationSection = 0x9F,
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
        .examinationSection = 0x9E,
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
        .examinationSection = 0x9E,
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
        .examinationSection = 0x9E,
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
        .examinationSection = 0x9A,
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
        .examinationSection = 0x9C,
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
        .examinationSection = 0x9B,
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
        .examinationSection = 0x9B,
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

const struct ExaminationData gUnknown_0802025C[8] = {
    {
        .examinationSection = 0xAE,
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
        .examinationSection = 0xAE,
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
        .examinationSection = 0xAE,
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
        .examinationSection = 0xAE,
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
        .examinationSection = 0xAE,
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
        .examinationSection = 0xAF,
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
        .examinationSection = 0xB0,
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
        .examinationSection = 0xB1,
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

const struct ExaminationData gUnknown_080202FC[8] = {
    {
        .examinationSection = 0xBB,
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
        .examinationSection = 0xBB,
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
        .examinationSection = 0xBB,
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
        .examinationSection = 0xBB,
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
        .examinationSection = 0xBB,
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
        .examinationSection = 0xBC,
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
        .examinationSection = 0xB0,
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
        .examinationSection = 0xBD,
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

void InvestigationSegmentSetup_3_0(struct Main *main) {
    DmaCopy16(3, gUnknown_0801FF70, gMain.roomData, sizeof(gUnknown_0801FF70)); // note: size copied is 0x7C, actual size 0x7D
    DmaCopy16(3, gUnknown_0801FE30, gTalkData, sizeof(gUnknown_0801FE30));
    main->currentRoomId = 0x13;
    sub_8017910();
}

void InvestigationRoomSetup_3_0(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {if(!GetFlag(0, 0x94)) {
                InvestigationSetScriptSectionAndFlag(0xC6, 0x94);
            }
            else {
                InvestigationSetPersonAnimation(0x14, 0, 0);
            }
            break;
        }
        case 1: {if(!GetFlag(0, 0x95)) {
                InvestigationSetScriptSectionAndFlag(0xCB, 0x95);
            }
            else {
                InvestigationSetPersonAnimation(0x23, 0, 0);
                PlayBGM(0xEE);
            }
            LOADEXAMDATA(gUnknown_0801FFF0);
            break;
        }
        case 19: {if(GetFlag(0, 0x91)) {
                if(!GetFlag(0, 0x97)) {
                    InvestigationSetScriptSectionAndFlag(0x93, 0x97);
                }
                LOADEXAMDATA(gUnknown_080200E0);
                break;
            }
            if(GetFlag(0, 0x96)) {
                if(!GetFlag(0, 0x90) && GetFlag(0, 0xA5) && GetFlag(0, 0xA6) && GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0x82, 0xFF);
                    InvestigationSetPersonAnimation(0x28, 0x1824, 0x1824);
                }
                else {
                    InvestigationSetPersonAnimation(0x28, 0, 0);
                    PlayBGM(0x15);
                }
            }
            LOADEXAMDATA(gUnknown_08020018);
            break;
        }
        case 18: {
            LOADEXAMDATA(gUnknown_080201A8);
            if(GetFlag(0, 0x91)) {
                if(!GetFlag(0, 0x9B)) {
                    InvestigationSetScriptSectionAndFlag(0xA0, 0x9B);
                    break;
                }
                InvestigationSetPersonAnimation(0xA, 0, 0);
                PlayBGM(1);
            }
            else if(!GetFlag(0, 0x9A)) {
                InvestigationSetScriptSectionAndFlag(0x99, 0x9A);
            }
            break;
        }
        case 20: {if(GetFlag(0, 0x92)) {
                if(!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xB7, 0x99);
                }
                else {
                    InvestigationSetPersonAnimation(0x28, 0, 0);
                    PlayBGM(0xD7);
                }
                LOADEXAMDATA(gUnknown_080202FC);
                break;
            }
            if(!GetFlag(0, 0x98)) {
                InvestigationSetScriptSectionAndFlag(0xAC, 0x98);
            }
            else {
                InvestigationSetPersonAnimation(0x27, 0, 0);
                PlayBGM(0xDA);
            }
            if(!GetFlag(0, 0xA7)) {
                LOADEXAMDATA(gUnknown_0802025C);
            }
            else {
                LOADEXAMDATA(gUnknown_080202FC);
            }
            break;
        }
    }
}

void InvestigationRoomUpdate_3_0(struct Main *main) {
}
