#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"

const struct Struct811DC98 gUnknown_0801EB80[93] = {
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x5,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x88,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x47,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x89,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x48,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x8A,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x4B,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x8B,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x4A,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x8C,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x52,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x8D,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x4C,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x8E,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x50,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x8F,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x51,
        .unk3 = 0x4,
        .unk4 = 0x0,
        .unk6 = 0x90,
        .unk8 = 0x91,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x3D,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x92,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x3C,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x93,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x2,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x94,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x3E,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x95,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x3F,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x96,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x41,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x97,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x42,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x97,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x43,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x98,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x0,
        .evidenceId = 0xFF,
        .unk2 = 0x40,
        .unk3 = 0x4,
        .unk4 = 0x1,
        .unk6 = 0x99,
        .unk8 = 0x9A,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x48,
        .unk3 = 0x1D,
        .unk4 = 0x0,
        .unk6 = 0xA2,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x47,
        .unk3 = 0x1D,
        .unk4 = 0x0,
        .unk6 = 0xA1,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x4B,
        .unk3 = 0x1D,
        .unk4 = 0x0,
        .unk6 = 0xA3,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x4C,
        .unk3 = 0x1D,
        .unk4 = 0x0,
        .unk6 = 0xA4,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x54,
        .unk3 = 0x1D,
        .unk4 = 0x0,
        .unk6 = 0xA7,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x53,
        .unk3 = 0x1D,
        .unk4 = 0x0,
        .unk6 = 0xA5,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x55,
        .unk3 = 0x1D,
        .unk4 = 0x0,
        .unk6 = 0xA6,
        .unk8 = 0xA7,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x3C,
        .unk3 = 0x1D,
        .unk4 = 0x1,
        .unk6 = 0xA8,
        .unk8 = 0xAD,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x3D,
        .unk3 = 0x1D,
        .unk4 = 0x1,
        .unk6 = 0xA9,
        .unk8 = 0xAD,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x3E,
        .unk3 = 0x1D,
        .unk4 = 0x1,
        .unk6 = 0xAA,
        .unk8 = 0xAD,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x3F,
        .unk3 = 0x1D,
        .unk4 = 0x1,
        .unk6 = 0xAB,
        .unk8 = 0xAD,
    },
    {
        .roomId = 0x1,
        .evidenceId = 0xFF,
        .unk2 = 0x40,
        .unk3 = 0x1D,
        .unk4 = 0x1,
        .unk6 = 0xAC,
        .unk8 = 0xAD,
    },
    {
        .roomId = 0x8,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0x1E,
        .unk4 = 0x0,
        .unk6 = 0xB5,
        .unk8 = 0xB5,
    },
    {
        .roomId = 0x8,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0x1E,
        .unk4 = 0x1,
        .unk6 = 0xB5,
        .unk8 = 0xB5,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x47,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xBC,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x48,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xBD,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x4B,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xBD,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x53,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xBD,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x54,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xBD,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x4E,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xBE,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x51,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xBF,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x56,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xC0,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x57,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xC1,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x5A,
        .unk3 = 0x1C,
        .unk4 = 0x0,
        .unk6 = 0xC2,
        .unk8 = 0xC3,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x43,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xC4,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x40,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xC5,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x41,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xC6,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x42,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xC6,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x3C,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xC7,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x3E,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xC8,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x3D,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xC9,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x3F,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xCA,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x44,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xCB,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0x9,
        .evidenceId = 0xFF,
        .unk2 = 0x45,
        .unk3 = 0x1C,
        .unk4 = 0x1,
        .unk6 = 0xCB,
        .unk8 = 0xCC,
    },
    {
        .roomId = 0xA,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0xF,
        .unk4 = 0x0,
        .unk6 = 0xFA,
        .unk8 = 0xFA,
    },
    {
        .roomId = 0xA,
        .evidenceId = 0xFF,
        .unk2 = 0xFF,
        .unk3 = 0xF,
        .unk4 = 0x1,
        .unk6 = 0xFA,
        .unk8 = 0xFA,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x53,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xD3,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x48,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xD4,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x4B,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xD4,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x54,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xD4,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x4A,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xD4,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x47,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xD5,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0x0,
        .unk2 = 0x55,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xD6,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0x0,
        .unk2 = 0x56,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xD6,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0x1,
        .unk2 = 0x57,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xE4,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0x1,
        .unk2 = 0x59,
        .unk3 = 0x1F,
        .unk4 = 0x0,
        .unk6 = 0xE5,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x3F,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xD8,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x40,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xD9,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x3D,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xD4,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x41,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xDA,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x42,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xDA,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0xFF,
        .unk2 = 0x43,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xDB,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0x1,
        .unk2 = 0x44,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xE6,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0x1,
        .unk2 = 0x45,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xE6,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xB,
        .evidenceId = 0x1,
        .unk2 = 0x46,
        .unk3 = 0x1F,
        .unk4 = 0x1,
        .unk6 = 0xE7,
        .unk8 = 0xD7,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x47,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10B,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x48,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10C,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x4A,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10C,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x4B,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10C,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x54,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10C,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x53,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10C,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x4E,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10D,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x55,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10E,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x56,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10E,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x57,
        .unk3 = 0x20,
        .unk4 = 0x0,
        .unk6 = 0x10E,
        .unk8 = 0x10F,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x3D,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x110,
        .unk8 = 0x117,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x3E,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x111,
        .unk8 = 0x117,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x40,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x112,
        .unk8 = 0x117,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x41,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x113,
        .unk8 = 0x117,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x42,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x113,
        .unk8 = 0x117,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x43,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x114,
        .unk8 = 0x117,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x3F,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x115,
        .unk8 = 0x117,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x44,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x116,
        .unk8 = 0x117,
    },
    {
        .roomId = 0xE,
        .evidenceId = 0xFF,
        .unk2 = 0x45,
        .unk3 = 0x20,
        .unk4 = 0x1,
        .unk6 = 0x116,
        .unk8 = 0x117,
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

const u16 gUnknown_0801EFDC[4] = {
    0x0105, 0x0106, 0x00E0, 0x00E1,
};

const struct TalkData gUnknown_0801EFE4[26] = {
    {
        .roomId = 0x0,
        .personId = 0x4,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x27, 0x28, 0xFF, 0xFF },
        .talkFlagId = { 0x73, 0x74, 0xFF, 0xFF },
        .talkSection = { 0x86, 0x87, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x1D,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x3B, 0x3C, 0xFF, 0xFF },
        .talkFlagId = { 0x75, 0x76, 0xFF, 0xFF },
        .talkSection = { 0x9E, 0x9F, 0x0, 0x0 }
    },
    {
        .roomId = 0x1,
        .personId = 0x1D,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3B, 0x3C, 0x3D, 0xFF },
        .talkFlagId = { 0x75, 0x76, 0x77, 0xFF },
        .talkSection = { 0x9E, 0x9F, 0xA0, 0x0 }
    },
    {
        .roomId = 0x8,
        .personId = 0x1E,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x3C, 0x3E, 0x2E, 0xFF },
        .talkFlagId = { 0x78, 0x79, 0x7A, 0xFF },
        .talkSection = { 0xB2, 0xB3, 0xB4, 0x0 }
    },
    {
        .roomId = 0x9,
        .personId = 0x1C,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x39, 0x31, 0xFF, 0xFF },
        .talkFlagId = { 0x87, 0x88, 0xFF, 0xFF },
        .talkSection = { 0xB8, 0xB9, 0x0, 0x0 }
    },
    {
        .roomId = 0x9,
        .personId = 0x1C,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x39, 0x3F, 0xFF, 0xFF },
        .talkFlagId = { 0x87, 0x89, 0xFF, 0xFF },
        .talkSection = { 0xB8, 0xBB, 0x0, 0x0 }
    },
    {
        .roomId = 0xA,
        .personId = 0xF,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x36, 0x44, 0xFF, 0xFF },
        .talkFlagId = { 0x7F, 0x80, 0xFF, 0xFF },
        .talkSection = { 0xF6, 0xF7, 0x0, 0x0 }
    },
    {
        .roomId = 0xA,
        .personId = 0xF,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x36, 0x44, 0x45, 0xFF },
        .talkFlagId = { 0x7F, 0x80, 0x81, 0xFF },
        .talkSection = { 0xF6, 0xF7, 0xF8, 0x0 }
    },
    {
        .roomId = 0xA,
        .personId = 0xF,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x36, 0x44, 0x45, 0x46 },
        .talkFlagId = { 0x7F, 0x80, 0x81, 0x82 },
        .talkSection = { 0xF6, 0xF7, 0xF8, 0xF9 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1F,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x3C, 0x3A, 0xFF, 0xFF },
        .talkFlagId = { 0x7B, 0x7C, 0xFF, 0xFF },
        .talkSection = { 0xCF, 0xD0, 0x0, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1F,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3C, 0x3A, 0x40, 0xFF },
        .talkFlagId = { 0x7B, 0x7C, 0x7D, 0xFF },
        .talkSection = { 0xCF, 0xD0, 0xD1, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1F,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3C, 0x3A, 0x40, 0x41 },
        .talkFlagId = { 0x7B, 0x7C, 0x7D, 0x7E },
        .talkSection = { 0xCF, 0xD0, 0xD1, 0xD2 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1F,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3A, 0x2A, 0xFF, 0xFF },
        .talkFlagId = { 0x7C, 0x8A, 0xFF, 0xFF },
        .talkSection = { 0xD0, 0xDF, 0x0, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1F,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3A, 0x2A, 0x42, 0xFF },
        .talkFlagId = { 0x7C, 0x8A, 0x8D, 0xFF },
        .talkSection = { 0xD0, 0xDF, 0xE0, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1F,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3A, 0x2A, 0x42, 0xFF },
        .talkFlagId = { 0x7C, 0x8A, 0x8D, 0xFF },
        .talkSection = { 0xD0, 0xDF, 0xE1, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1F,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3A, 0x2A, 0x42, 0xFF },
        .talkFlagId = { 0x7C, 0x8A, 0x8E, 0xFF },
        .talkSection = { 0xD0, 0xDF, 0xE2, 0x0 }
    },
    {
        .roomId = 0xB,
        .personId = 0x1F,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x3A, 0x2A, 0x42, 0x43 },
        .talkFlagId = { 0x7C, 0x8A, 0x8E, 0x8F },
        .talkSection = { 0xD0, 0xDF, 0xE2, 0xE3 }
    },
    {
        .roomId = 0xE,
        .personId = 0x20,
        .unk2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x2A, 0x47, 0x2B, 0xFF },
        .talkFlagId = { 0x83, 0x84, 0x85, 0xFF },
        .talkSection = { 0x104, 0x105, 0x107, 0x0 }
    },
    {
        .roomId = 0xE,
        .personId = 0x20,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x47, 0x2B, 0xFF },
        .talkFlagId = { 0x83, 0x84, 0x85, 0xFF },
        .talkSection = { 0x104, 0x106, 0x107, 0x0 }
    },
    {
        .roomId = 0xE,
        .personId = 0x20,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x47, 0x2B, 0xFF },
        .talkFlagId = { 0x83, 0x8B, 0x85, 0xFF },
        .talkSection = { 0x104, 0x109, 0x107, 0x0 }
    },
    {
        .roomId = 0xE,
        .personId = 0x20,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x48, 0x2B, 0xFF },
        .talkFlagId = { 0x83, 0x8C, 0x85, 0xFF },
        .talkSection = { 0x104, 0x10A, 0x107, 0x0 }
    },
    {
        .roomId = 0xE,
        .personId = 0x20,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x47, 0x2B, 0x3A },
        .talkFlagId = { 0x83, 0x84, 0x85, 0x86 },
        .talkSection = { 0x104, 0x105, 0x107, 0x108 }
    },
    {
        .roomId = 0xE,
        .personId = 0x20,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x47, 0x2B, 0x3A },
        .talkFlagId = { 0x83, 0x84, 0x85, 0x86 },
        .talkSection = { 0x104, 0x106, 0x107, 0x108 }
    },
    {
        .roomId = 0xE,
        .personId = 0x20,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x47, 0x2B, 0x3A },
        .talkFlagId = { 0x83, 0x8B, 0x85, 0x86 },
        .talkSection = { 0x104, 0x109, 0x107, 0x108 }
    },
    {
        .roomId = 0xE,
        .personId = 0x20,
        .unk2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x2A, 0x48, 0x2B, 0x3A },
        .talkFlagId = { 0x83, 0x8C, 0x85, 0x86 },
        .talkSection = { 0x104, 0x10A, 0x107, 0x108 }
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

