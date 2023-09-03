#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"
#include "case_data.h"
#include "animation.h"

const struct InvestigationPresentData gInvestigationPresentData_3_4[46] = {
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x5,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x89,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0x0,
        .evidenceId = 0x70,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8A,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x70,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x9E,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x77,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8B,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x7E,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8C,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x7F,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8D,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x80,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8E,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x90,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x91,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x6D,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x92,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3C,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x93,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x3E,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x94,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x65,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x95,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x67,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x96,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x68,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x97,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x0,
        .roomseq = 0xFF,
        .evidenceId = 0x69,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x98,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x12,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x18,
        .isProfile = 0x0,
        .interestedSection = 0xC2,
        .uninterestedSection = 0xC2,
    },
    {
        .roomId = 0x12,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x18,
        .isProfile = 0x1,
        .interestedSection = 0xC2,
        .uninterestedSection = 0xC2,
    },
    {
        .roomId = 0x14,
        .roomseq = 0xFF,
        .evidenceId = 0x8C,
        .personId = 0x27,
        .isProfile = 0x0,
        .interestedSection = 0xA4,
        .uninterestedSection = 0xAB,
    },
    {
        .roomId = 0x14,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x27,
        .isProfile = 0x1,
        .interestedSection = 0xAB,
        .uninterestedSection = 0xAB,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x27,
        .isProfile = 0x0,
        .interestedSection = 0xD4,
        .uninterestedSection = 0xD4,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x27,
        .isProfile = 0x1,
        .interestedSection = 0xD4,
        .uninterestedSection = 0xD4,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x70,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8A,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x77,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8B,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x7E,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8C,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x7F,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0x8D,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x80,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xF0,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x82,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xF2,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x83,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xF1,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x84,
        .personId = 0xA,
        .isProfile = 0x0,
        .interestedSection = 0xF3,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x2,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x90,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x16,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x91,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x6D,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x92,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x3C,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x93,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x3E,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x94,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x65,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x95,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x67,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x96,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x68,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x97,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x11,
        .roomseq = 0xFF,
        .evidenceId = 0x69,
        .personId = 0xA,
        .isProfile = 0x1,
        .interestedSection = 0x98,
        .uninterestedSection = 0x8F,
    },
    {
        .roomId = 0x16,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x25,
        .isProfile = 0x0,
        .interestedSection = 0x127,
        .uninterestedSection = 0x127,
    },
    {
        .roomId = 0x16,
        .roomseq = 0xFF,
        .evidenceId = 0x67,
        .personId = 0x25,
        .isProfile = 0x1,
        .interestedSection = 0x124,
        .uninterestedSection = 0x128,
    },
    {
        .roomId = 0x2,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0xF,
        .isProfile = 0x0,
        .interestedSection = 0x108,
        .uninterestedSection = 0x108,
    },
    {
        .roomId = 0x2,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0xF,
        .isProfile = 0x1,
        .interestedSection = 0x108,
        .uninterestedSection = 0x108,
    },
    {
        .roomId = 0x2,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x8,
        .isProfile = 0x0,
        .interestedSection = 0x109,
        .uninterestedSection = 0x109,
    },
    {
        .roomId = 0x2,
        .roomseq = 0xFF,
        .evidenceId = 0xFF,
        .personId = 0x8,
        .isProfile = 0x1,
        .interestedSection = 0x109,
        .uninterestedSection = 0x109,
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

const struct TalkData gTalkData_3_4[14] = {
    {
        .roomId = 0x0,
        .personId = 0xA,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x6C, 0x6D, 0xFF, 0xFF },
        .talkFlagId = { 0xC3, 0xC4, 0xFF, 0xFF },
        .talkSection = { 0x86, 0x87, 0x0, 0x0 }
    },
    {
        .roomId = 0x0,
        .personId = 0xA,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x6C, 0x6D, 0x6E, 0xFF },
        .talkFlagId = { 0xC3, 0xC4, 0xC5, 0xFF },
        .talkSection = { 0x86, 0x87, 0x88, 0x0 }
    },
    {
        .roomId = 0x0,
        .personId = 0xA,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x6C, 0x6D, 0x6E, 0x8B },
        .talkFlagId = { 0xC3, 0xC4, 0xC5, 0xD8 },
        .talkSection = { 0x86, 0x87, 0x88, 0x9A }
    },
    {
        .roomId = 0x12,
        .personId = 0x18,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x6F, 0x71, 0x5D, 0xFF },
        .talkFlagId = { 0xCF, 0xD0, 0xD1, 0xFF },
        .talkSection = { 0xBF, 0xC0, 0xC1, 0x0 }
    },
    {
        .roomId = 0x14,
        .personId = 0x27,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x6F, 0x70, 0x4D, 0xFF },
        .talkFlagId = { 0xC6, 0xC7, 0xC8, 0xFF },
        .talkSection = { 0xAA, 0xAA, 0xAA, 0x0 }
    },
    {
        .roomId = 0x11,
        .personId = 0x27,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x6F, 0x72, 0xFF, 0xFF },
        .talkFlagId = { 0xD2, 0xD3, 0xFF, 0xFF },
        .talkSection = { 0xD1, 0xD2, 0x0, 0x0 }
    },
    {
        .roomId = 0x11,
        .personId = 0x27,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x6F, 0x72, 0x73, 0xFF },
        .talkFlagId = { 0xD2, 0xD3, 0xD4, 0xFF },
        .talkSection = { 0xD1, 0xD2, 0xD3, 0x0 }
    },
    {
        .roomId = 0x11,
        .personId = 0xA,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x5D, 0x74, 0x75, 0xFF },
        .talkFlagId = { 0xD9, 0xDA, 0xDB, 0xFF },
        .talkSection = { 0xED, 0xEE, 0xEF, 0x0 }
    },
    {
        .roomId = 0x16,
        .personId = 0x25,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x76, 0x77, 0x78, 0xFF },
        .talkFlagId = { 0xD5, 0xD6, 0xD7, 0xFF },
        .talkSection = { 0x124, 0x125, 0x126, 0x0 }
    },
    {
        .roomId = 0x2,
        .personId = 0xF,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x79, 0x7A, 0xFF, 0xFF },
        .talkFlagId = { 0xCB, 0xCA, 0xFF, 0xFF },
        .talkSection = { 0x102, 0x103, 0x0, 0x0 }
    },
    {
        .roomId = 0x2,
        .personId = 0x8,
        .unused2 = 0xFF,
        .enableFlag = 0x1,
        .iconId = { 0x70, 0x7B, 0xFF, 0xFF },
        .talkFlagId = { 0xC9, 0xCC, 0xFF, 0xFF },
        .talkSection = { 0x104, 0x105, 0x0, 0x0 }
    },
    {
        .roomId = 0x2,
        .personId = 0x8,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x70, 0x7B, 0x7C, 0xFF },
        .talkFlagId = { 0xC9, 0xCC, 0xCE, 0xFF },
        .talkSection = { 0x104, 0x105, 0x106, 0x0 }
    },
    {
        .roomId = 0x2,
        .personId = 0x8,
        .unused2 = 0xFF,
        .enableFlag = 0x0,
        .iconId = { 0x70, 0x7B, 0x7C, 0x4A },
        .talkFlagId = { 0xC9, 0xCC, 0xCE, 0xCD },
        .talkSection = { 0x104, 0x105, 0x106, 0x107 }
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

const u8 gRoomData_3_4[26][5] = {
    { 0x12, 0x01, 0x14, 0x0F, 0xFF },
	{ 0x11, 0x00, 0x0F, 0xFF, 0xFF },
	{ 0x22, 0x00, 0xFF, 0xFF, 0xFF },
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
	{ 0x13, 0x00, 0x01, 0x14, 0xFF },
	{ 0x5A, 0xFF, 0xFF, 0xFF, 0xFF },
	{ 0x5B, 0x12, 0xFF, 0xFF, 0xFF },
	{ 0x59, 0x11, 0x13, 0xFF, 0xFF },
	{ 0x58, 0x12, 0x14, 0xFF, 0xFF },
	{ 0x5D, 0x00, 0x0F, 0xFF, 0xFF },
	{ 0x80, 0x19, 0xFF, 0xFF, 0xFF },
	{ 0x80, 0x14, 0xFF, 0xFF, 0xFF },
	{ 0x60, 0x15, 0xFF, 0xFF, 0xFF },
	{ 0x00, 0x00, 0x00, 0x00, 0x00 },
	{ 0x60, 0x15, 0xFF, 0xFF, 0xFF },
};

const struct ExaminationData gExaminationData_3_4_00[5] = {
    {
        .examinationSection = 0x81,
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
        .examinationSection = 0x82,
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
        .examinationSection = 0x83,
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
        .examinationSection = 0x84,
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
        .examinationSection = 0x85,
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

const struct ExaminationData gExaminationData_3_4_01[5] = {
    {
        .examinationSection = 0x9B,
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
        .examinationSection = 0x9C,
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
        .examinationSection = 0x83,
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
        .examinationSection = 0x9D,
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
        .examinationSection = 0x85,
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

const struct ExaminationData gExaminationData_3_4_02[2] = {
    {
        .examinationSection = 0xA0,
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
        .examinationSection = 0xA1,
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

const struct ExaminationData gExaminationData_3_4_03[10] = {
    {
        .examinationSection = 0xAD,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 54, .y = 133 },
            [1] = { .x = 88, .y = 121 },
            [2] = { .x = 88, .y = 159 },
            [3] = { .x = 50, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xAD,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 88, .y = 121 },
            [1] = { .x = 173, .y = 122 },
            [2] = { .x = 173, .y = 159 },
            [3] = { .x = 88, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xAD,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 173, .y = 122 },
            [1] = { .x = 224, .y = 134 },
            [2] = { .x = 229, .y = 159 },
            [3] = { .x = 173, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xAE,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 39, .y = 99 },
            [1] = { .x = 100, .y = 103 },
            [2] = { .x = 103, .y = 119 },
            [3] = { .x = 39, .y = 122 },
        }}
    },
    {
        .examinationSection = 0xAE,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 108, .y = 97 },
            [1] = { .x = 129, .y = 94 },
            [2] = { .x = 131, .y = 105 },
            [3] = { .x = 108, .y = 105 },
        }}
    },
    {
        .examinationSection = 0xAE,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 142, .y = 108 },
            [1] = { .x = 239, .y = 97 },
            [2] = { .x = 239, .y = 115 },
            [3] = { .x = 142, .y = 118 },
        }}
    },
    {
        .examinationSection = 0xAF,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 141, .y = 62 },
            [1] = { .x = 217, .y = 57 },
            [2] = { .x = 217, .y = 101 },
            [3] = { .x = 141, .y = 101 },
        }}
    },
    {
        .examinationSection = 0xB1,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 67 },
            [1] = { .x = 22, .y = 67 },
            [2] = { .x = 22, .y = 108 },
            [3] = { .x = 0, .y = 109 },
        }}
    },
    {
        .examinationSection = 0xB2,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 108, .y = 0 },
            [1] = { .x = 166, .y = 0 },
            [2] = { .x = 166, .y = 36 },
            [3] = { .x = 108, .y = 36 },
        }}
    },
    {
        .examinationSection = 0xB0,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 102 },
            [3] = { .x = 0, .y = 109 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_04[9] = {
    {
        .examinationSection = 0xB8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 101, .y = 54 },
            [1] = { .x = 122, .y = 54 },
            [2] = { .x = 122, .y = 76 },
            [3] = { .x = 101, .y = 76 },
        }}
    },
    {
        .examinationSection = 0xBA,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 51, .y = 42 },
            [1] = { .x = 66, .y = 51 },
            [2] = { .x = 66, .y = 116 },
            [3] = { .x = 56, .y = 121 },
        }}
    },
    {
        .examinationSection = 0xB9,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 23, .y = 0 },
            [2] = { .x = 26, .y = 87 },
            [3] = { .x = 0, .y = 76 },
        }}
    },
    {
        .examinationSection = 0xB9,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 22, .y = 1 },
            [1] = { .x = 74, .y = 87 },
            [2] = { .x = 42, .y = 159 },
            [3] = { .x = 26, .y = 87 },
        }}
    },
    {
        .examinationSection = 0xB9,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 90, .y = 53 },
            [1] = { .x = 113, .y = 106 },
            [2] = { .x = 101, .y = 159 },
            [3] = { .x = 42, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xB5,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 94 },
            [1] = { .x = 29, .y = 94 },
            [2] = { .x = 38, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xB7,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 152, .y = 59 },
            [1] = { .x = 162, .y = 54 },
            [2] = { .x = 161, .y = 122 },
            [3] = { .x = 152, .y = 113 },
        }}
    },
    {
        .examinationSection = 0xB6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 134, .y = 67 },
            [1] = { .x = 146, .y = 55 },
            [2] = { .x = 149, .y = 114 },
            [3] = { .x = 130, .y = 115 },
        }}
    },
    {
        .examinationSection = 0xB6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 166, .y = 48 },
            [1] = { .x = 182, .y = 29 },
            [2] = { .x = 181, .y = 145 },
            [3] = { .x = 153, .y = 149 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_05[9] = {
    {
        .examinationSection = 0xB8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 101, .y = 54 },
            [1] = { .x = 122, .y = 54 },
            [2] = { .x = 122, .y = 76 },
            [3] = { .x = 101, .y = 76 },
        }}
    },
    {
        .examinationSection = 0xBD,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 51, .y = 42 },
            [1] = { .x = 66, .y = 51 },
            [2] = { .x = 66, .y = 116 },
            [3] = { .x = 56, .y = 121 },
        }}
    },
    {
        .examinationSection = 0xBC,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 23, .y = 0 },
            [2] = { .x = 26, .y = 87 },
            [3] = { .x = 0, .y = 76 },
        }}
    },
    {
        .examinationSection = 0xBC,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 22, .y = 1 },
            [1] = { .x = 74, .y = 87 },
            [2] = { .x = 42, .y = 159 },
            [3] = { .x = 26, .y = 87 },
        }}
    },
    {
        .examinationSection = 0xBC,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 90, .y = 53 },
            [1] = { .x = 113, .y = 106 },
            [2] = { .x = 101, .y = 159 },
            [3] = { .x = 42, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xBB,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 94 },
            [1] = { .x = 29, .y = 94 },
            [2] = { .x = 38, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xB7,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 152, .y = 59 },
            [1] = { .x = 162, .y = 54 },
            [2] = { .x = 161, .y = 122 },
            [3] = { .x = 152, .y = 113 },
        }}
    },
    {
        .examinationSection = 0xB6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 134, .y = 67 },
            [1] = { .x = 146, .y = 55 },
            [2] = { .x = 149, .y = 114 },
            [3] = { .x = 130, .y = 115 },
        }}
    },
    {
        .examinationSection = 0xB6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 166, .y = 48 },
            [1] = { .x = 182, .y = 29 },
            [2] = { .x = 181, .y = 145 },
            [3] = { .x = 153, .y = 149 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_06[8] = {
    {
        .examinationSection = 0xA6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 34, .y = 79 },
            [1] = { .x = 48, .y = 78 },
            [2] = { .x = 60, .y = 146 },
            [3] = { .x = 9, .y = 156 },
        }}
    },
    {
        .examinationSection = 0xA6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 134, .y = 78 },
            [1] = { .x = 148, .y = 76 },
            [2] = { .x = 152, .y = 154 },
            [3] = { .x = 121, .y = 146 },
        }}
    },
    {
        .examinationSection = 0xA6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 204, .y = 89 },
            [1] = { .x = 212, .y = 87 },
            [2] = { .x = 227, .y = 152 },
            [3] = { .x = 198, .y = 148 },
        }}
    },
    {
        .examinationSection = 0xA6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 68, .y = 95 },
            [1] = { .x = 74, .y = 95 },
            [2] = { .x = 74, .y = 109 },
            [3] = { .x = 62, .y = 109 },
        }}
    },
    {
        .examinationSection = 0xA6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 169, .y = 95 },
            [1] = { .x = 177, .y = 95 },
            [2] = { .x = 177, .y = 109 },
            [3] = { .x = 169, .y = 109 },
        }}
    },
    {
        .examinationSection = 0xA7,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 68 },
            [3] = { .x = 0, .y = 68 },
        }}
    },
    {
        .examinationSection = 0xA8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 93, .y = 74 },
            [1] = { .x = 146, .y = 74 },
            [2] = { .x = 146, .y = 109 },
            [3] = { .x = 93, .y = 109 },
        }}
    },
    {
        .examinationSection = 0xA9,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 49, .y = 109 },
            [1] = { .x = 191, .y = 109 },
            [2] = { .x = 194, .y = 141 },
            [3] = { .x = 46, .y = 142 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_07[19] = {
    {
        .examinationSection = 0xCD,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 255, .y = 9 },
            [1] = { .x = 371, .y = 9 },
            [2] = { .x = 371, .y = 77 },
            [3] = { .x = 255, .y = 77 },
        }}
    },
    {
        .examinationSection = 0xCE,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 289, .y = 133 },
            [1] = { .x = 363, .y = 133 },
            [2] = { .x = 380, .y = 159 },
            [3] = { .x = 277, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xCF,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 427, .y = 112 },
            [1] = { .x = 449, .y = 111 },
            [2] = { .x = 449, .y = 121 },
            [3] = { .x = 427, .y = 124 },
        }}
    },
    {
        .examinationSection = 0xCF,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 414, .y = 122 },
            [1] = { .x = 427, .y = 112 },
            [2] = { .x = 427, .y = 124 },
            [3] = { .x = 415, .y = 126 },
        }}
    },
    {
        .examinationSection = 0xC7,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 27, .y = 50 },
            [1] = { .x = 52, .y = 50 },
            [2] = { .x = 52, .y = 94 },
            [3] = { .x = 27, .y = 94 },
        }}
    },
    {
        .examinationSection = 0xCA,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 178, .y = 113 },
            [1] = { .x = 208, .y = 104 },
            [2] = { .x = 209, .y = 126 },
            [3] = { .x = 181, .y = 140 },
        }}
    },
    {
        .examinationSection = 0xCA,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 185, .y = 138 },
            [1] = { .x = 209, .y = 126 },
            [2] = { .x = 207, .y = 156 },
            [3] = { .x = 185, .y = 147 },
        }}
    },
    {
        .examinationSection = 0xCA,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 209, .y = 126 },
            [1] = { .x = 231, .y = 132 },
            [2] = { .x = 231, .y = 141 },
            [3] = { .x = 207, .y = 156 },
        }}
    },
    {
        .examinationSection = 0xC8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 34, .y = 76 },
            [1] = { .x = 69, .y = 116 },
            [2] = { .x = 20, .y = 124 },
            [3] = { .x = 2, .y = 96 },
        }}
    },
    {
        .examinationSection = 0xC8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 52, .y = 66 },
            [1] = { .x = 82, .y = 100 },
            [2] = { .x = 69, .y = 116 },
            [3] = { .x = 52, .y = 96 },
        }}
    },
    {
        .examinationSection = 0xC8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 52, .y = 39 },
            [1] = { .x = 92, .y = 58 },
            [2] = { .x = 82, .y = 100 },
            [3] = { .x = 52, .y = 66 },
        }}
    },
    {
        .examinationSection = 0xC8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 76, .y = 10 },
            [1] = { .x = 90, .y = 17 },
            [2] = { .x = 92, .y = 58 },
            [3] = { .x = 52, .y = 39 },
        }}
    },
    {
        .examinationSection = 0xC8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 92, .y = 58 },
            [1] = { .x = 189, .y = 57 },
            [2] = { .x = 188, .y = 100 },
            [3] = { .x = 82, .y = 100 },
        }}
    },
    {
        .examinationSection = 0xC8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 189, .y = 57 },
            [1] = { .x = 216, .y = 50 },
            [2] = { .x = 223, .y = 83 },
            [3] = { .x = 188, .y = 100 },
        }}
    },
    {
        .examinationSection = 0xC8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 223, .y = 83 },
            [1] = { .x = 231, .y = 126 },
            [2] = { .x = 214, .y = 125 },
            [3] = { .x = 188, .y = 100 },
        }}
    },
    {
        .examinationSection = 0xCB,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 464, .y = 97 },
            [1] = { .x = 477, .y = 114 },
            [2] = { .x = 461, .y = 144 },
            [3] = { .x = 455, .y = 144 },
        }}
    },
    {
        .examinationSection = 0xCB,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 424, .y = 130 },
            [1] = { .x = 460, .y = 121 },
            [2] = { .x = 455, .y = 144 },
            [3] = { .x = 424, .y = 140 },
        }}
    },
    {
        .examinationSection = 0xCC,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 461, .y = 65 },
            [1] = { .x = 472, .y = 65 },
            [2] = { .x = 472, .y = 89 },
            [3] = { .x = 461, .y = 89 },
        }}
    },
    {
        .examinationSection = 0xC9,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 99, .y = 106 },
            [1] = { .x = 175, .y = 106 },
            [2] = { .x = 180, .y = 137 },
            [3] = { .x = 73, .y = 137 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_08[7] = {
    {
        .examinationSection = 0xF5,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 149, .y = 35 },
            [1] = { .x = 171, .y = 35 },
            [2] = { .x = 171, .y = 54 },
            [3] = { .x = 149, .y = 54 },
        }}
    },
    {
        .examinationSection = 0xF6,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 44 },
            [1] = { .x = 20, .y = 44 },
            [2] = { .x = 20, .y = 94 },
            [3] = { .x = 0, .y = 94 },
        }}
    },
    {
        .examinationSection = 0xF7,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 110, .y = 37 },
            [1] = { .x = 132, .y = 37 },
            [2] = { .x = 132, .y = 61 },
            [3] = { .x = 110, .y = 61 },
        }}
    },
    {
        .examinationSection = 0xF8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 107 },
            [1] = { .x = 72, .y = 55 },
            [2] = { .x = 79, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xF8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 72, .y = 55 },
            [1] = { .x = 109, .y = 55 },
            [2] = { .x = 108, .y = 112 },
            [3] = { .x = 79, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xF8,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 141, .y = 70 },
            [1] = { .x = 239, .y = 71 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 171, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xF9,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 115, .y = 17 },
            [1] = { .x = 131, .y = 17 },
            [2] = { .x = 131, .y = 37 },
            [3] = { .x = 115, .y = 37 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_09[4] = {
    {
        .examinationSection = 0x10D,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 58, .y = 75 },
            [1] = { .x = 95, .y = 83 },
            [2] = { .x = 79, .y = 159 },
            [3] = { .x = 9, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x10E,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 144, .y = 42 },
            [1] = { .x = 179, .y = 27 },
            [2] = { .x = 179, .y = 159 },
            [3] = { .x = 144, .y = 123 },
        }}
    },
    {
        .examinationSection = 0x10E,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 179, .y = 27 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 179, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x10F,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 96, .y = 27 },
            [1] = { .x = 134, .y = 27 },
            [2] = { .x = 134, .y = 95 },
            [3] = { .x = 96, .y = 95 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_10[7] = {
    {
        .examinationSection = 0x11D,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 66, .y = 0 },
            [1] = { .x = 182, .y = 0 },
            [2] = { .x = 170, .y = 81 },
            [3] = { .x = 66, .y = 54 },
        }}
    },
    {
        .examinationSection = 0x11E,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 0 },
            [1] = { .x = 27, .y = 0 },
            [2] = { .x = 27, .y = 118 },
            [3] = { .x = 0, .y = 137 },
        }}
    },
    {
        .examinationSection = 0x11F,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 75, .y = 86 },
            [1] = { .x = 176, .y = 86 },
            [2] = { .x = 154, .y = 159 },
            [3] = { .x = 81, .y = 145 },
        }}
    },
    {
        .examinationSection = 0x11F,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 175, .y = 86 },
            [1] = { .x = 221, .y = 104 },
            [2] = { .x = 213, .y = 159 },
            [3] = { .x = 154, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x120,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 210, .y = 19 },
            [1] = { .x = 239, .y = 3 },
            [2] = { .x = 239, .y = 41 },
            [3] = { .x = 217, .y = 48 },
        }}
    },
    {
        .examinationSection = 0x121,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 221, .y = 51 },
            [1] = { .x = 239, .y = 48 },
            [2] = { .x = 239, .y = 111 },
            [3] = { .x = 221, .y = 102 },
        }}
    },
    {
        .examinationSection = 0x122,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 201, .y = 41 },
            [1] = { .x = 211, .y = 39 },
            [2] = { .x = 211, .y = 84 },
            [3] = { .x = 201, .y = 83 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_11[8] = {
    {
        .examinationSection = 0x113,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 0, .y = 9 },
            [1] = { .x = 42, .y = 17 },
            [2] = { .x = 42, .y = 102 },
            [3] = { .x = 0, .y = 139 },
        }}
    },
    {
        .examinationSection = 0x114,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 42, .y = 10 },
            [1] = { .x = 76, .y = 10 },
            [2] = { .x = 76, .y = 109 },
            [3] = { .x = 42, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x119,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 112, .y = 94 },
            [1] = { .x = 140, .y = 94 },
            [2] = { .x = 141, .y = 112 },
            [3] = { .x = 112, .y = 112 },
        }}
    },
    {
        .examinationSection = 0x115,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 76, .y = 52 },
            [1] = { .x = 138, .y = 52 },
            [2] = { .x = 138, .y = 102 },
            [3] = { .x = 76, .y = 102 },
        }}
    },
    {
        .examinationSection = 0x116,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 141, .y = 25 },
            [1] = { .x = 179, .y = 25 },
            [2] = { .x = 179, .y = 92 },
            [3] = { .x = 141, .y = 92 },
        }}
    },
    {
        .examinationSection = 0x118,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 158, .y = 79 },
            [1] = { .x = 198, .y = 65 },
            [2] = { .x = 177, .y = 143 },
            [3] = { .x = 155, .y = 105 },
        }}
    },
    {
        .examinationSection = 0x118,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 197, .y = 65 },
            [1] = { .x = 239, .y = 79 },
            [2] = { .x = 239, .y = 143 },
            [3] = { .x = 177, .y = 143 },
        }}
    },
    {
        .examinationSection = 0x117,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 188, .y = 14 },
            [1] = { .x = 239, .y = 1 },
            [2] = { .x = 239, .y = 93 },
            [3] = { .x = 188, .y = 80 },
        }}
    },
};

