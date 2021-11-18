#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"

const struct Struct811DC98 gUnknown_0801CFF0[95] = {
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x5,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x8F,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x2C,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x90,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x2F,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x91,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x31,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x92,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x33,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x93,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x34,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x93,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x35,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x94,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x37,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x95,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x38,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x96,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x2D,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x97,
        .unk8 = 0x98,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x2,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x99,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x14,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x9A,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x18,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x9C,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x1A,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x9E,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x1C,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x9F,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x16,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x9B,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x20,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0xA0,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x21,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0xA1,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0x19,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x9D,
        .unk8 = 0xA2,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x5,
        .unk4 = 0x0,
        .unk6 = 0xA7,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0x0,
        .unk2 = 0xFF,
        .unk3 = 0x5,
        .unk4 = 0x1,
        .unk6 = 0xA7,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x5,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xC9,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x2C,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCA,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x2D,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCB,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x2F,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCC,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x31,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCD,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x33,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCE,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x34,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCE,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x1C,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD0,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x18,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD2,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x16,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD1,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x19,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD3,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x0,
        .unk2 = 0x20,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD4,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x2,
        .unk2 = 0xFF,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xF1,
        .unk8 = 0xF1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0x2,
        .unk2 = 0xFF,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xF1,
        .unk8 = 0xF1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x27,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xDD,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x28,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xDD,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x2E,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xDE,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x2F,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xDF,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x31,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xDF,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x33,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xE0,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x34,
        .unk3 = 0x18,
        .unk4 = 0x0,
        .unk6 = 0xE0,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xE7,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x1F,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xE9,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xE4,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xE5,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x1A,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xE6,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x20,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xE8,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xEB,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x1F,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xED,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x2,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xE2,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x3,
        .evidenceId = 0xFF,
        .unk2 = 0x14,
        .unk3 = 0x18,
        .unk4 = 0x1,
        .unk6 = 0xE3,
        .unk8 = 0xE1,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x5,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xC9,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x2C,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCA,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x2D,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCB,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x2F,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCC,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x31,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCD,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x33,
        .unk3 = 0x14,
        .unk4 = 0x0,
        .unk6 = 0xCE,
        .unk8 = 0xCF,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x1C,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD0,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x18,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD2,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x16,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD1,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x19,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD3,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x4,
        .evidenceId = 0x0,
        .unk2 = 0x20,
        .unk3 = 0x14,
        .unk4 = 0x1,
        .unk6 = 0xD4,
        .unk8 = 0xD5,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x2C,
        .unk3 = 0x15,
        .unk4 = 0x0,
        .unk6 = 0x139,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x2D,
        .unk3 = 0x15,
        .unk4 = 0x0,
        .unk6 = 0x13A,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x31,
        .unk3 = 0x15,
        .unk4 = 0x0,
        .unk6 = 0x13B,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x33,
        .unk3 = 0x15,
        .unk4 = 0x0,
        .unk6 = 0x13C,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x34,
        .unk3 = 0x15,
        .unk4 = 0x0,
        .unk6 = 0x13C,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x14,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0x13E,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0x13F,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0x140,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x19,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0x141,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0x142,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x5,
        .evidenceId = 0x1,
        .unk2 = 0x1A,
        .unk3 = 0x15,
        .unk4 = 0x1,
        .unk6 = 0x144,
        .unk8 = 0x13D,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x10E,
        .unk8 = 0x110,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x33,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x10F,
        .unk8 = 0x110,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x34,
        .unk3 = 0x13,
        .unk4 = 0x0,
        .unk6 = 0x10F,
        .unk8 = 0x110,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0x1,
        .unk2 = 0x1A,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x117,
        .unk8 = 0x116,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x111,
        .unk8 = 0x116,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x1C,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x112,
        .unk8 = 0x116,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x1F,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x113,
        .unk8 = 0x116,
    },
    {
        .roomId = 0x6,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x13,
        .unk4 = 0x1,
        .unk6 = 0x115,
        .unk8 = 0x116,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0x0,
        .unk2 = 0x5,
        .unk3 = 0x16,
        .unk4 = 0x0,
        .unk6 = 0x15E,
        .unk8 = 0x15B,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x16,
        .unk4 = 0x0,
        .unk6 = 0x15B,
        .unk8 = 0x15B,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x33,
        .unk3 = 0x16,
        .unk4 = 0x0,
        .unk6 = 0x15C,
        .unk8 = 0x15B,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x34,
        .unk3 = 0x16,
        .unk4 = 0x0,
        .unk6 = 0x15C,
        .unk8 = 0x15B,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x3A,
        .unk3 = 0x16,
        .unk4 = 0x0,
        .unk6 = 0x15D,
        .unk8 = 0x15B,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x16,
        .unk3 = 0x16,
        .unk4 = 0x1,
        .unk6 = 0x15F,
        .unk8 = 0x165,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x18,
        .unk3 = 0x16,
        .unk4 = 0x1,
        .unk6 = 0x160,
        .unk8 = 0x165,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x19,
        .unk3 = 0x16,
        .unk4 = 0x1,
        .unk6 = 0x161,
        .unk8 = 0x165,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x1D,
        .unk3 = 0x16,
        .unk4 = 0x1,
        .unk6 = 0x162,
        .unk8 = 0x165,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x1F,
        .unk3 = 0x16,
        .unk4 = 0x1,
        .unk6 = 0x15D,
        .unk8 = 0x165,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x22,
        .unk3 = 0x16,
        .unk4 = 0x1,
        .unk6 = 0x163,
        .unk8 = 0x165,
    },
    {
        .roomId = 0x2,
        .evidenceId = 0xFF,
        .unk2 = 0x20,
        .unk3 = 0x16,
        .unk4 = 0x1,
        .unk6 = 0x164,
        .unk8 = 0x165,
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

const u16 gUnknown_0801D464[6] = {
    0x00C7, 0x00C8, 0x00FD, 0x00FE, 0x00A9, 0x00AA,
};

const struct TalkData gUnknown_0801D470[31] = {
    {
        .roomId = 0x1,
        .personId = 0x4,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x17, 0x3, 0xFF, 0xFF },
        .talkFlagId = { 0x35, 0x36, 0xFF, 0xFF },
        .talkSection = { 0x8B, 0x8C, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x4,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x3, 0x18, 0xFF },
        .talkFlagId = { 0x35, 0x36, 0x37, 0xFF },
        .talkSection = { 0x8B, 0x8C, 0x8D, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x4,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x3, 0x18, 0x19 },
        .talkFlagId = { 0x35, 0x36, 0x37, 0x38 },
        .talkSection = { 0x8B, 0x8C, 0x8D, 0x8E }
    },
    {
        .roomId = 0x1,
        .personId = 0x5,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x1A, 0x1B, 0xFF, 0xFF },
        .talkFlagId = { 0x3B, 0x3C, 0xFF, 0xFF },
        .talkSection = { 0xA5, 0xA6, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x5,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x1C, 0x1A, 0x1B, 0xFF },
        .talkFlagId = { 0x3D, 0x3B, 0x3C, 0xFF },
        .talkSection = { 0xA9, 0xA5, 0xA6, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x5,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x1C, 0x1A, 0x1B, 0xFF },
        .talkFlagId = { 0x3D, 0x3B, 0x3C, 0xFF },
        .talkSection = { 0xAA, 0xA5, 0xA6, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x5,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x1C, 0x1A, 0x1B, 0xFF },
        .talkFlagId = { 0x3E, 0x3B, 0x3C, 0xFF },
        .talkSection = { 0x169, 0xA5, 0xA6, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x17, 0x1C, 0xFF, 0xFF },
        .talkFlagId = { 0x2A, 0x2B, 0xFF, 0xFF },
        .talkSection = { 0xC3, 0xC6, 0x0, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x26, 0x1C, 0xFF },
        .talkFlagId = { 0x2A, 0x4B, 0x2B, 0xFF },
        .talkSection = { 0xC3, 0xC5, 0xC6, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x1C, 0x18, 0xFF },
        .talkFlagId = { 0x2A, 0x2B, 0x2C, 0xFF },
        .talkSection = { 0xC3, 0xC6, 0xC7, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x26, 0x1C, 0x18 },
        .talkFlagId = { 0x2A, 0x4B, 0x2B, 0x2C },
        .talkSection = { 0xC3, 0xC5, 0xC6, 0xC7 }
    },
    {
        .roomId = 0x3,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x1E, 0xC, 0xFF, 0xFF },
        .talkFlagId = { 0x49, 0x4A, 0xFF, 0xFF },
        .talkSection = { 0xEF, 0xF0, 0x0, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x17, 0x1C, 0xFF, 0xFF },
        .talkFlagId = { 0x3F, 0x40, 0xFF, 0xFF },
        .talkSection = { 0xD8, 0xDB, 0x0, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x1C, 0x1D, 0xFF },
        .talkFlagId = { 0x3F, 0x40, 0x41, 0xFF },
        .talkSection = { 0xD8, 0xDB, 0xDC, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x1E, 0x15, 0xFF, 0xFF },
        .talkFlagId = { 0x47, 0x48, 0xFF, 0xFF },
        .talkSection = { 0xEB, 0xED, 0x0, 0x0 }
    },
    {
        .roomId = 0x3,
        .personId = 0x18,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x1E, 0x15, 0x8C, 0xFF },
        .talkFlagId = { 0x47, 0x48, 0x4C, 0xFF },
        .talkSection = { 0xEB, 0xED, 0xEC, 0x0 }
    },
    {
        .roomId = 0x4,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x17, 0x26, 0x1C, 0xFF },
        .talkFlagId = { 0x2A, 0x4B, 0x2B, 0xFF },
        .talkSection = { 0xC3, 0xC5, 0xC6, 0x0 }
    },
    {
        .roomId = 0x4,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x26, 0x1C, 0x18 },
        .talkFlagId = { 0x2A, 0x4B, 0x2B, 0x2C },
        .talkSection = { 0xC3, 0xC5, 0xC6, 0xC7 }
    },
    {
        .roomId = 0x4,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x26, 0x1C, 0x18 },
        .talkFlagId = { 0x2A, 0x4B, 0x2B, 0x39 },
        .talkSection = { 0xC3, 0xC5, 0xC6, 0x120 }
    },
    {
        .roomId = 0x4,
        .personId = 0x14,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x17, 0x26, 0x1C, 0x21 },
        .talkFlagId = { 0x2A, 0x4B, 0x2B, 0x3A },
        .talkSection = { 0xC3, 0xC5, 0xC6, 0x121 }
    },
    {
        .roomId = 0x5,
        .personId = 0x15,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x13, 0x1F, 0x20, 0xFF },
        .talkFlagId = { 0x2F, 0x2D, 0x2E, 0xFF },
        .talkSection = { 0x138, 0x136, 0x137, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x21, 0x1, 0xFF, 0xFF },
        .talkFlagId = { 0x30, 0x31, 0xFF, 0xFF },
        .talkSection = { 0xFB, 0xFC, 0x0, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x21, 0x1, 0x22, 0xFF },
        .talkFlagId = { 0x30, 0x31, 0x32, 0xFF },
        .talkSection = { 0xFB, 0xFC, 0xFD, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x21, 0x1, 0x22, 0xFF },
        .talkFlagId = { 0x30, 0x31, 0x32, 0xFF },
        .talkSection = { 0xFB, 0xFC, 0xFE, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x21, 0x1, 0x22, 0xFF },
        .talkFlagId = { 0x30, 0x31, 0x33, 0xFF },
        .talkSection = { 0xFB, 0xFC, 0xFF, 0x0 }
    },
    {
        .roomId = 0x6,
        .personId = 0x13,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x21, 0x1, 0x22, 0xA },
        .talkFlagId = { 0x30, 0x31, 0x33, 0x34 },
        .talkSection = { 0xFB, 0xFC, 0xFF, 0x100 }
    },
    {
        .roomId = 0x2,
        .personId = 0x16,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x23, 0x15, 0xFF, 0xFF },
        .talkFlagId = { 0x42, 0x43, 0xFF, 0xFF },
        .talkSection = { 0x155, 0x156, 0x0, 0x0 }
    },
    {
        .roomId = 0x2,
        .personId = 0x16,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x23, 0x15, 0xFF, 0xFF },
        .talkFlagId = { 0x42, 0x44, 0xFF, 0xFF },
        .talkSection = { 0x155, 0x157, 0x0, 0x0 }
    },
    {
        .roomId = 0x2,
        .personId = 0x16,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x23, 0x15, 0x24, 0x25 },
        .talkFlagId = { 0x42, 0x44, 0x46, 0x45 },
        .talkSection = { 0x155, 0x157, 0x158, 0x159 }
    },
    {
        .roomId = 0x2,
        .personId = 0x16,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x23, 0x15, 0x24, 0x25 },
        .talkFlagId = { 0x42, 0x44, 0x46, 0x45 },
        .talkSection = { 0x155, 0x157, 0x158, 0x15A }
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