const u8 gUnknown_0801F1EC[10][8] = {
    { 0x12, 0x08, 0x01, 0xFF, 0xFF, 0x11, 0x00, 0x08 },
    { 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x3E, 0x0A, 0x09, 0x00, 0x01, 0x3B, 0x08, 0x0C },
    { 0x0B, 0xFF, 0x40, 0x08, 0x0D, 0xFF, 0xFF, 0x3C },
    { 0x09, 0xFF, 0xFF, 0xFF, 0x3D, 0x09, 0xFF, 0xFF },
    { 0xFF, 0x41, 0x0A, 0xFF, 0xFF, 0xFF, 0x42, 0x0D },
    { 0x0A, 0xFF, 0xFF, 0x13, 0xFF, 0xFF, 0xFF, 0xFF },
};

const struct ExaminationData gUnknown_0801F23C[5] = {
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

const struct ExaminationData gUnknown_0801F2A0[2] = {
    {
        .examinationSection = 0x9C,
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
        .examinationSection = 0x9D,
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

const struct ExaminationData gUnknown_0801F2C8[2] = {
    {
        .examinationSection = 0xAF,
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
        .examinationSection = 0xB0,
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

const struct ExaminationData gUnknown_0801F2F0[8] = {
    {
        .examinationSection = 0x125,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 68, .y = 0 },
            [1] = { .x = 166, .y = 0 },
            [2] = { .x = 149, .y = 78 },
            [3] = { .x = 75, .y = 70 },
        }}
    },
    {
        .examinationSection = 0x12B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 179, .y = 22 },
            [1] = { .x = 190, .y = 22 },
            [2] = { .x = 181, .y = 74 },
            [3] = { .x = 172, .y = 72 },
        }}
    },
    {
        .examinationSection = 0x12B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 224, .y = 8 },
            [1] = { .x = 233, .y = 13 },
            [2] = { .x = 216, .y = 61 },
            [3] = { .x = 207, .y = 62 },
        }}
    },
    {
        .examinationSection = 0x127,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 198, .y = 79 },
            [1] = { .x = 239, .y = 74 },
            [2] = { .x = 239, .y = 117 },
            [3] = { .x = 198, .y = 117 },
        }}
    },
    {
        .examinationSection = 0x126,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 146, .y = 70 },
            [1] = { .x = 192, .y = 76 },
            [2] = { .x = 192, .y = 118 },
            [3] = { .x = 146, .y = 116 },
        }}
    },
    {
        .examinationSection = 0x128,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 55 },
            [1] = { .x = 81, .y = 68 },
            [2] = { .x = 81, .y = 120 },
            [3] = { .x = 0, .y = 124 },
        }}
    },
    {
        .examinationSection = 0x129,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 81, .y = 71 },
            [1] = { .x = 146, .y = 78 },
            [2] = { .x = 146, .y = 116 },
            [3] = { .x = 81, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x12A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 2 },
            [1] = { .x = 99, .y = 55 },
            [2] = { .x = 118, .y = 113 },
            [3] = { .x = 0, .y = 112 },
        }}
    },
};