const struct ExaminationData gExaminationData_3_4_12[6] = {
    {
        .examinationSection = 0xFE,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 135, .y = 17 },
            [1] = { .x = 168, .y = 17 },
            [2] = { .x = 168, .y = 31 },
            [3] = { .x = 135, .y = 31 },
        }}
    },
    {
        .examinationSection = 0xFE,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 163, .y = 29 },
            [1] = { .x = 216, .y = 0 },
            [2] = { .x = 205, .y = 159 },
            [3] = { .x = 163, .y = 125 },
        }}
    },
    {
        .examinationSection = 0xFE,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 216, .y = 0 },
            [1] = { .x = 239, .y = 0 },
            [2] = { .x = 239, .y = 159 },
            [3] = { .x = 205, .y = 159 },
        }}
    },
    {
        .examinationSection = 0xFF,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 21, .y = 38 },
            [1] = { .x = 86, .y = 38 },
            [2] = { .x = 86, .y = 159 },
            [3] = { .x = 0, .y = 159 },
        }}
    },
    {
        .examinationSection = 0x100,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 119, .y = 68 },
            [1] = { .x = 144, .y = 68 },
            [2] = { .x = 145, .y = 117 },
            [3] = { .x = 119, .y = 117 },
        }}
    },
    {
        .examinationSection = 0x101,
        .type = 0x0,
        .animId = 0xFF,
        .area = { .points = {
            [0] = { .x = 92, .y = 59 },
            [1] = { .x = 113, .y = 59 },
            [2] = { .x = 113, .y = 85 },
            [3] = { .x = 92, .y = 85 },
        }}
    },
};