const u8 gUnknown_0801D6DC[5][8] = {
    { 0x12, 0x01, 0x03, 0xFF, 0xFF, 0x11, 0x00, 0x03 },
    { 0xFF, 0xFF, 0x22, 0x00, 0x03, 0xFF, 0xFF, 0x1C },
    { 0x04, 0x00, 0x01, 0xFF, 0x1D, 0x03, 0x05, 0x06 },
    { 0xFF, 0x1E, 0x04, 0xFF, 0xFF, 0xFF, 0x1F, 0x07 },
    { 0x04, 0xFF, 0xFF, 0x20, 0x06, 0xFF, 0xFF, 0xFF },
};

const struct ExaminationData gUnknown_0801D704[5] = {
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

const struct ExaminationData gUnknown_0801D768[2] = {
    {
        .examinationSection = 0x88,
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
        .examinationSection = 0x89,
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

const struct ExaminationData gUnknown_0801D790[7] = {
    {
        .examinationSection = 0xBE,
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
        .examinationSection = 0xBE,
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
        .examinationSection = 0xBF,
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
        .examinationSection = 0xC0,
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
        .examinationSection = 0xC1,
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
        .examinationSection = 0xC1,
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
        .examinationSection = 0xC2,
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

const struct ExaminationData gUnknown_0801D81C[4] = {
    {
        .examinationSection = 0x11A,
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
        .examinationSection = 0x11B,
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
        .examinationSection = 0x11C,
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
        .examinationSection = 0x11D,
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

const struct ExaminationData gUnknown_0801D86C[6] = {
    {
        .examinationSection = 0x130,
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
        .examinationSection = 0x131,
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
        .examinationSection = 0x132,
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
        .examinationSection = 0x133,
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
        .examinationSection = 0x135,
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
        .examinationSection = 0x134,
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

const struct ExaminationData gUnknown_0801D8E4[5] = {
    {
        .examinationSection = 0x14A,
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
        .examinationSection = 0x146,
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
        .examinationSection = 0x147,
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
        .examinationSection = 0x148,
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
        .examinationSection = 0x149,
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

const struct ExaminationData gUnknown_0801D948[6] = {
    {
        .examinationSection = 0x14C,
        .unk2 = 0xFE,
        .unk3 = 0xE,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 0, .y = 0 },
            [2] = { .x = 0, .y = 0 },
            [3] = { .x = 0, .y = 0 },
        }}
    },
    {
        .examinationSection = 0x14D,
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
        .examinationSection = 0x146,
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
        .examinationSection = 0x147,
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
        .examinationSection = 0x148,
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
        .examinationSection = 0x149,
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

const struct ExaminationData gUnknown_0801D9C0[5] = {
    {
        .examinationSection = 0xF3,
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
        .examinationSection = 0xF4,
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
        .examinationSection = 0xF5,
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
        .examinationSection = 0xF6,
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
        .examinationSection = 0xF6,
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

const struct ExaminationData gUnknown_0801DA24[5] = {
    {
        .examinationSection = 0xF3,
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
        .examinationSection = 0xF4,
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
        .examinationSection = 0xF9,
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
        .examinationSection = 0xF6,
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
        .examinationSection = 0xF6,
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

const struct ExaminationData gUnknown_0801DA88[6] = {
    {
        .examinationSection = 0x151,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 135, .y = 17 },
            [1] = { .x = 168, .y = 17 },
            [2] = { .x = 168, .y = 31 },
            [3] = { .x = 135, .y = 31 },
        }}
    },
    {
        .examinationSection = 0x151,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 163, .y = 29 },
            [1] = { .x = 216, .y = 0 },
            [2] = { .x = 205, .y = 159 },
            [3] = { .x = 163, .y = 125 },
        }}
    },
    {
        .examinationSection = 0x151,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 216, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 205, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x152,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 21, .y = 38 },
            [1] = { .x = 86, .y = 38 },
            [2] = { .x = 86, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x153,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 119, .y = 68 },
            [1] = { .x = 144, .y = 68 },
            [2] = { .x = 145, .y = 117 },
            [3] = { .x = 119, .y = 117 },
        }}
    },
    {
        .examinationSection = 0x154,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 92, .y = 59 },
            [1] = { .x = 113, .y = 59 },
            [2] = { .x = 113, .y = 85 },
            [3] = { .x = 92, .y = 85 },
        }}
    },
};

void InvestigationSegmentSetup_1_2(struct Main *main) {
    DmaCopy16(3, gUnknown_0801D6DC, gMain.roomData, sizeof(gUnknown_0801D6DC));
    DmaCopy16(3, gUnknown_0801D470, gTalkData, sizeof(gUnknown_0801D470));
    DmaCopy16(3, gUnknown_0801D464, gUnknown_03003B70, sizeof(gUnknown_0801D464));
    main->currentRoomId = 3;
}

void InvestigationRoomSetup_1_2(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            LOADEXAMDATA(gUnknown_0801D704);
            if(!GetFlag(0, 0x90)) {
                InvestigationSetScriptSectionAndFlag(0x81, 0x90);
            }
            break;
        }
        case 1: {
            LOADEXAMDATA(gUnknown_0801D768);
            if(GetFlag(0, 0xAF)) {
                LoadCurrentScriptIntoRam();
                if(!GetFlag(0, 0x94)) {
                    InvestigationSetScriptSectionAndFlag(0xA8, 0x94);
                    break;
                }
                InvestigationSetPersonAnimation(5, 0, 0);
                PlayBGM(12);
            }
            else if(GetFlag(0, 0xAA)) {
                if(!GetFlag(0, 0x93)) {
                    InvestigationSetScriptSectionAndFlag(0xA3, 0x93);
                }
                else if(!GetFlag(0, 0xBA) || !GetFlag(0, 0xBB)) {
                    InvestigationSetPersonAnimation(5, 0x52C, 0x52C);
                    PlayBGM(0xD0);
                }
            }
            else if(GetFlag(0, 0xA6) && GetFlag(0, 0xA7) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if(!GetFlag(0, 0x92)) {
                    InvestigationSetScriptSectionAndFlag(0x8A, 0x92);
                    break;
                }
                InvestigationSetPersonAnimation(4, 0, 0);
                PlayBGM(0xD0);
            }
            else if(!GetFlag(0, 0x91)) {
                InvestigationSetScriptSectionAndFlag(0x87, 0x91);
            }
            break;
        }
        case 2: {
            LOADEXAMDATA(gUnknown_0801DA88);
            if(!GetFlag(0, 0x95)) {
                InvestigationSetScriptSectionAndFlag(0x14F, 0x95);
            }
            else if(!GetFlag(0, 0xB9)) {
                InvestigationSetPersonAnimation(0x16, 0, 0);
                PlayBGM(0xD1);
            }
            break;
        }
        case 3: {
            LOADEXAMDATA(gUnknown_0801D790);
            if(GetFlag(0, 0xAF)) {
                if(!GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0xEE, 0x9A);
                }
                else {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                }
            }
            else if(GetFlag(0, 0xAD) && GetFlag(0, 0xAE)) {
                if(!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xEA, 0x99);
                    break;
                }
                InvestigationSetPersonAnimation(0x18, 0xE48, 0xE48);
                PlayBGM(0xC);
            }
            else if(GetFlag(0, 0xAB)) {
                if(!GetFlag(0, 0x98)) {
                    InvestigationSetScriptSectionAndFlag(0xD7, 0x98);
                    break;
                }
                InvestigationSetPersonAnimation(0x18, 0x1778, 0x1778);
                PlayBGM(0x16);
            }
            else if(GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if(!GetFlag(0, 0x97)) {
                    InvestigationSetScriptSectionAndFlag(0xD6, 0x97);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(GetFlag(0, 0x96)) {
                InvestigationSetPersonAnimation(0x14, 0, 0);
                PlayBGM(0xF2);
            }
            break;
        }
        case 4: {
            LOADEXAMDATA(gUnknown_0801D81C);
            if(GetFlag(0, 0xAA)) {
                if(!GetFlag(0, 0x9D)) {
                    InvestigationSetScriptSectionAndFlag(0x11F, 0x9D);
                }
                else if(!GetFlag(0, 0xB9)) {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                    PlayBGM(0xF2);
                }
            }
            else if(GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3) && GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0x11E, 0x9C);
                }
            }
            else if(!GetFlag(0, 0x9B)) {
                InvestigationSetScriptSectionAndFlag(0x119, 0x9B);
            }
            break;
        }
        case 5: {
            LOADEXAMDATA(gUnknown_0801D86C);
            if(GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if(!GetFlag(0, 0x98)) {
                    if(!GetFlag(0, 0x9F)) {
                        InvestigationSetScriptSectionAndFlag(0x143, 0x9F);
                        sub_801480C(0xC);
                        break;
                    }
                    InvestigationSetPersonAnimation(0x4015, 0x5A0, 0x5A0);
                    PlayBGM(0xCF);
                }
            }
            else if(!GetFlag(0, 0x9E)) {
                InvestigationSetScriptSectionAndFlag(0x12F, 0x9E);
            }
            else {
                InvestigationSetPersonAnimation(0x4015, 0x5A0, 0x5A0);
                PlayBGM(0xCF);
            }
            sub_801480C(0xC);
            break;
        }
        case 6: {
            if(GetFlag(0, 0xAD) && GetFlag(0, 0xAE)) {
                LOADEXAMDATA(gUnknown_0801DA24);
                if(!GetFlag(0, 0xA2)) {
                    InvestigationSetScriptSectionAndFlag(0x118, 0xA2);
                    break;
                }
                InvestigationSetPersonAnimation(0x13, 0, 0);
                PlayBGM(0xC);
            }
            else if(GetFlag(0, 0xA5)) {
                LOADEXAMDATA(gUnknown_0801DA24);
                if(!GetFlag(0, 0xB3)) {
                    sub_801480C(0xA);
                }
                if(!GetFlag(0, 0xA1)) {
                    InvestigationSetScriptSectionAndFlag(0xF7, 0xA1);
                    break;
                }
                InvestigationSetPersonAnimation(0x13, 0, 0);
                PlayBGM(0xD7);
            }
            else {
                if(!GetFlag(0, 0xA0)) {
                    InvestigationSetScriptSectionAndFlag(0xF2, 0xA0);
                }
                LOADEXAMDATA(gUnknown_0801D9C0);
            }
            break;
        }
        case 7: {
            if(GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3) && GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0xB5)) {
                    sub_801480C(0xE);
                }
                LOADEXAMDATA(gUnknown_0801D948);
                if(!GetFlag(0, 0xA4)) {
                    InvestigationSetScriptSectionAndFlag(0x14B, 0xA4);
                }
            }
            else {
                if(!GetFlag(0, 0xA3)) {
                    InvestigationSetScriptSectionAndFlag(0x145, 0xA3);
                }
                LOADEXAMDATA(gUnknown_0801D8E4);
            }
            break;
        }
    }
}

void InvestigationRoomUpdate_1_2(struct Main *main) {
}