const struct ExaminationData gUnknown_0801F390[10] = {
    {
        .examinationSection = 0x140,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 164, .y = 119 },
            [1] = { .x = 203, .y = 119 },
            [2] = { .x = 203, .y = 159 },
            [3] = { .x = 164, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x140,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 206, .y = 119 },
            [1] = { .x = 239, .y = 115 },
            [2] = { .x = 239, .y = 146 },
            [3] = { .x = 206, .y = 149 },
        }}
    },
    {
        .examinationSection = 0x141,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 146, .y = 32 },
            [1] = { .x = 173, .y = 37 },
            [2] = { .x = 185, .y = 58 },
            [3] = { .x = 155, .y = 73 },
        }}
    },
    {
        .examinationSection = 0x141,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 119, .y = 58 },
            [1] = { .x = 146, .y = 32 },
            [2] = { .x = 156, .y = 72 },
            [3] = { .x = 127, .y = 86 },
        }}
    },
    {
        .examinationSection = 0x141,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 127, .y = 86 },
            [1] = { .x = 186, .y = 58 },
            [2] = { .x = 162, .y = 120 },
            [3] = { .x = 127, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x149,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 47, .y = 43 },
            [1] = { .x = 74, .y = 43 },
            [2] = { .x = 94, .y = 159 },
            [3] = { .x = 28, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x147,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 9, .y = 99 },
            [1] = { .x = 43, .y = 92 },
            [2] = { .x = 41, .y = 110 },
            [3] = { .x = 11, .y = 113 },
        }}
    },
    {
        .examinationSection = 0x142,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 79, .y = 70 },
            [1] = { .x = 127, .y = 72 },
            [2] = { .x = 132, .y = 94 },
            [3] = { .x = 83, .y = 94 },
        }}
    },
    {
        .examinationSection = 0x142,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 42 },
            [1] = { .x = 21, .y = 52 },
            [2] = { .x = 23, .y = 95 },
            [3] = { .x = 0, .y = 95 },
        }}
    },
    {
        .examinationSection = 0x148,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 120 },
            [1] = { .x = 53, .y = 125 },
            [2] = { .x = 55, .y = 141 },
            [3] = { .x = 0, .y = 157 },
        }}
    },
};