void InvestigationSegmentSetup_3_4(struct Main *main) {
    DmaCopy16(3, gRoomData_3_4, gMain.roomData, sizeof(gRoomData_3_4));
    DmaCopy16(3, gTalkData_3_4, gTalkData, sizeof(gTalkData_3_4));
    main->currentRoomId = 0;
}

void InvestigationRoomSetup_3_4(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            if(GetFlag(0, 0x94)) {
                if(!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0x99, 0x9C);
                }
                else if(!GetFlag(0, 0x95)) {
                    InvestigationSetPersonAnimation(0xA, 0xB48, 0xB48);
                    PlayBGM(1);
                }
                if(!GetFlag(0, 0x95)) {
                    LOADEXAMDATA(gExaminationData_3_4_00);
                }
                else {
                    LOADEXAMDATA(gExaminationData_3_4_01);
                }
            }
            else {
                if(GetFlag(0, 0x9B)) {
                    InvestigationSetPersonAnimation(0xA, 0xB48, 0xB48);
                    PlayBGM(1);
                }
                LOADEXAMDATA(gExaminationData_3_4_00);
            }
            break;
        }
        case 1: {
            if(GetFlag(0, 0x91)) {
                if(!GetFlag(0, 0x9E)) {
                    InvestigationSetScriptSectionAndFlag(0xA2, 0x9E);
                }
            }
            else if(!GetFlag(0, 0x9D)) {
                InvestigationSetScriptSectionAndFlag(0x9F, 0x9D);
            }
            LOADEXAMDATA(gExaminationData_3_4_02);
            break;
        }
        case 19: {
            if(!GetFlag(0, 0x9F)) {
                InvestigationSetScriptSectionAndFlag(0xAC, 0x9F);
            }
            else {
                PlayBGM(0xD7);
            }
            LOADEXAMDATA(gExaminationData_3_4_03);
            break;
        }
        case 18: {
            if(!GetFlag(0, 0xA0)) {
                InvestigationSetScriptSectionAndFlag(0xB3, 0xA0);
                LOADEXAMDATA(gExaminationData_3_4_04);
            }
            else if(!GetFlag(0, 0xBB)) {
                InvestigationSetPersonAnimation(0x18, 0, 0);
                PlayBGM(0x16);
                LOADEXAMDATA(gExaminationData_3_4_04);
            }
            else {
                LOADEXAMDATA(gExaminationData_3_4_05);
            }
            break;
        }
        case 20: {
            if(!GetFlag(0, 0xA1)) {
                InvestigationSetScriptSectionAndFlag(0xA3, 0xA1);
            }
            else if(!GetFlag(0, 0x92)) {
                InvestigationSetPersonAnimation(0x27, 0, 0);
                PlayBGM(0xDA);
            }
            LOADEXAMDATA(gExaminationData_3_4_06);
            break;
        }
        case 17: {
            if(GetFlag(0, 0x95)) {
                if(!GetFlag(0, 0xA3)) {
                    InvestigationSetScriptSectionAndFlag(0xD5, 0xA3);
                }
                else {
                    InvestigationSetPersonAnimation(0xA, 0, 0);
                    PlayBGM(0xC);
                }
            }
            else if(!GetFlag(0, 0xA2)) {
                InvestigationSetScriptSectionAndFlag(0xC3, 0xA2);
            }
            else {
                if(GetFlag(0, 0x94)) {
                    InvestigationSetScriptSectionAndFlag(0xC4, 0xFF);
                }
                else if(GetFlag(0, 0xA5) && GetFlag(0, 0xB8) && GetFlag(0, 0xB9) && GetFlag(0, 0xBA)) {
                    InvestigationSetScriptSectionAndFlag(0xC5, 0xFF);
                }
                else {
                    PlayBGM(0xDA);
                }
                InvestigationSetPersonAnimation(0x4027, 0, 0);
            }
            LOADEXAMDATA(gExaminationData_3_4_07);
            break;
        }
        case 15: {
            if(!GetFlag(0, 0xA4)) {
                InvestigationSetScriptSectionAndFlag(0xF4, 0xA4);
            }
            LOADEXAMDATA(gExaminationData_3_4_08);
            break;
        }
        case 22: {
            if(!GetFlag(0, 0xA5)) {
                InvestigationSetScriptSectionAndFlag(0x11A, 0xA5);
            }
            else if(!GetFlag(0, 0x9A)) {
                InvestigationSetPersonAnimation(0x25, 0, 0);
                PlayBGM(0xD3);
            }
            LOADEXAMDATA(gExaminationData_3_4_10);
            break;
        }
        case 21: {
            if(!GetFlag(0, 0xA7)) {
                InvestigationSetScriptSectionAndFlag(0x110, 0xA7);
            }
            else {
                PlayAnimation(0x1C);
                PlayAnimation(0x1E);
                PlayBGM(0xD3);
            }
            LOADEXAMDATA(gExaminationData_3_4_11);
            break;
        }
        case 2: {
            if(!GetFlag(0, 0xA8)) {
                InvestigationSetScriptSectionAndFlag(0xFA, 0xA8);
            }
            else if(!GetFlag(0, 0xA7)) {
                if(GetFlag(0, 0x99)) {
                    InvestigationSetPersonAnimation(8, 0x3C68, 0x3C68);
                }
                else {
                    InvestigationSetPersonAnimation(0xF, 0x3628, 0x3628);
                }
                PlayBGM(0xC);
            }
            else if(!GetFlag(0, 0xA9)) {
                InvestigationSetScriptSectionAndFlag(0xFC, 0xA9);
            }
            LOADEXAMDATA(gExaminationData_3_4_12);
            break;
        }
        case 25: {
            if(!GetFlag(0, 0xA6)) {
                InvestigationSetScriptSectionAndFlag(0x10B, 0xA6);
            }
            LOADEXAMDATA(gExaminationData_3_4_09);
            break;
        }
    }
}

void InvestigationRoomUpdate_3_4(struct Main *main) {
    switch(main->currentRoomId) {
        case 0: {
            if(GetFlag(0, 0x95)) {
                LOADEXAMDATA(gExaminationData_3_4_01);
            }
            break;
        }
        case 18: {
            if(GetFlag(0, 0xBB)) {
                LOADEXAMDATA(gExaminationData_3_4_05);
            }
            break;
        }
    }
}
