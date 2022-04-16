#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"

const u8 gUnknown_0801C41C[8] = {
    0x00, 0x03, 0xFE, 0x05, 0x06, 0x07, 0x09, 0xFF,
};
const u8 gUnknown_0801C424[12] = {
    0x00, 0x03, 0x01, 0xFE, 0x05, 0x06, 0x07, 0x09, 0x08, 0x0A, 0x0B, 0xFF,
};
const struct Struct811DC54 gUnknown_0801C430[10] = {
    {
        .scriptSection = 0x8D,
        .evidenceId = 0x0,
        .unk4 = 0x9A,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x8E,
        .evidenceId = 0x0,
        .unk4 = 0x9A,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x8F,
        .evidenceId = 0x0,
        .unk4 = 0x9A,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xAD,
        .evidenceId = 0xB,
        .unk4 = 0xBA,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xAE,
        .evidenceId = 0xB,
        .unk4 = 0xBA,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xAF,
        .evidenceId = 0xB,
        .unk4 = 0xBA,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB0,
        .evidenceId = 0xB,
        .unk4 = 0xBA,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB1,
        .evidenceId = 0xB,
        .unk4 = 0xBA,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB2,
        .evidenceId = 0xB,
        .unk4 = 0xBA,
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

const struct Struct811DC54 gUnknown_0801C480[11] = {
    {
        .scriptSection = 0x87,
        .evidenceId = 0xB,
        .unk4 = 0x91,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x97,
        .evidenceId = 0x7,
        .unk4 = 0x9F,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x98,
        .evidenceId = 0x7,
        .unk4 = 0x9F,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xA5,
        .evidenceId = 0x8,
        .unk4 = 0xA7,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xAA,
        .evidenceId = 0x9,
        .unk4 = 0xAD,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB0,
        .evidenceId = 0xE,
        .unk4 = 0xB2,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB3,
        .evidenceId = 0xE,
        .unk4 = 0xB5,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB3,
        .evidenceId = 0xD,
        .unk4 = 0xB6,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xBC,
        .evidenceId = 0x3,
        .unk4 = 0xBE,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xC4,
        .evidenceId = 0xF,
        .unk4 = 0xC6,
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

const struct Struct811DC54 gUnknown_0801C540[4] = {
    {
        .scriptSection = 0xA4,
        .evidenceId = 0x31,
        .unk4 = 0xB3,
        .flagId = 0xFF,
        .unk7 = 0x0,
    },
    {
        .scriptSection = 0xB7,
        .evidenceId = 0x31,
        .unk4 = 0xBF,
        .flagId = 0xFF,
        .unk7 = 0x0,
    },
    {
        .scriptSection = 0xC2,
        .evidenceId = 0x2C,
        .unk4 = 0xC4,
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

const struct Struct811DC54 gUnknown_0801C560[2] = {
    {
        .scriptSection = 0xDF,
        .evidenceId = 0x2D,
        .unk4 = 0xE1,
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

const struct Struct811DC54 gUnknown_0801C570[13] = {
    {
        .scriptSection = 0xBC,
        .evidenceId = 0x31,
        .unk4 = 0xCD,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xBC,
        .evidenceId = 0x34,
        .unk4 = 0xCD,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD5,
        .evidenceId = 0x36,
        .unk4 = 0xEE,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xD5,
        .evidenceId = 0x16,
        .unk4 = 0xEA,
        .flagId = 0xFF,
        .unk7 = 0x0,
    },
    {
        .scriptSection = 0xEB,
        .evidenceId = 0x36,
        .unk4 = 0xED,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xEF,
        .evidenceId = 0x16,
        .unk4 = 0xF1,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x102,
        .evidenceId = 0x39,
        .unk4 = 0x104,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x106,
        .evidenceId = 0x39,
        .unk4 = 0x108,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x106,
        .evidenceId = 0x2C,
        .unk4 = 0x108,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x10B,
        .evidenceId = 0x1C,
        .unk4 = 0x10D,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x10E,
        .evidenceId = 0x1D,
        .unk4 = 0x110,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x10E,
        .evidenceId = 0x29,
        .unk4 = 0x110,
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

const struct Struct811DC54 gUnknown_0801C5D8[7] = {
    {
        .scriptSection = 0x8B,
        .evidenceId = 0x3A,
        .unk4 = 0x99,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xB7,
        .evidenceId = 0x1D,
        .unk4 = 0xB9,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xBA,
        .evidenceId = 0x27,
        .unk4 = 0xBC,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xBF,
        .evidenceId = 0x16,
        .unk4 = 0xC1,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0xA1,
        .evidenceId = 0x29,
        .unk4 = 0xB3,
        .flagId = 0xFF,
        .unk7 = 0xFF,
    },
    {
        .scriptSection = 0x9E,
        .evidenceId = 0x29,
        .unk4 = 0xB3,
        .flagId = 0x14,
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

const struct Struct811DC98 gUnknown_0801C610[87] = {
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x2A,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x90,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x2,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x92,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x14,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x93,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x17,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x94,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x94,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x1A,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x95,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x96,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x15,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x97,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x97,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x5,
        .unk4 = 0x0,
        .unk6 = 0x147,
        .unk8 = 0x14A,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x2B,
        .unk3 = 0x5,
        .unk4 = 0x0,
        .unk6 = 0x148,
        .unk8 = 0x14A,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x2D,
        .unk3 = 0x5,
        .unk4 = 0x0,
        .unk6 = 0x149,
        .unk8 = 0x14A,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x2,
        .unk3 = 0x5,
        .unk4 = 0x1,
        .unk6 = 0x14B,
        .unk8 = 0x150,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x5,
        .unk4 = 0x1,
        .unk6 = 0x14C,
        .unk8 = 0x150,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x5,
        .unk4 = 0x1,
        .unk6 = 0x14D,
        .unk8 = 0x150,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x5,
        .unk4 = 0x1,
        .unk6 = 0x14E,
        .unk8 = 0x150,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x19,
        .unk3 = 0x5,
        .unk4 = 0x1,
        .unk6 = 0x14F,
        .unk8 = 0x150,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0xA4,
        .unk8 = 0xA5,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x13,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0xA6,
        .unk8 = 0xA8,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x17,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0xA7,
        .unk8 = 0xA8,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xAC,
        .unk8 = 0xAC,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xAC,
        .unk8 = 0xAC,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xAF,
        .unk8 = 0xAF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x17,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xB0,
        .unk8 = 0xAF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x14,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xB1,
        .unk8 = 0xAF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xB2,
        .unk8 = 0xAF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x2,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xB3,
        .unk8 = 0xAF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x17,
        .unk4 = 0x0,
        .unk6 = 0xBD,
        .unk8 = 0xBF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x23,
        .unk3 = 0x17,
        .unk4 = 0x0,
        .unk6 = 0xBE,
        .unk8 = 0xBF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x17,
        .unk3 = 0x17,
        .unk4 = 0x1,
        .unk6 = 0xC0,
        .unk8 = 0xC2,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x1B,
        .unk3 = 0x17,
        .unk4 = 0x1,
        .unk6 = 0xC1,
        .unk8 = 0xC2,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x17,
        .unk4 = 0x1,
        .unk6 = 0xC1,
        .unk8 = 0xC2,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0xA,
        .unk4 = 0x0,
        .unk6 = 0xCE,
        .unk8 = 0xD3,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x2B,
        .unk3 = 0xA,
        .unk4 = 0x0,
        .unk6 = 0xD1,
        .unk8 = 0xD3,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x2D,
        .unk3 = 0xA,
        .unk4 = 0x0,
        .unk6 = 0xD2,
        .unk8 = 0xD3,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x27,
        .unk3 = 0xA,
        .unk4 = 0x0,
        .unk6 = 0xCF,
        .unk8 = 0xD3,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x27,
        .unk3 = 0xA,
        .unk4 = 0x0,
        .unk6 = 0xD0,
        .unk8 = 0xD3,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x2,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xD4,
        .unk8 = 0xD8,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x17,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xD6,
        .unk8 = 0xD8,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xD6,
        .unk8 = 0xD8,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xD5,
        .unk8 = 0xD8,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xD7,
        .unk8 = 0xD8,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x2A,
        .unk3 = 0x15,
        .unk4 = 0x0,
        .unk6 = 0xF7,
        .unk8 = 0xF6,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x2C,
        .unk3 = 0x15,
        .unk4 = 0x0,
        .unk6 = 0xF8,
        .unk8 = 0xF6,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x15,
        .unk4 = 0x0,
        .unk6 = 0xE3,
        .unk8 = 0xE3,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0x0,
        .unk2 = 0x17,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xE4,
        .unk8 = 0xE3,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0x0,
        .unk2 = 0x13,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xE5,
        .unk8 = 0xE3,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xE3,
        .unk8 = 0xE3,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x17,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xF9,
        .unk8 = 0xFD,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xF9,
        .unk8 = 0xFD,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x14,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xFA,
        .unk8 = 0xFD,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x15,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xFB,
        .unk8 = 0xFD,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xFB,
        .unk8 = 0xFD,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0xFC,
        .unk8 = 0xFD,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0xA,
        .unk4 = 0x0,
        .unk6 = 0xEB,
        .unk8 = 0xEB,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0xA,
        .unk4 = 0x1,
        .unk6 = 0xEB,
        .unk8 = 0xEB,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x10A,
        .unk8 = 0x10A,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0x0,
        .unk2 = 0x17,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x10C,
        .unk8 = 0x10B,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0x0,
        .unk2 = 0x1E,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x116,
        .unk8 = 0x10B,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x10B,
        .unk8 = 0x10B,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x111,
        .unk8 = 0x113,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x2A,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x112,
        .unk8 = 0x113,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0x2,
        .unk2 = 0x2B,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x112,
        .unk8 = 0x113,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0x3,
        .unk2 = 0x2B,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x11D,
        .unk8 = 0x113,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x2B,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x112,
        .unk8 = 0x113,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0x4,
        .unk2 = 0x28,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x122,
        .unk8 = 0x121,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x17,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x114,
        .unk8 = 0x117,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x114,
        .unk8 = 0x117,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x115,
        .unk8 = 0x117,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x1E,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x116,
        .unk8 = 0x117,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x1F,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x116,
        .unk8 = 0x117,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0x1,
        .unk2 = 0xFF,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x117,
        .unk8 = 0x117,
    },
    {
        .roomId = 0x7,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x11C,
        .unk8 = 0x117,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0x12E,
        .unk8 = 0x12E,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0x12E,
        .unk8 = 0x12E,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0x1,
        .unk2 = 0x2A,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0x134,
        .unk8 = 0x133,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x2A,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0x139,
        .unk8 = 0x139,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0x1,
        .unk2 = 0xFF,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0x133,
        .unk8 = 0x133,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0x1,
        .unk2 = 0xFF,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0x133,
        .unk8 = 0x133,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x2B,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0x139,
        .unk8 = 0x13C,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x2D,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0x13A,
        .unk8 = 0x13C,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x2C,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0x13B,
        .unk8 = 0x13C,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0x13D,
        .unk8 = 0x140,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x17,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0x13E,
        .unk8 = 0x140,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0x13E,
        .unk8 = 0x140,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0x13F,
        .unk8 = 0x140,
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
                    sub_801480C(9);
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
                sub_801480C(0xC);
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
                sub_801480C(0xD);
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