const struct ExaminationData gUnknown_0801F458[10] = {
    {
        .examinationSection = 0x144,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 164, .y = 119 },
            [1] = { .x = 203, .y = 119 },
            [2] = { .x = 203, .y = 159 },
            [3] = { .x = 164, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x144,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 206, .y = 119 },
            [1] = { .x = 239, .y = 115 },
            [2] = { .x = 239, .y = 146 },
            [3] = { .x = 206, .y = 149 },
        }}
    },
    {
        .examinationSection = 0x145,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 146, .y = 32 },
            [1] = { .x = 173, .y = 37 },
            [2] = { .x = 185, .y = 58 },
            [3] = { .x = 155, .y = 73 },
        }}
    },
    {
        .examinationSection = 0x145,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 119, .y = 58 },
            [1] = { .x = 146, .y = 32 },
            [2] = { .x = 156, .y = 72 },
            [3] = { .x = 127, .y = 86 },
        }}
    },
    {
        .examinationSection = 0x145,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 127, .y = 86 },
            [1] = { .x = 186, .y = 58 },
            [2] = { .x = 162, .y = 120 },
            [3] = { .x = 127, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x149,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 47, .y = 43 },
            [1] = { .x = 74, .y = 43 },
            [2] = { .x = 94, .y = 159 },
            [3] = { .x = 28, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x147,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 9, .y = 99 },
            [1] = { .x = 43, .y = 92 },
            [2] = { .x = 41, .y = 110 },
            [3] = { .x = 11, .y = 113 },
        }}
    },
    {
        .examinationSection = 0x146,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 79, .y = 70 },
            [1] = { .x = 127, .y = 72 },
            [2] = { .x = 132, .y = 94 },
            [3] = { .x = 83, .y = 94 },
        }}
    },
    {
        .examinationSection = 0x146,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 42 },
            [1] = { .x = 21, .y = 52 },
            [2] = { .x = 23, .y = 95 },
            [3] = { .x = 0, .y = 95 },
        }}
    },
    {
        .examinationSection = 0x148,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 120 },
            [1] = { .x = 53, .y = 125 },
            [2] = { .x = 55, .y = 141 },
            [3] = { .x = 0, .y = 157 },
        }}
    },
};

const struct ExaminationData gUnknown_0801F520[4] = {
    {
        .examinationSection = 0x14A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 122, .y = 109 },
            [1] = { .x = 238, .y = 157 },
            [2] = { .x = 93, .y = 157 },
            [3] = { .x = 48, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x14B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 22 },
            [1] = { .x = 28, .y = 29 },
            [2] = { .x = 41, .y = 114 },
            [3] = { .x = 0, .y = 115 },
        }}
    },
    {
        .examinationSection = 0x14C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 159, .y = 86 },
            [1] = { .x = 195, .y = 90 },
            [2] = { .x = 195, .y = 118 },
            [3] = { .x = 159, .y = 114 },
        }}
    },
    {
        .examinationSection = 0x14D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 226, .y = 0 },
            [1] = { .x = 233, .y = 0 },
            [2] = { .x = 234, .y = 144 },
            [3] = { .x = 222, .y = 143 },
        }}
    },
};

const struct ExaminationData gUnknown_0801F570[14] = {
    {
        .examinationSection = 0x137,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 137, .y = 127 },
            [1] = { .x = 166, .y = 123 },
            [2] = { .x = 167, .y = 141 },
            [3] = { .x = 137, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x137,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 59, .y = 141 },
            [1] = { .x = 95, .y = 136 },
            [2] = { .x = 95, .y = 159 },
            [3] = { .x = 59, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x135,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 158, .y = 94 },
            [1] = { .x = 174, .y = 93 },
            [2] = { .x = 174, .y = 128 },
            [3] = { .x = 158, .y = 111 },
        }}
    },
    {
        .examinationSection = 0x135,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 174, .y = 93 },
            [1] = { .x = 208, .y = 93 },
            [2] = { .x = 208, .y = 128 },
            [3] = { .x = 174, .y = 128 },
        }}
    },
    {
        .examinationSection = 0x135,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 208, .y = 93 },
            [1] = { .x = 239, .y = 107 },
            [2] = { .x = 239, .y = 128 },
            [3] = { .x = 208, .y = 128 },
        }}
    },
    {
        .examinationSection = 0x135,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 112 },
            [1] = { .x = 25, .y = 100 },
            [2] = { .x = 25, .y = 136 },
            [3] = { .x = 0, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x135,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 25, .y = 100 },
            [1] = { .x = 67, .y = 100 },
            [2] = { .x = 67, .y = 136 },
            [3] = { .x = 25, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x135,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 67, .y = 100 },
            [1] = { .x = 88, .y = 100 },
            [2] = { .x = 88, .y = 116 },
            [3] = { .x = 67, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x136,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 207, .y = 32 },
            [1] = { .x = 238, .y = 23 },
            [2] = { .x = 238, .y = 72 },
            [3] = { .x = 207, .y = 68 },
        }}
    },
    {
        .examinationSection = 0x134,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 133, .y = 83 },
            [1] = { .x = 138, .y = 83 },
            [2] = { .x = 138, .y = 98 },
            [3] = { .x = 133, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x134,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 138, .y = 83 },
            [1] = { .x = 173, .y = 83 },
            [2] = { .x = 185, .y = 92 },
            [3] = { .x = 138, .y = 98 },
        }}
    },
    {
        .examinationSection = 0x138,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 101, .y = 76 },
            [1] = { .x = 120, .y = 76 },
            [2] = { .x = 120, .y = 107 },
            [3] = { .x = 101, .y = 107 },
        }}
    },
    {
        .examinationSection = 0x139,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 125, .y = 46 },
            [1] = { .x = 146, .y = 46 },
            [2] = { .x = 146, .y = 71 },
            [3] = { .x = 125, .y = 71 },
        }}
    },
    {
        .examinationSection = 0x13A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 1, .y = 36 },
            [1] = { .x = 51, .y = 45 },
            [2] = { .x = 51, .y = 77 },
            [3] = { .x = 1, .y = 89 },
        }}
    },
};

const struct ExaminationData gUnknown_0801F688[14] = {
    {
        .examinationSection = 0x13D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 137, .y = 127 },
            [1] = { .x = 166, .y = 123 },
            [2] = { .x = 167, .y = 141 },
            [3] = { .x = 137, .y = 144 },
        }}
    },
    {
        .examinationSection = 0x13D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 59, .y = 141 },
            [1] = { .x = 95, .y = 136 },
            [2] = { .x = 95, .y = 159 },
            [3] = { .x = 59, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x13C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 158, .y = 94 },
            [1] = { .x = 174, .y = 93 },
            [2] = { .x = 174, .y = 128 },
            [3] = { .x = 158, .y = 111 },
        }}
    },
    {
        .examinationSection = 0x13C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 174, .y = 93 },
            [1] = { .x = 208, .y = 93 },
            [2] = { .x = 208, .y = 128 },
            [3] = { .x = 174, .y = 128 },
        }}
    },
    {
        .examinationSection = 0x13C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 208, .y = 93 },
            [1] = { .x = 239, .y = 107 },
            [2] = { .x = 239, .y = 128 },
            [3] = { .x = 208, .y = 128 },
        }}
    },
    {
        .examinationSection = 0x13C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 112 },
            [1] = { .x = 25, .y = 100 },
            [2] = { .x = 25, .y = 136 },
            [3] = { .x = 0, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x13C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 25, .y = 100 },
            [1] = { .x = 67, .y = 100 },
            [2] = { .x = 67, .y = 136 },
            [3] = { .x = 25, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x13C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 67, .y = 100 },
            [1] = { .x = 88, .y = 100 },
            [2] = { .x = 88, .y = 116 },
            [3] = { .x = 67, .y = 136 },
        }}
    },
    {
        .examinationSection = 0x136,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 207, .y = 32 },
            [1] = { .x = 238, .y = 23 },
            [2] = { .x = 238, .y = 72 },
            [3] = { .x = 207, .y = 68 },
        }}
    },
    {
        .examinationSection = 0x13B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 133, .y = 83 },
            [1] = { .x = 138, .y = 83 },
            [2] = { .x = 138, .y = 98 },
            [3] = { .x = 133, .y = 90 },
        }}
    },
    {
        .examinationSection = 0x13B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 138, .y = 83 },
            [1] = { .x = 173, .y = 83 },
            [2] = { .x = 185, .y = 92 },
            [3] = { .x = 138, .y = 98 },
        }}
    },
    {
        .examinationSection = 0x138,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 101, .y = 76 },
            [1] = { .x = 120, .y = 76 },
            [2] = { .x = 120, .y = 107 },
            [3] = { .x = 101, .y = 107 },
        }}
    },
    {
        .examinationSection = 0x13E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 125, .y = 46 },
            [1] = { .x = 146, .y = 46 },
            [2] = { .x = 146, .y = 71 },
            [3] = { .x = 125, .y = 71 },
        }}
    },
    {
        .examinationSection = 0x13F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 1, .y = 36 },
            [1] = { .x = 51, .y = 45 },
            [2] = { .x = 51, .y = 77 },
            [3] = { .x = 1, .y = 89 },
        }}
    },
};

const struct ExaminationData gUnknown_0801F7A0[13] = {
    {
        .examinationSection = 0x131,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 41, .y = 126 },
            [1] = { .x = 97, .y = 129 },
            [2] = { .x = 95, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x12F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 65, .y = 81 },
            [1] = { .x = 164, .y = 81 },
            [2] = { .x = 164, .y = 127 },
            [3] = { .x = 65, .y = 127 },
        }}
    },
    {
        .examinationSection = 0xF0,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 163, .y = 54 },
            [1] = { .x = 193, .y = 54 },
            [2] = { .x = 187, .y = 122 },
            [3] = { .x = 162, .y = 122 },
        }}
    },
    {
        .examinationSection = 0x130,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 17, .y = 33 },
            [1] = { .x = 58, .y = 33 },
            [2] = { .x = 58, .y = 120 },
            [3] = { .x = 17, .y = 120 },
        }}
    },
    {
        .examinationSection = 0x12E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 212, .y = 39 },
            [1] = { .x = 239, .y = 29 },
            [2] = { .x = 239, .y = 91 },
            [3] = { .x = 212, .y = 92 },
        }}
    },
    {
        .examinationSection = 0x12E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 216, .y = 92 },
            [1] = { .x = 239, .y = 91 },
            [2] = { .x = 239, .y = 132 },
            [3] = { .x = 216, .y = 132 },
        }}
    },
    {
        .examinationSection = 0x12E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 199, .y = 93 },
            [1] = { .x = 216, .y = 92 },
            [2] = { .x = 216, .y = 121 },
            [3] = { .x = 199, .y = 121 },
        }}
    },
    {
        .examinationSection = 0x12C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 38, .y = 10 },
            [1] = { .x = 203, .y = 10 },
            [2] = { .x = 203, .y = 27 },
            [3] = { .x = 38, .y = 27 },
        }}
    },
    {
        .examinationSection = 0x12D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 211, .y = 10 },
            [1] = { .x = 229, .y = 0 },
            [2] = { .x = 227, .y = 24 },
            [3] = { .x = 216, .y = 29 },
        }}
    },
    {
        .examinationSection = 0x12D,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 229, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 19 },
            [3] = { .x = 227, .y = 24 },
        }}
    },
    {
        .examinationSection = 0x132,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 62, .y = 30 },
            [1] = { .x = 164, .y = 30 },
            [2] = { .x = 164, .y = 81 },
            [3] = { .x = 62, .y = 81 },
        }}
    },
    {
        .examinationSection = 0x132,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 164, .y = 30 },
            [1] = { .x = 214, .y = 30 },
            [2] = { .x = 214, .y = 50 },
            [3] = { .x = 164, .y = 66 },
        }}
    },
    {
        .examinationSection = 0x132,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 25 },
            [1] = { .x = 16, .y = 33 },
            [2] = { .x = 16, .y = 85 },
            [3] = { .x = 0, .y = 87 },
        }}
    },
};

const struct ExaminationData gUnknown_0801F8A4[10] = {
    {
        .examinationSection = 0x14E,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 139 },
            [1] = { .x = 86, .y = 123 },
            [2] = { .x = 88, .y = 142 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x14F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 143, .y = 142 },
            [1] = { .x = 187, .y = 99 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 151, .y = 155 },
        }}
    },
    {
        .examinationSection = 0x14F,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 203, .y = 76 },
            [1] = { .x = 239, .y = 85 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 187, .y = 99 },
        }}
    },
    {
        .examinationSection = 0x150,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 113, .y = 61 },
            [1] = { .x = 159, .y = 75 },
            [2] = { .x = 159, .y = 112 },
            [3] = { .x = 112, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x151,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 179, .y = 0 },
            [1] = { .x = 218, .y = 0 },
            [2] = { .x = 207, .y = 16 },
            [3] = { .x = 169, .y = 16 },
        }}
    },
    {
        .examinationSection = 0x152,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 175, .y = 28 },
            [1] = { .x = 239, .y = 16 },
            [2] = { .x = 239, .y = 55 },
            [3] = { .x = 187, .y = 49 },
        }}
    },
    {
        .examinationSection = 0x153,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 38, .y = 83 },
            [1] = { .x = 75, .y = 83 },
            [2] = { .x = 55, .y = 120 },
            [3] = { .x = 30, .y = 88 },
        }}
    },
    {
        .examinationSection = 0x154,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 15 },
            [1] = { .x = 39, .y = 32 },
            [2] = { .x = 37, .y = 82 },
            [3] = { .x = 0, .y = 84 },
        }}
    },
    {
        .examinationSection = 0x154,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 46, .y = 36 },
            [1] = { .x = 113, .y = 39 },
            [2] = { .x = 112, .y = 96 },
            [3] = { .x = 41, .y = 91 },
        }}
    },
    {
        .examinationSection = 0x155,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 209, .y = 43 },
            [1] = { .x = 239, .y = 37 },
            [2] = { .x = 239, .y = 84 },
            [3] = { .x = 209, .y = 81 },
        }}
    },
};

const struct ExaminationData gUnknown_0801F96C[10] = {
    {
        .examinationSection = 0x156,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 35, .y = 78 },
            [1] = { .x = 64, .y = 78 },
            [2] = { .x = 64, .y = 107 },
            [3] = { .x = 35, .y = 107 },
        }}
    },
    {
        .examinationSection = 0x157,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 157, .y = 125 },
            [1] = { .x = 175, .y = 117 },
            [2] = { .x = 214, .y = 159 },
            [3] = { .x = 178, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x159,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 30, .y = 83 },
            [1] = { .x = 51, .y = 66 },
            [2] = { .x = 113, .y = 118 },
            [3] = { .x = 40, .y = 114 },
        }}
    },
    {
        .examinationSection = 0x159,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 51, .y = 67 },
            [1] = { .x = 70, .y = 44 },
            [2] = { .x = 123, .y = 70 },
            [3] = { .x = 113, .y = 119 },
        }}
    },
    {
        .examinationSection = 0x159,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 71, .y = 116 },
            [1] = { .x = 91, .y = 117 },
            [2] = { .x = 76, .y = 121 },
            [3] = { .x = 58, .y = 141 },
        }}
    },
    {
        .examinationSection = 0x158,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 104, .y = 32 },
            [1] = { .x = 136, .y = 32 },
            [2] = { .x = 136, .y = 60 },
            [3] = { .x = 104, .y = 60 },
        }}
    },
    {
        .examinationSection = 0x15A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 161, .y = 85 },
            [1] = { .x = 205, .y = 85 },
            [2] = { .x = 205, .y = 159 },
            [3] = { .x = 161, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x15A,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 205, .y = 85 },
            [1] = { .x = 239, .y = 89 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 205, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x15B,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 163, .y = 34 },
            [1] = { .x = 191, .y = 34 },
            [2] = { .x = 191, .y = 66 },
            [3] = { .x = 163, .y = 66 },
        }}
    },
    {
        .examinationSection = 0x15C,
        .unk2 = 0x0,
        .unk3 = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 32 },
            [1] = { .x = 31, .y = 41 },
            [2] = { .x = 31, .y = 78 },
            [3] = { .x = 0, .y = 84 },
        }}
    },
};

void InvestigationSegmentSetup_2_2(struct Main *main) {
    DmaCopy16(3, gUnknown_0801F1EC, gMain.roomData, sizeof(gUnknown_0801F1EC));
    DmaCopy16(3, gUnknown_0801EFE4, gTalkData, sizeof(gUnknown_0801EFE4));
    DmaCopy16(3, gUnknown_0801EFDC, gUnknown_03003B70, sizeof(gUnknown_0801EFDC));
    main->currentRoomId = 0;
}

void InvestigationRoomSetup_2_2(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            LOADEXAMDATA(gUnknown_0801F23C);
            if(GetFlag(0, 0xD7)) {
                InvestigationSetPersonAnimation(4, 0x25E4, 0x25E4);
                PlayBGM(0xCC);
            }
            break;
        }
        case 1: {
            if(GetFlag(0, 0xD4) && GetFlag(0, 0xD5) && GetFlag(0, 0xD6)) {
                if(!GetFlag(0, 0xD9)) {
                    InvestigationSetScriptSectionAndFlag(0xAE, 0xD9);
                }
                LOADEXAMDATA(gUnknown_0801F2C8);
                break;
            }
            if(!GetFlag(0, 0xD8)) {
                InvestigationSetScriptSectionAndFlag(0x9B, 0xD8);
            }
            else {
                InvestigationSetPersonAnimation(0x1D, 0x1FEC, 0x1FEC);
                PlayBGM(0xD0);
            }
            LOADEXAMDATA(gUnknown_0801F2A0);
            break;
        }
        case 8: {
            LOADEXAMDATA(gUnknown_0801F2F0);
            if(!GetFlag(0, 0xDA)) {
                InvestigationSetScriptSectionAndFlag(0xB1, 0xDA);
                break;
            }
            InvestigationSetPersonAnimation(0x1E, 0x8A4, 0x8A4);
            PlayBGM(0xDA);
            break;
        }
        case 9: {
            if(GetFlag(0, 0xD3)) {
                LOADEXAMDATA(gUnknown_0801F458);
                if(!GetFlag(0, 0xDC)) {
                    InvestigationSetScriptSectionAndFlag(0xB7, 0xDC);
                    break;
                }
                InvestigationSetPersonAnimation(0x1C, 0x10F0, 0x10F0);
                PlayBGM(0xCD);
            }
            else {
                if(!GetFlag(0, 0xDB)) {
                    InvestigationSetScriptSectionAndFlag(0xB6, 0xDB);
                }
                LOADEXAMDATA(gUnknown_0801F390);
            }
            break;
        }
        case 10: {
            LOADEXAMDATA(gUnknown_0801F520);
            if(GetFlag(0, 0xD1)) {
                if(!GetFlag(0, 0xDE)) {
                    InvestigationSetPersonAnimation(0xA, 0, 0);
                    InvestigationSetScriptSectionAndFlag(0xF4, 0xDE);
                    break;
                }
                if(!GetFlag(0, 0xD2)) {
                    InvestigationSetPersonAnimation(0xF, 0x3628, 0x3628);
                }
                PlayBGM(0x1F);
            }
            else if(!GetFlag(0, 0xDD)) {
                InvestigationSetScriptSectionAndFlag(0xF3, 0xDD);
            }
            else {
                PlayBGM(0x1F);
            }
            break;
        }
        case 11: {
            if(GetFlag(0, 0xD4) && GetFlag(0, 0xD5) && GetFlag(0, 0xD6)) {
                sub_800EAC8(11, 1);
                ChangeFlag(0, 0xF5, 1);
                if(!GetFlag(0, 0xE2)) {
                    InvestigationSetScriptSectionAndFlag(0xDD, 0xE2);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                LOADEXAMDATA(gUnknown_0801F688);
            }
            else if(GetFlag(0, 0xD1)) {
                ChangeFlag(0, 0xF5, 0);
                if(!GetFlag(0, 0xE1)) {
                    InvestigationSetScriptSectionAndFlag(0xDC, 0xE1);
                }
                LOADEXAMDATA(gUnknown_0801F570);
            }
            else if(GetFlag(0, 0xD0)) {
                ChangeFlag(0, 0xF5, 1);
                if(!GetFlag(0, 0xE0)) {
                    InvestigationSetScriptSectionAndFlag(0xCE, 0xE0);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                LOADEXAMDATA(gUnknown_0801F688);
            }
            else {
                ChangeFlag(0, 0xF5, 0);
                if(!GetFlag(0, 0xDF)) {
                    InvestigationSetScriptSectionAndFlag(0xCD, 0xDF);
                }
                else {
                    PlayBGM(0xD7);
                }
                LOADEXAMDATA(gUnknown_0801F570);
            }
            break;
        }
        case 12: {
            LOADEXAMDATA(gUnknown_0801F7A0);
            if(!GetFlag(0, 0xE3)) {
                InvestigationSetScriptSectionAndFlag(0xEF, 0xE3);
            }
            else {
                PlayBGM(0xD7);
            }
            if(!GetFlag(0, 0xD1)) {
                sub_801480C(0x19);
            }
            break;
        }
        case 13: {
            LOADEXAMDATA(gUnknown_0801F8A4);
            if(GetFlag(0, 0xD4) && GetFlag(0, 0xD5) && GetFlag(0, 0xD6)) {
                if(!GetFlag(0, 0xE5)) {
                    InvestigationSetScriptSectionAndFlag(0xFC, 0xE5);
                }
            }
            else if(!GetFlag(0, 0xE4)) {
                InvestigationSetScriptSectionAndFlag(0xFB, 0xE4);
            }
            else {
                PlayBGM(0xD7);
            }
            break;
        }
        case 14: {
            LOADEXAMDATA(gUnknown_0801F96C);
            if(!GetFlag(0, 0xE6)) {
                InvestigationSetPersonAnimation(0x20, 0, 0);
                sub_801480C(0x3D);
                InvestigationSetScriptSectionAndFlag(0x101, 0xE6);
                break;
            }
            InvestigationSetPersonAnimation(0x20, 0, 0);
            sub_801480C(0x3D);
            if(GetFlag(0, 0xF9) && !GetFlag(0, 0xFA)) {
                InvestigationSetScriptSectionAndFlag(0x102, 0xFA);
            }
            PlayBGM(0xCD);
            break;
        }
    }
}

void InvestigationRoomUpdate_2_2(struct Main *main) {
}
