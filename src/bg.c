
#include "global.h"
#include "background.h"
#include "script.h"
#include "investigation.h"
#include "graphics.h"
#include "ewram.h"
#include "animation.h"
#include "graphics.h"
#include "m4a.h"
#include "constants/bg.h"
#include "constants/process.h"

/* was bg3 in pwaa1 */
#include "data/background.h"

const u8 gNameTagTiles[24] = { /* gNameTagTiles */
    0x54, 0x55, 0x56, 0x57, 0x58, 0x59,
    0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f,
    0x0a, 0x0b, 0x0b, 0x0b, 0x0b, 0x0c,
    0x0d, 0x0b, 0x0b, 0x0b, 0x0b, 0x0e,
};

const u8 gTextboxTiles[0x400] = { /* gTextboxTiles */
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x2, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8,
    0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x8, 0x3, 0x0, 0x0,
    0x6, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1,
    0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x7, 0x0, 0x0,
    0x6, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1,
    0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x7, 0x0, 0x0,
    0x6, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1,
    0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x7, 0x0, 0x0,
    0x6, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1,
    0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x1, 0x7, 0x0, 0x0,
    0x4, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9,
    0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x9, 0x5, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
    0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
};

const u16 gMapCourtRecordNormalWindow[32*12] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0041, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0042, 0x0043, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x004A, 0x0000,
    0x0000, 0x0044, 0x1140, 0x1141, 0x1142, 0x1143, 0x1144, 0x1145, 0x1146, 0x1147, 0x0045, 0x00A0, 0x00A1, 0x00A2, 0x00A3, 0x00B0, 0x00B1, 0x00B2, 0x00B3, 0x00C0, 0x00C1, 0x00C2, 0x00C3, 0x00D0, 0x00D1, 0x00D2, 0x00D3, 0x00E0, 0x00E1, 0x00E2, 0x004B, 0x0000,
    0x0000, 0x0044, 0x1148, 0x1149, 0x114A, 0x114B, 0x114C, 0x114D, 0x114E, 0x114F, 0x0045, 0x00A4, 0x00A5, 0x00A6, 0x00A7, 0x00B4, 0x00B5, 0x00B6, 0x00B7, 0x00C4, 0x00C5, 0x00C6, 0x00C7, 0x00D4, 0x00D5, 0x00D6, 0x00D7, 0x00E4, 0x00E5, 0x00E6, 0x004B, 0x0000,
    0x0000, 0x0044, 0x1150, 0x1151, 0x1152, 0x1153, 0x1154, 0x1155, 0x1156, 0x1157, 0x0045, 0x00A8, 0x00A9, 0x00AA, 0x00AB, 0x00B8, 0x00B9, 0x00BA, 0x00BB, 0x00C8, 0x00C9, 0x00CA, 0x00CB, 0x00D8, 0x00D9, 0x00DA, 0x00DB, 0x00E8, 0x00E9, 0x00EA, 0x004B, 0x0000,
    0x0000, 0x0044, 0x1158, 0x1159, 0x115A, 0x115B, 0x115C, 0x115D, 0x115E, 0x115F, 0x0045, 0x00AC, 0x00AD, 0x00AE, 0x00AF, 0x00BC, 0x00BD, 0x00BE, 0x00BF, 0x00CC, 0x00CD, 0x00CE, 0x00CF, 0x00DC, 0x00DD, 0x00DE, 0x00DF, 0x00EC, 0x00ED, 0x00EE, 0x004B, 0x0000,
    0x0000, 0x0044, 0x1160, 0x1161, 0x1162, 0x1163, 0x1164, 0x1165, 0x1166, 0x1167, 0x0045, 0x00F0, 0x00F1, 0x00F2, 0x00F3, 0x0100, 0x0101, 0x0102, 0x0103, 0x0110, 0x0111, 0x0112, 0x0113, 0x0120, 0x0121, 0x0122, 0x0123, 0x0130, 0x0131, 0x0132, 0x004B, 0x0000,
    0x0000, 0x0044, 0x1168, 0x1169, 0x116A, 0x116B, 0x116C, 0x116D, 0x116E, 0x116F, 0x0045, 0x00F4, 0x00F5, 0x00F6, 0x00F7, 0x0104, 0x0105, 0x0106, 0x0107, 0x0114, 0x0115, 0x0116, 0x0117, 0x0124, 0x0125, 0x0126, 0x0127, 0x0134, 0x0135, 0x0136, 0x004B, 0x0000,
    0x0000, 0x0044, 0x1170, 0x1171, 0x1172, 0x1173, 0x1174, 0x1175, 0x1176, 0x1177, 0x0045, 0x00F8, 0x00F9, 0x00FA, 0x00FB, 0x0108, 0x0109, 0x010A, 0x010B, 0x0118, 0x0119, 0x011A, 0x011B, 0x0128, 0x0129, 0x012A, 0x012B, 0x0138, 0x0139, 0x013A, 0x004B, 0x0000,
    0x0000, 0x0044, 0x1178, 0x1179, 0x117A, 0x117B, 0x117C, 0x117D, 0x117E, 0x117F, 0x0045, 0x00FC, 0x00FD, 0x00FE, 0x00FF, 0x010C, 0x010D, 0x010E, 0x010F, 0x011C, 0x011D, 0x011E, 0x011F, 0x012C, 0x012D, 0x012E, 0x012F, 0x013C, 0x013D, 0x013E, 0x004B, 0x0000,
    0x0000, 0x0046, 0x0047, 0x0047, 0x0047, 0x0047, 0x0047, 0x0047, 0x0047, 0x0047, 0x0048, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004D, 0x0000,
};

const u16 gMapCourtRecordSaveWindow[32*12] = {
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004E, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x0049, 0x004A, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0060, 0x0061, 0x0062, 0x0063, 0x0040, 0x0040, 0x0040, 0x0040, 0x0070, 0x0071, 0x0072, 0x0073, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004B, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0064, 0x0065, 0x0066, 0x0067, 0x0040, 0x0040, 0x0040, 0x0040, 0x0074, 0x0075, 0x0076, 0x0077, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004B, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0068, 0x0069, 0x006A, 0x006B, 0x0040, 0x0040, 0x0040, 0x0040, 0x0078, 0x0079, 0x007A, 0x007B, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004B, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x006C, 0x006D, 0x006E, 0x006F, 0x0040, 0x0040, 0x0040, 0x0040, 0x007C, 0x007D, 0x007E, 0x007F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004B, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004B, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004B, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004B, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x004F, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x0040, 0x004B, 0x0000, 0x0000, 0x0000, 0x0000,
    0x0000, 0x0000, 0x0000, 0x0000, 0x0050, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004C, 0x004D, 0x0000, 0x0000, 0x0000, 0x0000,
};

const u16 gMapSpeedlines[0x2C0] = {
    0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
    0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
    0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
    0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
    0x2276, 0x2000, 0x2001, 0x2002, 0x2003, 0x2004, 0x2005, 0x2006,
    0x2007, 0x2008, 0x2009, 0x200A, 0x200B, 0x200C, 0x200D, 0x200E,
    0x200F, 0x2010, 0x2011, 0x2012, 0x2013, 0x2014, 0x2015, 0x2016,
    0x2017, 0x2018, 0x2019, 0x201A, 0x201B, 0x201C, 0x201D, 0x2276,
    0x2276, 0x201E, 0x201F, 0x2020, 0x2021, 0x2022, 0x2023, 0x2024,
    0x2025, 0x2026, 0x2027, 0x2028, 0x2029, 0x202A, 0x202B, 0x202C,
    0x202D, 0x202E, 0x202F, 0x2030, 0x2031, 0x2032, 0x2033, 0x2034,
    0x2035, 0x2036, 0x2037, 0x2038, 0x2039, 0x203A, 0x203B, 0x2276,
    0x2276, 0x203C, 0x203D, 0x203E, 0x203F, 0x2040, 0x2041, 0x2042,
    0x2043, 0x2044, 0x2045, 0x2046, 0x2047, 0x2048, 0x2049, 0x204A,
    0x204B, 0x204C, 0x204D, 0x204E, 0x204F, 0x2050, 0x2051, 0x2052,
    0x2053, 0x2054, 0x2055, 0x2056, 0x2057, 0x2058, 0x2059, 0x2276,
    0x2276, 0x205A, 0x205B, 0x205C, 0x205D, 0x205E, 0x205F, 0x2060,
    0x2061, 0x2062, 0x2063, 0x2064, 0x2065, 0x2066, 0x2067, 0x2068,
    0x2069, 0x206A, 0x206B, 0x206C, 0x206D, 0x206E, 0x206F, 0x2070,
    0x2071, 0x2072, 0x2073, 0x2074, 0x2075, 0x2076, 0x2077, 0x2276,
    0x2276, 0x2078, 0x2079, 0x207A, 0x207B, 0x207C, 0x207D, 0x207E,
    0x207F, 0x2080, 0x2081, 0x2082, 0x2083, 0x2084, 0x2085, 0x2086,
    0x2087, 0x2088, 0x2089, 0x208A, 0x208B, 0x208C, 0x208D, 0x208E,
    0x208F, 0x2090, 0x2091, 0x2092, 0x2093, 0x2094, 0x2095, 0x2276,
    0x2276, 0x2096, 0x2097, 0x2098, 0x2099, 0x209A, 0x209B, 0x209C,
    0x209D, 0x209E, 0x209F, 0x20A0, 0x20A1, 0x20A2, 0x20A3, 0x20A4,
    0x20A5, 0x20A6, 0x20A7, 0x20A8, 0x20A9, 0x20AA, 0x20AB, 0x20AC,
    0x20AD, 0x20AE, 0x20AF, 0x20B0, 0x20B1, 0x20B2, 0x20B3, 0x2276,
    0x2276, 0x20B4, 0x20B5, 0x20B6, 0x20B7, 0x20B8, 0x20B9, 0x20BA,
    0x20BB, 0x20BC, 0x20BD, 0x20BE, 0x20BF, 0x20C0, 0x20C1, 0x20C2,
    0x20C3, 0x20C4, 0x20C5, 0x20C6, 0x20C7, 0x20C8, 0x20C9, 0x20CA,
    0x20CB, 0x20CC, 0x20CD, 0x20CE, 0x20CF, 0x20D0, 0x20D1, 0x2276,
    0x2276, 0x20D2, 0x20D3, 0x20D4, 0x20D5, 0x20D6, 0x20D7, 0x20D8,
    0x20D9, 0x20DA, 0x20DB, 0x20DC, 0x20DD, 0x20DE, 0x20DF, 0x20E0,
    0x20E1, 0x20E2, 0x20E3, 0x20E4, 0x20E5, 0x20E6, 0x20E7, 0x20E8,
    0x20E9, 0x20EA, 0x20EB, 0x20EC, 0x20ED, 0x20EE, 0x20EF, 0x2276,
    0x2276, 0x20F0, 0x20F1, 0x20F2, 0x20F3, 0x20F4, 0x20F5, 0x20F6,
    0x20F7, 0x20F8, 0x20F9, 0x20FA, 0x20FB, 0x20FC, 0x20FD, 0x20FE,
    0x20FF, 0x2100, 0x2101, 0x2102, 0x2103, 0x2104, 0x2105, 0x2106,
    0x2107, 0x2108, 0x2109, 0x210A, 0x210B, 0x210C, 0x210D, 0x2276,
    0x2276, 0x210E, 0x210F, 0x2110, 0x2111, 0x2112, 0x2113, 0x2114,
    0x2115, 0x2116, 0x2117, 0x2118, 0x2119, 0x211A, 0x211B, 0x211C,
    0x211D, 0x211E, 0x211F, 0x2120, 0x2121, 0x2122, 0x2123, 0x2124,
    0x2125, 0x2126, 0x2127, 0x2128, 0x2129, 0x212A, 0x212B, 0x2276,
    0x2276, 0x212C, 0x212D, 0x212E, 0x212F, 0x2130, 0x2131, 0x2132,
    0x2133, 0x2134, 0x2135, 0x2136, 0x2137, 0x2138, 0x2139, 0x213A,
    0x213B, 0x213C, 0x213D, 0x213E, 0x213F, 0x2140, 0x2141, 0x2142,
    0x2143, 0x2144, 0x2145, 0x2146, 0x2147, 0x2148, 0x2149, 0x2276,
    0x2276, 0x214A, 0x214B, 0x214C, 0x214D, 0x214E, 0x214F, 0x2150,
    0x2151, 0x2152, 0x2153, 0x2154, 0x2155, 0x2156, 0x2157, 0x2158,
    0x2159, 0x215A, 0x215B, 0x215C, 0x215D, 0x215E, 0x215F, 0x2160,
    0x2161, 0x2162, 0x2163, 0x2164, 0x2165, 0x2166, 0x2167, 0x2276,
    0x2276, 0x2168, 0x2169, 0x216A, 0x216B, 0x216C, 0x216D, 0x216E,
    0x216F, 0x2170, 0x2171, 0x2172, 0x2173, 0x2174, 0x2175, 0x2176,
    0x2177, 0x2178, 0x2179, 0x217A, 0x217B, 0x217C, 0x217D, 0x217E,
    0x217F, 0x2180, 0x2181, 0x2182, 0x2183, 0x2184, 0x2185, 0x2276,
    0x2276, 0x2186, 0x2187, 0x2188, 0x2189, 0x218A, 0x218B, 0x218C,
    0x218D, 0x218E, 0x218F, 0x2190, 0x2191, 0x2192, 0x2193, 0x2194,
    0x2195, 0x2196, 0x2197, 0x2198, 0x2199, 0x219A, 0x219B, 0x219C,
    0x219D, 0x219E, 0x219F, 0x21A0, 0x21A1, 0x21A2, 0x21A3, 0x2276,
    0x2276, 0x21A4, 0x21A5, 0x21A6, 0x21A7, 0x21A8, 0x21A9, 0x21AA,
    0x21AB, 0x21AC, 0x21AD, 0x21AE, 0x21AF, 0x21B0, 0x21B1, 0x21B2,
    0x21B3, 0x21B4, 0x21B5, 0x21B6, 0x21B7, 0x21B8, 0x21B9, 0x21BA,
    0x21BB, 0x21BC, 0x21BD, 0x21BE, 0x21BF, 0x21C0, 0x21C1, 0x2276,
    0x2276, 0x21C2, 0x21C3, 0x21C4, 0x21C5, 0x21C6, 0x21C7, 0x21C8,
    0x21C9, 0x21CA, 0x21CB, 0x21CC, 0x21CD, 0x21CE, 0x21CF, 0x21D0,
    0x21D1, 0x21D2, 0x21D3, 0x21D4, 0x21D5, 0x21D6, 0x21D7, 0x21D8,
    0x21D9, 0x21DA, 0x21DB, 0x21DC, 0x21DD, 0x21DE, 0x21DF, 0x2276,
    0x2276, 0x21E0, 0x21E1, 0x21E2, 0x21E3, 0x21E4, 0x21E5, 0x21E6,
    0x21E7, 0x21E8, 0x21E9, 0x21EA, 0x21EB, 0x21EC, 0x21ED, 0x21EE,
    0x21EF, 0x21F0, 0x21F1, 0x21F2, 0x21F3, 0x21F4, 0x21F5, 0x21F6,
    0x21F7, 0x21F8, 0x21F9, 0x21FA, 0x21FB, 0x21FC, 0x21FD, 0x2276,
    0x2276, 0x21FE, 0x21FF, 0x2200, 0x2201, 0x2202, 0x2203, 0x2204,
    0x2205, 0x2206, 0x2207, 0x2208, 0x2209, 0x220A, 0x220B, 0x220C,
    0x220D, 0x220E, 0x220F, 0x2210, 0x2211, 0x2212, 0x2213, 0x2214,
    0x2215, 0x2216, 0x2217, 0x2218, 0x2219, 0x221A, 0x221B, 0x2276,
    0x2276, 0x221C, 0x221D, 0x221E, 0x221F, 0x2220, 0x2221, 0x2222,
    0x2223, 0x2224, 0x2225, 0x2226, 0x2227, 0x2228, 0x2229, 0x222A,
    0x222B, 0x222C, 0x222D, 0x222E, 0x222F, 0x2230, 0x2231, 0x2232,
    0x2233, 0x2234, 0x2235, 0x2236, 0x2237, 0x2238, 0x2239, 0x2276,
    0x2276, 0x223A, 0x223B, 0x223C, 0x223D, 0x223E, 0x223F, 0x2240,
    0x2241, 0x2242, 0x2243, 0x2244, 0x2245, 0x2246, 0x2247, 0x2248,
    0x2249, 0x224A, 0x224B, 0x224C, 0x224D, 0x224E, 0x224F, 0x2250,
    0x2251, 0x2252, 0x2253, 0x2254, 0x2255, 0x2256, 0x2257, 0x2276,
    0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
    0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
    0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
    0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276, 0x2276,
};

u16 gCourtScrollGfxFrameIndices[2][0x10] = {
    0x0000, 0x0001, 0x0002, 0x0003, 0x0009, 0x000F, 0x0016, 0x001D,
    0x0024, 0x002B, 0x0032, 0x0039, 0x0040, 0x0047, 0x003F, 0x0041,
    0x0000, 0x0002, 0x0004, 0x0006, 0x000D, 0x0019, 0x0025, 0x0032,
    0x003F, 0x004C, 0x0059, 0x0066, 0x0072, 0x007E, 0x0080, 0x0082,
};

u8 gCase3IntroBG69MaxAnimationTicks[0x28] = {
    0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x09,
    0x09, 0x09, 0x08, 0x08, 0x08, 0x08, 0x07, 0x06,
    0x06, 0x04, 0x04, 0x04, 0x04, 0x03, 0x03, 0x02,
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03,
    0x04, 0x04, 0x05, 0x06, 0x06, 0x08, 0x08, 0x0A,
};

// BG_all_init
void InitBGs()
{
    u32 i;
    u16 *temp;
    DmaFill16(3, 0, &gBG0MapBuffer, sizeof(gBG0MapBuffer));
    for (temp = gBG1MapBuffer, i = 0; i < ARRAY_COUNT(gTextboxTiles); i++, temp++)
    {
        (*temp) = gTextboxTiles[i];
    }
    DmaFill16(3, 0, &gBG2MapBuffer, sizeof(gBG2MapBuffer));
    gIORegisters.lcd_bg2vofs = 0;
    gIORegisters.lcd_bg2hofs = 8;
    InitBG3();
}

// BG256_init
void InitBG3()
{
    struct Main *main = &gMain;
    u32 i = 0;
    u32 j = 0;
    struct IORegisters *ioRegsp = &gIORegisters;

    for (i = 0; i < 30; i++)
    {
        gBG3MapBuffer[GET_MAP_TILE_INDEX(0, i, 0, 1)] = 600 + i; // TODO: ??? this line doesn't ever appear in the game
    }
    for (i = 0; i < 21; i++)
    {
        for (j = 0; j < 30; j++)
        {
            gBG3MapBuffer[GET_MAP_TILE_INDEX(i, j, 1, 1)] = j + i * 30;
        }
    }
    ioRegsp->lcd_bg3vofs = 8;
    ioRegsp->lcd_bg3hofs = 8;
    main->Bg256_scroll_x = 0;
    main->Bg256_scroll_y = 0;
    DmaFill16(3, 0, VRAM + 0xDD80, 0x40); // empty 8bpp tile
}

void bg256_right_scroll_end(struct Main * main, u32 sp0) // holy shit my braincells
{
    u32 i;
    u32 r8; //r8
    u32 sp4; // sp4
    u32 sl; // sl
    u8 * r6; // r6
    main->Bg256_next_line = 30;
    main->Bg256_buff_pos++;
    if(main->Bg256_buff_pos > 30)
        main->Bg256_buff_pos = 0;
    r8 = sp0 & 0x80000000 ? 4 : 8;
    sp4 = sp0 & ~0x80000000;
    sp0 = r8 * sp4;
    sl = r8 * 8;
    r8 = r8 * 248;
    r6 = eBGDecompBuffer;
    r6 += main->Bg256_next_line * 0x40;
    for(i = 1; i < 21; i++) // the body of this for loop is probably wrong
    {
        void * ptr;
        ptr = &gBG3MapBuffer[i*32];
        DmaCopy16(3, ptr, &gBG3MapBuffer[i*32+31], 2); // dear capcom dev who wrote a dma copy with size of 2 here, i am sincerely sorry but fuck you
        ptr = ((void*)BG_CHAR_ADDR(1) + (main->Bg256_buff_pos * sl) + (i-1) * r8);
        DmaCopy16(3, r6, ptr, sl);
        r6 += sp0;
    }
    main->Bg256_buff_pos++;
    if(main->Bg256_buff_pos > 30)
        main->Bg256_buff_pos = 0;
    if(sp4 == 360)
        main->Bg256_stop_line = 0x2F;
    else
        main->Bg256_stop_line = 1;
    main->Bg256_next_line++;
    main->Bg256_next_line = main->Bg256_next_line;
    main->isBGScrolling = FALSE;
    main->Bg256_dir &= ~0x10;
    main->Bg256_dir |= 0x20;
    if(main->Bg256_pos_x < 0)
        main->horizontolBGScrollSpeed -= main->Bg256_pos_x;
    main->Bg256_pos_x = 0;
    main->Bg256_scroll_x = 0;
}

void bg256_right_scroll(struct Main * main, u32 sp0)
{
    u32 i;
    u32 sp4; // sp4
    u32 sp8; // sp8
    u32 spC; // sl
    u32 sp10;
    u8 * r6; // r6
    sp4 = main->Bg256_scroll_x / -8;
    sp8 = sp0 & 0x80000000 ? 4 : 8;
    sp10 = sp0;
    sp0 *= sp8;
    spC = sp8 * 8;
    sp8 *= 248;
    do
    {
        u8 * buf;
        buf = eBGDecompBuffer;
        buf += main->Bg256_next_line * 0x40;
        for(i = 1; i < 21; i++)
        {
            void * ptr1;
            void * ptr2;
            ptr1 = &gBG3MapBuffer[i*32];
            ptr2 = &gTilemapBuffer[i*32];
            DmaCopy16(3, ptr1, ptr2, 30*2); // copy row of tiles to buffer copy
            ptr2 = &gBG3MapBuffer[i*32+30];
            DmaCopy16(3, ptr2, ptr1, 2); // stop with the size 2 dmacopies
            ptr1 = &gTilemapBuffer[i*32];
            ptr2 = &gBG3MapBuffer[i*32+1];
            DmaCopy16(3, ptr1, ptr2, 30*2);
            ptr1 = (void*)BG_CHAR_ADDR(1) + (main->Bg256_buff_pos * spC) + (i-1) * sp8;
            DmaCopy16(3, buf, ptr1, spC);
            buf += sp0;
        }
        if(--main->Bg256_buff_pos < 0)
            main->Bg256_buff_pos = 30;
        if(--main->Bg256_next_line < 0)
            main->Bg256_next_line = 59;
        if(main->Bg256_next_line == main->Bg256_stop_line)
        {
            bg256_right_scroll_end(main, sp10);
            break;
        }
    }
    while(--sp4);
    main->Bg256_scroll_x %= 8;
}

void bg256_left_scroll_end(struct Main * main, u32 r6)
{
    u32 i;
    u32 sl;
    u32 sp0;
    u32 sp4;
    u8 * r5;
    sl = r6 & 0x80000000 ? 4 : 8;
    r6 &= ~0x80000000;
    sp4 = r6 / 2;
    r6 *= sl;
    sp0 = sl * 8;
    sl *= 248;
    if(sp4 == 360) // i have no idea what this code is doing but the assembly didn't do the decrements but it makes the code match
    {
        main->Bg256_next_line = 15;
        main->Bg256_next_line--;
    }
    else
    {
        main->Bg256_next_line = 30;
        main->Bg256_next_line--;
    }
    if(--main->Bg256_buff_pos < 0)
        main->Bg256_buff_pos = 30;
    r5 = eBGDecompBuffer;
    r5 += main->Bg256_next_line * 0x40;
    for(i = 1; i < 21; i++)
    {
        void * ptr;
        ptr = &gBG3MapBuffer[i*32+31];
        DmaCopy16(3, &gBG3MapBuffer[i*32+31], &gBG3MapBuffer[i*32], 2); // dear capcom dev who wrote a dma copy with size of 2 here, i am sincerely sorry but fuck you
        ptr = ((void*)BG_CHAR_ADDR(1) + (main->Bg256_buff_pos * sp0) + (i-1) * sl);
        DmaCopy16(3, r5, ptr, sp0);
        r5 += r6;
    }
    DmaFill16(3, 0, 0x0600DD80, 0x40);
    for(i = 0; i < 32; i++) {
        gBG3MapBuffer[i*32+31] = 0x2276;
    }
    if(--main->Bg256_buff_pos < 0)
        main->Bg256_buff_pos = 30;
    main->Bg256_next_line--;
    main->Bg256_stop_line = 58;
    main->isBGScrolling = FALSE;
    main->Bg256_dir &= ~0x20;
    main->Bg256_dir |= 0x10;
    if(main->Bg256_pos_x > sp4)
        main->horizontolBGScrollSpeed -= main->Bg256_pos_x - sp4;
    main->Bg256_pos_x = sp4;
    main->Bg256_scroll_x = 0;
}

void bg256_left_scroll(struct Main * main, u32 sp0)
{
    u32 i;
    u32 sp4;
    u32 sp8;
    u32 spC;
    u32 sp10;
    u8 * buf;
    
    sp4 = main->Bg256_scroll_x / 8;
    sp8 = sp0 & 0x80000000 ? 4 : 8;
    sp10 = sp0;
    sp0 *= sp8; // this doesn't clear the MSB hmm
    spC = sp8 * 8;
    sp8 *= 248;
    do
    {
        buf = eBGDecompBuffer;
        buf += main->Bg256_next_line * 0x40;
        for(i = 1; i < 21; i++)
        {
            void * ptr1;
            void * ptr2;
            ptr1 = &gBG3MapBuffer[i*32+1];
            ptr2 = &gTilemapBuffer[i*32];
            DmaCopy16(3, ptr1, ptr2, 62);
            ptr1 = &gBG3MapBuffer[i*32];
            DmaCopy16(3, ptr2, ptr1, 62);
            ptr2 = &gBG3MapBuffer[i*32+31];
            DmaCopy16(3, ptr1, ptr2, 2);
            ptr1 = (void*)BG_CHAR_ADDR(1) + (main->Bg256_buff_pos * spC) + (i-1) * sp8;
            DmaCopy16(3, buf, ptr1, spC);
            buf += sp0;
        }
        if(++main->Bg256_buff_pos > 30)
            main->Bg256_buff_pos = 0;
        if(++main->Bg256_next_line > 59)
            main->Bg256_next_line = 0;
        if(main->Bg256_next_line == main->Bg256_stop_line)
        {
            bg256_left_scroll_end(main, sp10);
            break;
        }
    }
    while(--sp4);
    main->Bg256_scroll_x %= 8;
}

void bg256_down_scroll_end(struct Main * main, u32 r1)
{
    u32 i;
    u32 r5;
    u32 r6;
    void * ptr1;
    void * ptr2;
    main->Bg256_next_line = 21;
    r5 = r1 & 0x80000000 ? 4 : 8;
    r6 = r1 & ~0x80000000; // r1 -> r6
    r5 *= 240;
    if(++main->Bg256_buff_pos > 20)
        main->Bg256_buff_pos = 0;
    ptr1 = &gBG3MapBuffer[0];
    ptr2 = &gBG3MapBuffer[0x2A0];
    DmaCopy16(3, ptr1, ptr2, 64);
    ptr1 = (void*)BG_CHAR_ADDR(1) + main->Bg256_buff_pos * r5;
    ptr2 = eBGDecompBuffer + main->Bg256_next_line * r5;
    ptr2 -= r5;
    DmaCopy16(3, ptr2, ptr1, r5);
    if(++main->Bg256_buff_pos > 20)
        main->Bg256_buff_pos = 0;
    if(r6 == 320)
        main->Bg256_stop_line = 1;
    else
        main->Bg256_stop_line = 0x20;
    main->isBGScrolling = 0;
    main->Bg256_dir &= ~0x40;
    main->Bg256_dir |= 0x80;
    if(main->Bg256_pos_y < 0)
        main->verticalBGScrollSpeed -= main->Bg256_pos_y;
    main->Bg256_pos_y = 0;
    main->Bg256_scroll_y = 0;
}

void bg256_down_scroll(struct Main * main, u32 sp0)
{
    u32 i;
    u32 r8;
    u32 r6;
    u16 * map;
    r8 = main->Bg256_scroll_y / -8;
    r6 = sp0 & 0x80000000 ? 4 : 8;
    r6 *= 240;
    do
    {
        void * ptr;
        void * buf;
        DmaCopy16(3, gBG3MapBuffer, gTilemapBuffer, 0x540);
        ptr = gBG3MapBuffer + 0x20;
        DmaCopy16(3, gTilemapBuffer, ptr, 0x540);;
        DmaCopy16(3, gBG3MapBuffer + 0x2A0, gBG3MapBuffer, 0x40);
        buf = eBGDecompBuffer;
        buf += main->Bg256_next_line * r6;
        ptr = (void*)BG_CHAR_ADDR(1) + main->Bg256_buff_pos * r6;
        DmaCopy16(3, buf, ptr, r6);
        if(--main->Bg256_buff_pos < 0)
            main->Bg256_buff_pos = 20;
        if(--main->Bg256_next_line < 0)
            main->Bg256_next_line = 39;
        if(main->Bg256_next_line == main->Bg256_stop_line)
        {
            bg256_down_scroll_end(main, sp0);
            break;
        }
    }
    while(--r8);
    main->Bg256_scroll_y %= 8;
}

void bg256_up_scroll_end(struct Main * main, u32 r4)
{
    u32 r5;
    void * buf;
    void * ptr1;
    void * ptr2;
    r5 = r4 & 0x80000000 ? 4 : 8;
    r4 &= ~0x80000000;
    r5 *= 240;
    if(r4 == 320)
        main->Bg256_next_line = 18;
    else
        main->Bg256_next_line = 8;
    if(--main->Bg256_buff_pos < 0)
        main->Bg256_buff_pos = 20;
    ptr1 = gBG3MapBuffer + 0x2A0;
    ptr2 = gBG3MapBuffer;
    DmaCopy16(3, ptr1, ptr2, 0x40);
    buf = eBGDecompBuffer + main->Bg256_next_line * r5;
    buf += r5;
    ptr1 = (void*)BG_CHAR_ADDR(1) + main->Bg256_buff_pos * r5;
    DmaCopy16(3, buf, ptr1, r5);
    if(--main->Bg256_buff_pos < 0)
        main->Bg256_buff_pos = 20;
    main->Bg256_stop_line = 0x26;
    main->isBGScrolling = FALSE;
    main->Bg256_dir &= ~0x80;
    main->Bg256_dir |= 0x40;
    r4 /= 2;
    if(main->Bg256_pos_y > r4)
        main->verticalBGScrollSpeed -= main->Bg256_pos_y - r4;
    main->Bg256_pos_y = r4;
    main->Bg256_scroll_y = 0;
}

void bg256_up_scroll(struct Main * main, u32 arg0)
{
    u32 i;
    u32 sp0;
    u32 r8;
    u32 r6;
    r8 = main->Bg256_scroll_y >> 3; // oh yeah you know all those divisions we did in those function before this? yeah forget about them just do a fucking right shift 
    r6 = arg0 & 0x80000000 ? 4 : 8;
    sp0 = arg0;
    r6 *= 240;
    do
    {
        void * ptr1;
        void * ptr2;
        void * buf;

        ptr1 = gBG3MapBuffer + 0x20;
        ptr2 = gBG3MapBuffer + 0x2C0;
        DmaCopy16(3, ptr1, ptr2, 0x40);
        DmaCopy16(3, gBG3MapBuffer, gTilemapBuffer, 0x5C0);
        ptr2 = gTilemapBuffer + 0x20;
        do{}while(0); // TODO: find actual match, gBG3MapBuffer gets loaded from the pool instead of ptr1 - 0x40
        DmaCopy16(3, ptr2, gBG3MapBuffer, 0x580);
        buf = eBGDecompBuffer;
        buf += main->Bg256_next_line * r6;
        ptr2 = (void*)BG_CHAR_ADDR(1) + main->Bg256_buff_pos * r6;
        DmaCopy16(3, buf, ptr2, r6);
        if(++main->Bg256_buff_pos > 20)
            main->Bg256_buff_pos = 0;
        if(++main->Bg256_next_line > 39)
            main->Bg256_next_line = 0;
        if(main->Bg256_next_line == main->Bg256_stop_line)
        {
            bg256_up_scroll_end(main, sp0);
            break;
        }
    }
    while(--r8);
    main->Bg256_scroll_y %= 8;
}

void UpdateBackgroundScroll() // BG256_main
{
    struct AnimationListEntry * animation;
    struct Main * main = &gMain;
    struct IORegisters * ioRegs = &gIORegisters;
    struct CourtScroll * courtScroll = &gCourtScroll;
    u32 unk0;
    u32 unk1;
    if(main->currentBG == 0x1A) {
        struct AnimationListEntry * animation;
        DmaCopy16(3, gPalCase1OpeningPurpleClouds + ((main->frameCounter / 10) % 15) * 0x20, PLTT+0x40, 0x20);
        if((animation = FindAnimationFromAnimId(0x65))) {
            if((main->frameCounter % 7) == 1) {
                if(animation->animationInfo.yOrigin < 0x70) {
                    animation->animationInfo.yOrigin++;
                    animation = FindAnimationFromAnimId(0x69);
                    animation->animationInfo.xOrigin = 120;
                    animation->animationInfo.yOrigin++;
                }
            }
        } else {
            if((animation = FindAnimationFromAnimId(0x64))) {
                if((main->frameCounter % 10) == 1) {
                    if(animation->animationInfo.xOrigin > 120)
                        animation->animationInfo.xOrigin--;
                }
            }
            if((animation = FindAnimationFromAnimId(0x66))) {
                if((main->frameCounter % 20) == 1) {
                    if(animation->animationInfo.xOrigin < 120)
                        animation->animationInfo.xOrigin++;
                    if(animation->animationInfo.yOrigin > 32)
                        animation->animationInfo.yOrigin--;
                }
            }
        }
    }
    //_08001AFE
    if(main->currentBG == 0x23) {
        if(main->frameCounter % 40 > 12 && main->frameCounter % 40 <= 24) {
            if(main->frameCounter % 6 < 3) {
                animation = FindAnimationFromAnimId(0x6B);
                if(animation)
                    animation->animationInfo.xOrigin--;
                ioRegs->lcd_bg3hofs++;
            } else {
                animation = FindAnimationFromAnimId(0x6B);
                if(animation)
                    animation->animationInfo.xOrigin++;
                ioRegs->lcd_bg3hofs--;
            }
        } 
        ioRegs->lcd_bg3hofs &= 0x1FF;
    }
    if(main->currentBG == 0x43) {
        struct AnimationListEntry * animation = FindAnimationFromAnimId(0x73);
        struct AnimationListEntry * animation2 = FindAnimationFromAnimId(0x70);
        if(animation) {
            if(main->Bg256_pos_y == 160) {
                if(animation2) {
                    if(animation->specialEffectVar > 0) {
                        animation->specialEffectVar--;
                        if(animation->specialEffectVar % 3 == 0)
                            animation->animationInfo.yOrigin -= animation->specialEffectVar / 3;
                    }
                } else {
                    if(animation->specialEffectVar < 20) {
                        animation->specialEffectVar++;
                        if(animation->specialEffectVar % 2 == 0)
                            animation->animationInfo.yOrigin++;
                    } else if(animation->specialEffectVar < 50) {
                        animation->specialEffectVar++;
                        if(animation->specialEffectVar % 2 == 0)
                            animation->animationInfo.yOrigin--;
                    } else if(animation->specialEffectVar < 70) {
                        animation->specialEffectVar++;
                        if(animation->specialEffectVar % 2 == 0)
                            animation->animationInfo.yOrigin++;
                    }
                }
            }
        }
    }
    if(main->currentBG == 0x4D) {
        struct AnimationListEntry * animation = FindAnimationFromAnimId(0x12);
        if(animation) {
            if(GetFlag(0, 0x20)) {
                if(animation->animationInfo.yOrigin > -120) {
                    animation->specialEffectVar++;
                    if(animation->specialEffectVar < 20) {
                        if((animation->specialEffectVar % 3) == 0)
                            animation->animationInfo.xOrigin++;
                        animation->animationInfo.yOrigin--;
                    } else if(animation->specialEffectVar < 60) {
                        if((animation->specialEffectVar % 6) == 0)
                            animation->animationInfo.xOrigin++;
                        if((animation->specialEffectVar % 4) == 0)
                            animation->animationInfo.yOrigin--;
                    } else if(animation->specialEffectVar < 70) {
                        if((animation->specialEffectVar % 4) == 0)
                            animation->animationInfo.xOrigin++;
                        if((animation->specialEffectVar % 3) == 0)
                            animation->animationInfo.yOrigin--;
                    } else if(animation->specialEffectVar < 85) {
                        if((animation->specialEffectVar % 3) == 0)
                            animation->animationInfo.xOrigin++;
                        if((animation->specialEffectVar % 2) == 0)
                            animation->animationInfo.yOrigin--;
                    } else {
                        if((animation->specialEffectVar % 5) == 0)
                            animation->animationInfo.xOrigin++;
                        animation->animationInfo.yOrigin--;
                    }
                }
            }
        }
    }
    if(main->currentBG == 0x78) { // really big
        struct AnimationListEntry * animation;
        s32 i;
        switch(gMain.case4HeroLineupVerticalScrollState) { // inconsistent use of globals and pointers
            case 0:
                DmaFill16(3, 0x4040, VRAM+0xE000, 0x20);
                DmaCopy16(3, gBG3MapBuffer, gTilemapBuffer, sizeof(gBG3MapBuffer));
                DmaFill16(3, 0x700, gBG3MapBuffer, sizeof(gBG3MapBuffer));
                gMain.case4HeroLineupVerticalScrollState++;
                gMain.case4HeroLineupVerticalScrollCounter = 0;
                break;
            case 1:
                if(gMain.blendMode)
                    break;
                animation = FindAnimationFromAnimId(0x7B);
                if(animation) {
                    if(gMain.frameCounter % 2)
                        animation->animationInfo.yOrigin++;
                }
                OffsetAllAnimations(0, -1);
                gMain.case4HeroLineupVerticalScrollCounter++;
                if(gMain.case4HeroLineupVerticalScrollCounter >= DISPLAY_HEIGHT)
                    gMain.case4HeroLineupVerticalScrollState++;
                break;
            case 2:
                for(i = 0; i < main->Bg256_scroll_y / 8 + 2 && i < 32; i++) {
                    DmaCopy16(3, &gTilemapBuffer[i*32], &gBG3MapBuffer[i*32], 0x40);
                }
                animation = FindAnimationFromAnimId(0x7B);
                if(animation) {
                    if(gMain.frameCounter % 2)
                        animation->animationInfo.yOrigin++;
                }
                OffsetAllAnimations(0, -1);
                main->Bg256_scroll_y++;
                if(main->Bg256_scroll_y >= DISPLAY_HEIGHT)
                    gMain.case4HeroLineupVerticalScrollState++;
                break;
            case 3:
                DmaCopy16(3, gTilemapBuffer, gBG3MapBuffer, sizeof(gBG3MapBuffer));
                break;
            case 4:
            case 5:
                break;
        }
        ioRegs->lcd_bg3vofs = main->Bg256_scroll_y - (DISPLAY_HEIGHT - 8);
        ioRegs->lcd_bg3hofs = 8;
        return;
    }
    // _08001EB8
    if(main->currentBG == 0x79) {
        main->Bg256_scroll_y = 0;
        if((gMain.frameCounter % 2) != 0)
            return;
    }
    if(main->currentBG == 0x7A) {
        s32 i;
        switch(gMain.case4OtherBGAnimationState) {
            case 0:
                DmaFill16(3, 0x30, VRAM+0xE000, 0x20);
                animation = FindAnimationFromAnimId(0x79);
                if(animation) {
                    animation->animationInfo.xOrigin = 120;
                    animation->animationInfo.yOrigin = -240;
                }
                animation = FindAnimationFromAnimId(0x7B);
                if(animation) {
                    animation->animationInfo.xOrigin = 120;
                    animation->animationInfo.yOrigin = -80;
                }
                for(i = 0; i < 5; i++) {
                    animation = FindAnimationFromAnimId(0x91+i);
                    if(animation) {
                        animation->animationInfo.xOrigin = 120;
                        animation->animationInfo.yOrigin = -80;
                    }
                }
                gMain.case4OtherBGAnimationState++;
                gMain.case4OtherBGAnimationCounter = 0;
                break;
            case 1:
                main->Bg256_scroll_y += 0x10;
                for(i = 0; i < main->Bg256_scroll_y / 8 + 2 && i < 32; i++) {
                    DmaFill16(3, 0x700, &gBG3MapBuffer[(31-i)*32], 0x40);
                }
                animation = FindAnimationFromAnimId(0x7B);
                if(animation) {
                    if(gMain.frameCounter % 2)
                        animation->animationInfo.yOrigin -= 0x10;
                }
                OffsetAllAnimations(0, 0x10);
                gMain.case4OtherBGAnimationCounter++;
                if(gMain.case4OtherBGAnimationCounter >= 10) {
                    const u16 * map;
                    u16 * mapbuf;
                    if((animation = FindAnimationFromAnimId(0x8F)))
                        DestroyAnimation(animation);
                    if((animation = FindAnimationFromAnimId(0x90)))
                        DestroyAnimation(animation);
                    for(i = 0; i < 5; i++) {
                        if((animation = FindAnimationFromAnimId(0x91+i)))
                            DestroyAnimation(animation);
                    }
                    map = gMapSpeedlines;
                    mapbuf = gBG3MapBuffer;
                    DmaCopy16(3, map, mapbuf, sizeof(gMapSpeedlines));
                    DmaFill16(3, 0, PLTT+0x40, 0x1C0);
                    DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x9600);
                    main->Bg256_scroll_y = 0;
                    gMain.case4OtherBGAnimationState++;
                    gMain.case4OtherBGAnimationCounter = 0;
                }
                break;
            case 2: // _080020CC
                animation = FindAnimationFromAnimId(0x7B);
                if(animation) {
                    if(gMain.frameCounter % 2)
                        animation->animationInfo.yOrigin -= 0x10;
                }
                OffsetAllAnimations(0, 0x10);
                main->case4OtherBGAnimationCounter++;
                if(main->case4OtherBGAnimationCounter >= 10)
                    gMain.case4OtherBGAnimationState++;
        }
        ioRegs->lcd_bg3vofs = 8 - main->Bg256_scroll_y;
        ioRegs->lcd_bg3hofs = 8;
        return;
    }
    if(main->currentBG == 0x61) {
        struct AnimationListEntry * animation = FindAnimationFromAnimId(0x96);
        if((gMain.frameCounter % 36) == 0)
            animation->animationInfo.xOrigin--;
    }
    if(courtScroll->state != 0 && (courtScroll->frameCounter & 1) == 0) // frameCounter divisible by 2?
    {
        u8 * courtScrollGfx = courtScroll->frameDataPtr;
        u8 * vram;
        u32 temp = 0;
        u16 i;
        u32 sb;
        switch(courtScroll->scrollMode) {
            case 0:
            case 1:
                temp = gCourtScrollGfxFrameIndices[0][courtScroll->frameCounter / 2];
                break;
            case 2:
            case 3: {
                temp = 130 - gCourtScrollGfxFrameIndices[1][courtScroll->frameCounter / 2];
                break;
            }
            case 4:
            case 5:
                temp = 130 - gCourtScrollGfxFrameIndices[0][courtScroll->frameCounter / 2];
                break;
        }
        gIORegisters.lcd_bg3cnt &= ~BGCNT_256COLOR;
        DmaCopy16(3, courtScrollGfx, PLTT+0x40, 0x20);
        courtScrollGfx += 0x20;
        courtScrollGfx += temp * 0x20;
        sb = 0x1400;
        vram = BG_CHAR_ADDR(1);
        for(i = 0; i < 20; i++) {
            DmaCopy16(3, courtScrollGfx, vram, 0x3C0);
            vram += 0x3C0;
            courtScrollGfx += sb;
        }   
    }
    if(main->isBGScrolling == FALSE)
        return;
    unk0 = gBackgroundTable[main->currentBG].controlBits;
    if(unk0 & BG_MODE_SPECIAL_SPEEDLINE)
    {
        ioRegs->lcd_bg3hofs += main->horizontolBGScrollSpeed;
        ioRegs->lcd_bg3hofs &= 0x1FF;
        return;
    }
    unk0 = main->Bg256_dir;
    if(unk0 & 0x10)
    {
        if(main->horizontolBGScrollSpeed > 0)
        {
            main->isBGScrolling = FALSE;
            return;
        }
        if(main->currentBG == 0x57) {
            if(gMain.frameCounter % 4)
                return;
        }
        if(main->currentBG == 0x45) { // case3_intro_circus
            if(main->Bg256_pos_x < 10){
                eCase3IntroBG69ScrollSubTick++;
                if(eCase3IntroBG69ScrollSubTick < eCase3IntroBG69ScrollTick)
                    return;
                eCase3IntroBG69ScrollSubTick = 0;
                eCase3IntroBG69ScrollTick++;
            }
            if(main->currentBG == 0x45) { // ??
                struct AnimationListEntry * animation;
                if(main->Bg256_pos_x == 240) {
                    eCase3IntroBG69ScrollSubTick = 0;
                    eCase3IntroBG69ScrollTick = 0;
                    eCase3IntroBG69MaxAnimationSubTick = 0;
                    eCase3IntroBG69MaxAnimationTickIndex = 0;
                }
                animation = FindAnimationFromAnimId(0x74);
                if(animation) {
                    eCase3IntroBG69MaxAnimationSubTick++;
                    if(eCase3IntroBG69MaxAnimationSubTick == gCase3IntroBG69MaxAnimationTicks[eCase3IntroBG69MaxAnimationTickIndex]) {
                        eCase3IntroBG69MaxAnimationSubTick = 0;
                        animation->animationInfo.xOrigin--;
                        eCase3IntroBG69MaxAnimationTickIndex++;
                    }
                    if(main->Bg256_pos_x > 140) {
                        if((main->Bg256_pos_x % 10) == 0)
                            animation->animationInfo.yOrigin++;
                    }
                    if(main->Bg256_pos_x < 120) {
                        if((main->Bg256_pos_x % 6) == 0)
                            animation->animationInfo.yOrigin--;
                    }
                    animation->animationInfo.xOrigin--;
                }
            }
        }
        main->Bg256_scroll_x += main->horizontolBGScrollSpeed;
        main->Bg256_pos_x += main->horizontolBGScrollSpeed;
        unk0 = gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160 ? 480 : 360;
        unk1 = gBackgroundTable[main->currentBG].controlBits & 0x80000000;
        unk0 |= unk1;
        if(main->Bg256_scroll_x <= -8)
            bg256_right_scroll(main, unk0);
        else if(main->Bg256_pos_x < 0)
        {
            if(--main->Bg256_buff_pos < 0)
                main->Bg256_buff_pos = 30;
            bg256_right_scroll_end(main, unk0);
        }
        OffsetAllAnimations(-main->horizontolBGScrollSpeed, 0);
    }
    else if(unk0 & 0x20)
    {
        if(main->horizontolBGScrollSpeed < 0)
        {
            main->isBGScrolling = FALSE;
            return;
        }
        main->Bg256_scroll_x += main->horizontolBGScrollSpeed;
        main->Bg256_pos_x += main->horizontolBGScrollSpeed;
        unk0 = gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160 ? 480 : 360;
        unk1 = gBackgroundTable[main->currentBG].controlBits & 0x80000000;
        unk0 |= unk1;
        if(main->Bg256_scroll_x >= 8)
            bg256_left_scroll(main, unk0);
        if(main->Bg256_pos_x > unk0/2)
        {
            if(++main->Bg256_buff_pos > 30)
                main->Bg256_buff_pos = 0;
            bg256_left_scroll_end(main, unk0);
        }
        OffsetAllAnimations(-main->horizontolBGScrollSpeed, 0);
    }
    else if(unk0 & 0x40)
    {
        if(main->verticalBGScrollSpeed > 0)
        {
            main->isBGScrolling = FALSE;
            return;
        }
        if(main->currentBG == 0x43) { // case3_intro_lion_blue_yellow
            struct AnimationListEntry * animation = FindAnimationFromAnimId(0x73);
            if(animation) {
                if(main->Bg256_pos_y > 120) {
                    if(main->Bg256_pos_y % 2)
                        animation->animationInfo.yOrigin--;
                } else if(121 - main->Bg256_pos_y / 6 < 3) {
                    animation->animationInfo.yOrigin -= (121 - main->Bg256_pos_y) / 6;
                } else {
                    animation->animationInfo.yOrigin -= 3;
                }
            }
            if(main->Bg256_pos_y == 160) {
                eCase3IntroBG67ScrollSubTick = 0;
                eCase3IntroBG67ScrollTick = 5;
            } else {
                if(main->Bg256_pos_y >= 156
                && eCase3IntroBG67ScrollTick) {
                    eCase3IntroBG67ScrollSubTick++;
                    if(eCase3IntroBG67ScrollSubTick != eCase3IntroBG67ScrollTick)
                        return;
                    eCase3IntroBG67ScrollSubTick = 0;
                    eCase3IntroBG67ScrollTick--;
                }
                if(main->Bg256_pos_y < 40) {
                    eCase3IntroBG67ScrollSubTick++;
                    if(eCase3IntroBG67ScrollSubTick < eCase3IntroBG67ScrollTick)
                        return;
                    eCase3IntroBG67ScrollSubTick = 0;
                    eCase3IntroBG67ScrollTick++;
                }
            }
        }
        main->Bg256_scroll_y += main->verticalBGScrollSpeed;
        main->Bg256_pos_y += main->verticalBGScrollSpeed;
        unk0 = gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320 ? 320 : 240;
        unk1 = gBackgroundTable[main->currentBG].controlBits & 0x80000000;
        unk0 |= unk1;
        if(main->Bg256_scroll_y <= -8)
            bg256_down_scroll(main, unk0);
        else if(main->Bg256_pos_y <= 0)
        {
            if(--main->Bg256_buff_pos < 0)
                main->Bg256_buff_pos = 20;
            bg256_down_scroll_end(main, unk0);
        }
        OffsetAllAnimations(0, -main->verticalBGScrollSpeed);
    }
    else if(unk0 & 0x80)
    {
        if(main->verticalBGScrollSpeed < 0)
        {
            main->isBGScrolling = FALSE;
            return;
        }
        if(main->currentBG == 0x24) {
            struct AnimationListEntry * animation = FindAnimationFromAnimId(0x6D);
            if(animation == NULL) {
                if(main->Bg256_pos_y >= 0x20) {
                    DmaFill16(3, 0, OBJ_VRAM0+0x5800, 0xF40);
                    PlayAnimationAtCustomOrigin(0x6C, 120, 240 - main->Bg256_pos_y);
                    PlayAnimationAtCustomOrigin(0x6D, 120, 240 - main->Bg256_pos_y);
                }
            }
        }
        main->Bg256_scroll_y += main->verticalBGScrollSpeed;
        main->Bg256_pos_y += main->verticalBGScrollSpeed;
        unk0 = gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320 ? 320 : 240;
        unk1 = gBackgroundTable[main->currentBG].controlBits & 0x80000000;
        unk0 |= unk1;
        if(main->Bg256_scroll_y >= 8)
            bg256_up_scroll(main, unk0);
        else if(main->Bg256_pos_y > unk0/2)
        {
            if(++main->Bg256_buff_pos > 20)
                main->Bg256_buff_pos = 0;
            bg256_up_scroll_end(main, unk0*2);
        }
        OffsetAllAnimations(0, -main->verticalBGScrollSpeed);
    }
    ioRegs->lcd_bg3vofs = main->Bg256_scroll_y + 8;
    ioRegs->lcd_bg3hofs = main->Bg256_scroll_x + 8;
}

void DecompressCurrentBGStripe(u32 bgId)
{
    u32 i;
    u32 size;
    u32 flags;
    u8 * bgData;
    bgId &= ~0x8000;
    if(bgId == 0x80)
    {
        gMain.currentBgStripe = 11;
        UpdateAnimations(gMain.previousBG);
        return;
    }
    bgData = (void*)gBackgroundTable[bgId].bgData;
    if(gMain.currentBgStripe == 1)
    {
        u32 * ptr = (u32 *)bgData;
        flags = (u32)ptr;
        for(i = 1; i < 11; i++)
            gMain.bgStripeOffsets[i] = *ptr++;
        UpdateAnimations(gMain.previousBG);
    }
    bgData += gMain.bgStripeOffsets[gMain.currentBgStripe];
    flags = gBackgroundTable[bgId].controlBits; 
    if(flags & BG_MODE_SIZE_480x160)
        i = 0x1E00;
    else if(flags & BG_MODE_SIZE_240x320)
        i = 0x1E00;
    else
        i = 0xF00;
    if(flags & BG_MODE_4BPP)
        i /= 2;
    if(gMain.currentBgStripe == 1)
    {
        if(flags & BG_MODE_4BPP)
            bgData += 0x20;
        else
            bgData += 0x200;
        if((flags & BG_MODE_SIZE_MASK) == BG_MODE_SIZE_240x160)
            gMain.bgStripeDestPtr = eBGDecompBuffer2;
        else
            gMain.bgStripeDestPtr = eBGDecompBuffer;
    }
    else
        gMain.bgStripeDestPtr += i;
    LZ77UnCompWram(bgData, gMain.bgStripeDestPtr);
    gMain.currentBgStripe++;
}

void DecompressBackgroundIntoBuffer(u32 bgId)
{
    u32 i;
    u32 size;
    u32 flags;
    u8 * bgData;
    u32 * ptr;
    UpdateAnimations(gMain.previousBG);
    bgId &= ~0x8000;
    if(bgId == 0x80)
        return;
    bgData = (void*)gBackgroundTable[bgId].bgData;
    ptr = (u32 *)bgData;
    for(i = 1; i < 11; i++)
        gMain.bgStripeOffsets[i] = *ptr++;
    flags = gBackgroundTable[bgId].controlBits;
    if(flags & BG_MODE_SIZE_480x160)
        size = 0x1E00;
    else if(flags & BG_MODE_SIZE_240x320)
        size = 0x1E00;
    else
        size = 0xF00;
    if(flags & BG_MODE_4BPP)
        size /= 2;

    if(flags & BG_MODE_4BPP)
        bgData += 0x20;
    else
        bgData += 0x200;
    bgData += gMain.bgStripeOffsets[1];
    if(!(flags & 0xF)) {
        gMain.bgStripeDestPtr = eBGDecompBuffer2;
    }
    else {
        gMain.bgStripeDestPtr = eBGDecompBuffer;
    }
    m4aSoundVSyncOff();
    LZ77UnCompWram(bgData, gMain.bgStripeDestPtr);
    for(i = 2; i < 11; i++)
    {
        gMain.bgStripeDestPtr += size;
        bgData = gBackgroundTable[bgId].bgData;
        bgData += gMain.bgStripeOffsets[i];
        LZ77UnCompWram(bgData, gMain.bgStripeDestPtr);
    }
    m4aSoundVSyncOn();
}

// leftover from GS1
void LoadCase3IntroBackgrounds()
{
}

void EnableDetentionCenterMask(bool16 enable)
{
    u16 i, j;
    u16 r4;
    u16 * map = &gBG0MapBuffer[0x202];
    map += 0x20;
    for(r4 = 0, i = 0; i < 3; r4++, i++) {
        for(j = 0; j < 26; j++) {
            if(enable)
                *map++ = 0x2000 | (0x80 + r4);
            else
                *map++ = 0;
        }
        map += 6;
    }
    if(enable) {
        DmaCopy16(3, gGfxDetentionCenterBottomTiles, VRAM+0x1000, 0x60);
        gIORegisters.lcd_bg0cnt &= ~0x3;
        gIORegisters.lcd_bg0cnt |= BGCNT_PRIORITY(2);
        gIORegisters.lcd_dispcnt |= DISPCNT_BG0_ON;
    }
}

void CopyBGDataToVram(u32 bgId)
{
    struct Main * main = &gMain; // r8
    struct IORegisters * ioReg = &gIORegisters; // r9 sb
    void * dst;
    const void * src;
    u8 * tempPtr;
    u8 * bgData;
    bool32 is4bpp;
    u32 tempBgCtrl;
    u32 tempSize;
    u32 i, j;

    u32 sp4;
    u32 swap;

    if(bgId == 0x56)
        main->Bg256_scroll_y = 0;
    if(bgId == 0x57)
        main->Bg256_scroll_y = 0;
    if(bgId == 0x11) {
        if(main->disableDetentionCenterMaskInDetentionCenter == 1)
            EnableDetentionCenterMask(FALSE);
        else
            EnableDetentionCenterMask(TRUE);
    } else {
        main->disableDetentionCenterMaskInDetentionCenter = 0;
        EnableDetentionCenterMask(FALSE);
    }
    if(gMain.process[GAME_PROCESS] != INVESTIGATION_PROCESS) {
        if(bgId == 4) {
            LoadCounselBenchGraphics();
            SetOAMForCourtBenchSpritesDefense(0, 0x80, 1);
        } else if(bgId == 5) {
            LoadCounselBenchGraphics();
            SetOAMForCourtBenchSpritesProsecution(0x20, 0x80, 1);
        } else if(bgId == 6) {
            LoadWitnessBenchGraphics();
            SetOAMForCourtBenchSpritesWitness(0x18, 0x80, 1);
        } else if((bgId == 0x16 || bgId == 0x18)
               && (gAnimation[1].flags & ANIM_ALLOCATED)
               && gAnimation[1].animationInfo.personId == 0x10
               && (!(main->process[GAME_PROCESS] == COURT_RECORD_PROCESS && main->process[GAME_PROCESS_STATE] == 0x5) || main->process[GAME_PROCESS_VAR1] == 0x4)) {
            LoadWitnessBenchGraphics();
            SetOAMForCourtBenchSpritesWitness(0x18, 0x80, 1);
        } else if(bgId == 0x53
               && (gAnimation[1].flags & ANIM_ALLOCATED)
               && gAnimation[1].animationInfo.personId == 3
               && (!(main->process[GAME_PROCESS] == COURT_RECORD_PROCESS && main->process[GAME_PROCESS_STATE] == 0x5) || main->process[GAME_PROCESS_VAR1] == 0x4)) {
            LoadCounselBenchGraphics();
            SetOAMForCourtBenchSpritesDefense(0, 0x80, 1);
        } else if(bgId == 0x80
               && (gAnimation[1].flags & ANIM_ALLOCATED)
               && (gAnimation[1].flags & ANIM_QUEUED_PAL_UPLOAD)) {
            switch(gAnimation[1].animationInfo.personId) {
                case 3:
                    LoadCounselBenchGraphics();
                    SetOAMForCourtBenchSpritesDefense(0, 0x80, 1);
                    break;
                case 0x18:
                    LoadWitnessBenchGraphics();
                    SetOAMForCourtBenchSpritesWitness(0x18, 0x80, 1);
                    break;
                case 8:
                    LoadCounselBenchGraphics();
                    SetOAMForCourtBenchSpritesProsecution(0x18, 0x80, 1);
                    break;
                default:
                    SetOAMForCourtBenchSpritesWitness(0, 0, 0);
                    SetOAMForCourtBenchSpritesDefense(0, 0, 0);
                    break;
            }
        } else {
            SetOAMForCourtBenchSpritesWitness(0, 0, 0);
            SetOAMForCourtBenchSpritesDefense(0, 0, 0);
        }
    }
    if(gScriptContext.flags & 0x40) {
        src = gPal_BG014_BustupPhoenix;
        dst = (void *)PLTT+0x1C0;
        DmaCopy16(3, src, dst, 0x20);
        src = gPal_BG015_BustupEdgeworth;
        dst = (void *)PLTT+0x1E0;
        DmaCopy16(3, src, dst, 0x20);
        src = gPal_BG020_BustupFranziska;
        dst = (void *)PLTT+0x1A0;
        DmaCopy16(3, src, dst, 0x20);
        DmaCopy16(3, gGfxSpeedlinesFirstAndLastColumns, eSpeedlineDecompBuffer, 0x500);
        src = eSpeedlineDecompBuffer;
        dst = (void *)VRAM+0x8B00;
        DmaCopy16(3, src, dst, 0x5000);
        src = gBG2MapBuffer;
        dst = BG_SCREEN_ADDR(30);
        DmaCopy16(3, src, dst, 0x580);
        *(u16 *)REG_ADDR_BG2CNT = ioReg->lcd_bg2cnt;
        if(main->currentBG == 0x80) {
            *(u16 *)REG_ADDR_BG3CNT &= ~0x80;
            DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x20);
            dst = BG_SCREEN_ADDR(31);
            DmaFill16(3, 0x0, dst, BG_SCREEN_SIZE);
            MoveAnimationTilesToRam(0);
            MoveSpritesToOAM();
            return;
        }
    }
    MoveAnimationTilesToRam(0);
    MoveSpritesToOAM();
    tempBgCtrl = bgId;
    bgId &= ~0x8000;
    ioReg->lcd_bg3vofs = 8;
    ioReg->lcd_bg3hofs = 8;
    main->isBGScrolling = FALSE;
    main->Bg256_pos_x = 0;
    main->Bg256_pos_y = 0;
    main->currentBG = bgId;
    main->currentDisplayBG = bgId;
    if(bgId == 0x80)
    {
        src = gMapSpeedlines;
        dst = gBG3MapBuffer;
        DmaCopy16(3, src, dst, sizeof(gMapSpeedlines));
        if(main->effectType == 0xFFFE) {
            if(gAnimation[1].animationInfo.personId == 0x25)
                LoadAndAdjustCounselWitnessBenchPaletteByMode(6, 0x20, 1);
            DmaFill16(3, 0x1F, BG_PLTT+0x40, 0x1C0);
            DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x9600);
        } else {
            DmaFill16(3, 0, BG_PLTT+0x40, 0x1C0);
            DmaFill16(3, 0x2222, BG_CHAR_ADDR(1), 0x9600);
        }
        return;
    }
    i = gBackgroundTable[bgId].controlBits;
    if(i & BG_MODE_SPECIAL_SPEEDLINE)
    {
        //u32 temp;
        src = gMapSpeedlines;
        dst = gBG3MapBuffer;
        DmaCopy16(3, src, dst, sizeof(gMapSpeedlines));
        j = 0x258;
        for(i = 0; i < 20; i++, j++)
            gBG3MapBuffer[i * 0x20 + 0x20] = j | 0x2000;
        for(i = 0; i < 20; i++, j++)
            gBG3MapBuffer[i * 0x20 + 0x3F] = j | 0x2000;
        main->isBGScrolling = TRUE;
        DmaCopy16(3, gGfxSpeedlinesFirstAndLastColumns, eSpeedlineDecompBuffer, 0x500);
    }

    if(tempBgCtrl & 0x8000)
    {
        tempBgCtrl = gBackgroundTable[bgId].controlBits;
        if(tempBgCtrl & BG_MODE_VSCROLL_TOP)
        {
            tempBgCtrl &= ~BG_MODE_VSCROLL_TOP;
            tempBgCtrl |= BG_MODE_VSCROLL_DOWN;
        }
        else if(tempBgCtrl & BG_MODE_VSCROLL_DOWN)
        {
            tempBgCtrl &= ~BG_MODE_VSCROLL_DOWN;
            tempBgCtrl |= BG_MODE_VSCROLL_TOP;
        }
        else if(tempBgCtrl & BG_MODE_HSCROLL_RIGHT)
        {
            tempBgCtrl &= ~BG_MODE_HSCROLL_RIGHT;
            tempBgCtrl |= BG_MODE_HSCROLL_LEFT;
        }
        else if(tempBgCtrl & BG_MODE_HSCROLL_LEFT)
        {
            tempBgCtrl &= ~BG_MODE_HSCROLL_LEFT;
            tempBgCtrl |= BG_MODE_HSCROLL_RIGHT;
        }
    }
    else
        tempBgCtrl = gBackgroundTable[bgId].controlBits;

    sp4 = tempBgCtrl;

    bgData = gBackgroundTable[bgId].bgData + 0x28;
    if(tempBgCtrl & BG_MODE_4BPP)
    {
        is4bpp = TRUE;
        ioReg->lcd_bg3cnt &= ~BGCNT_256COLOR;
        DmaCopy16(3, bgData, BG_PLTT+0x40, 0x20);
        if(!(gScriptContext.flags & 0x40)) {
            DmaFill16(3, 0, BG_CHAR_ADDR(1)+0x4EC0, 0x20);
        }
    }
    else
    {
        is4bpp = FALSE;
        ioReg->lcd_bg3cnt |= BGCNT_256COLOR;
        DmaCopy16(3, bgData, BG_PLTT, 0x200);
    }
    *(u16*)&REG_DISPCNT = ioReg->lcd_dispcnt;
    *(u16*)&REG_BG3CNT = ioReg->lcd_bg3cnt;
    *(u32*)&REG_BG3HOFS = *(u32*)&ioReg->lcd_bg3hofs;
    main->Bg256_dir = tempBgCtrl;

    bgData = (gBackgroundTable[bgId].controlBits & BG_MODE_SIZE_MASK) == BG_MODE_SIZE_240x160 ? eBGDecompBuffer2 : eBGDecompBuffer;

    if((tempBgCtrl & BG_MODE_SIZE_MASK) == 0)
    {
        if((tempBgCtrl & BG_MODE_SPECIAL_SPEEDLINE) == 0)
        {
            src = gMapSpeedlines;
            dst = gBG3MapBuffer;
            DmaCopy16(3, src, dst, sizeof(gMapSpeedlines));
        }
        src = gBG3MapBuffer;
        dst = (void *)BG_SCREEN_ADDR(31);
        DmaCopy16(3, src, dst, 0x800);
        DmaCopy16(3, bgData, BG_CHAR_ADDR(1), 0x9600 >> is4bpp);
    }
    else
    {
        if(tempBgCtrl & (BG_MODE_SIZE_240x320 | BG_MODE_SIZE_240x240))
        {
            if(tempBgCtrl & BG_MODE_VSCROLL_TOP)
            {
                if(tempBgCtrl & BG_MODE_SIZE_240x320)
                {
                    bgData += 0x9600 >> is4bpp;
                    main->Bg256_next_line = 0x12;
                    main->Bg256_pos_y = 0xA0;
                }
                else
                {
                    bgData -= 0x4B00 >> is4bpp;
                    main->Bg256_next_line = 0x8;
                    main->Bg256_pos_y = 0x50;
                }
                DmaCopy16(3, bgData, BG_CHAR_ADDR(1), 0x9600 >> is4bpp);
                bgData = eBGDecompBuffer + ((main->Bg256_next_line * 0x780) >> is4bpp); // lol gg good luck
                bgData += 0x780 >> is4bpp;
                DmaCopy16(3, bgData, BG_CHAR_ADDR(1) + (0x9600 >> is4bpp), 0x780 >> is4bpp);
                main->Bg256_buff_pos = 0x13;
                main->Bg256_stop_line = 0x26;
                if(main->currentBG == 0x50)
                    main->Bg256_stop_line = 6;
                for(i = 0; i < 20; i++) {
                    for(j = 0; j < 30; j++)
                        gBG3MapBuffer[i * 32 + 33 + j] = (j + i * 30) | 0x2000;
                }
            }
            else
            {
                DmaCopy16(3, bgData, BG_CHAR_ADDR(1), 0x9D80 >> is4bpp);
                main->Bg256_pos_y = 0;
                main->Bg256_buff_pos = 0;
                main->Bg256_next_line = 0x15;
                if(tempBgCtrl & BG_MODE_SIZE_240x320)
                    main->Bg256_stop_line = 1;
                else
                    main->Bg256_stop_line = 0x20;
                for(i = 0; i < 20; i++) {
                    for(j = 0; j < 30; j++)
                        gBG3MapBuffer[i * 32 + 33 + j] = (j + i * 30) | 0x2000;
                }
            }
            for(i = 0; i < 2; i++)
            {
                for(j = 0; j < 30; j++)
                    gBG3MapBuffer[(i * 0x2A0) + 1 + j] = (0x258 + j) | 0x2000;
            }
        }
        else
        {
            tempSize = tempBgCtrl & BG_MODE_SIZE_480x160 ? 0xF00 : 0xB40;
            if(tempBgCtrl & BG_MODE_HSCROLL_RIGHT)
            {
                main->Bg256_buff_pos = 0x1E;
                main->Bg256_stop_line = 0x3A;
                if(tempBgCtrl & BG_MODE_SIZE_480x160)
                {
                    bgData += 0x740;
                    main->Bg256_next_line = 0x1C;
                    main->Bg256_pos_x = 0xF0;
                }
                else
                {
                    bgData += 0x380;
                    main->Bg256_next_line = 0xD;
                    main->Bg256_pos_x = 0x78;
                }
                for(i = 0; i < 20; i++)
                {
                    for(j = 0; j < 31; j++)
                        gBG3MapBuffer[i * 0x20 + j + 0x20] = (j + i * 0x1F) | 0x2000;
                }
            }
            else if(tempBgCtrl & BG_MODE_HSCROLL_LEFT)
            {
                main->Bg256_next_line = 0x1F;
                main->Bg256_pos_x = 0;
                main->Bg256_buff_pos = 0;
                if(tempBgCtrl & BG_MODE_SIZE_480x160)
                    main->Bg256_stop_line = 1;
                else
                    main->Bg256_stop_line = 0x2F;
                for(i = 0; i < 20; i++)
                {
                    for(j = 0; j < 31; j++)
                        gBG3MapBuffer[i * 0x20 + j + 0x21] = (j + i * 0x1F) | 0x2000;
                }
            }
            for(i = 0; i < 2; i++)
            {
                for(j = 0; j < 32; j++)
                    gBG3MapBuffer[i * 0x2A0 + j] = 0x276 | 0x2000;
            }
            tempBgCtrl = (u32)BG_CHAR_ADDR(1);
            for(i = 0; i < 20; i++)
            {
                DmaCopy16(3, bgData, tempBgCtrl, 0x7C0 >> is4bpp);
                bgData += tempSize >> is4bpp;
                tempBgCtrl += 0x7C0 >> is4bpp;
            }
        }
        src = gBG3MapBuffer;
        dst = (void*)BG_SCREEN_ADDR(31);
        DmaCopy16(3, src, dst, 0x800);
    }
    if(sp4 & 0x100) {
        for(i = 0; i < 0x400; i++)
            gBG3MapBuffer[i] |= 0x400;
        for(i = 0; i < 32; i++) {
            for(j = 0; j < 16; j++) {
                swap = gBG3MapBuffer[i * 32 + j];
                gBG3MapBuffer[i * 32 + j] = gBG3MapBuffer[i * 32 + (31 - j)];
                gBG3MapBuffer[i * 32 + (31 - j)] = swap;
            }
        }
        src = gBG3MapBuffer;
        dst = BG_SCREEN_ADDR(31);
        DmaCopy16(3, src, dst, BG_SCREEN_SIZE);
    }
    if(sp4 & 0x200) {
        for(i = 0; i < 0x400; i++)
            gBG3MapBuffer[i] |= 0x800;
        for(i = 0; i < 11; i++) {
            for(j = 0; j < 32; j++) {
                swap = gBG3MapBuffer[i * 32 + j];
                gBG3MapBuffer[i * 32 + j] = gBG3MapBuffer[(21-i) * 32 + j];
                gBG3MapBuffer[(21-i) * 32 + j] = swap;
            }
        }
        src = gBG3MapBuffer;
        dst = BG_SCREEN_ADDR(31);
        DmaCopy16(3, src, dst, BG_SCREEN_SIZE);
    }
    if(main->currentBG == 0xA) {
        switch(main->effectType) {
            case 3:
            case 7:
                main->effectType = 0xFFFD;
                break;
            case 4:
            case 8:
                main->effectType = 0;
                break;
            case 5:
                main->effectType = 0;
                break;
            case 6:
                main->effectType = 0xFFFE;
                break;
        }
        if(main->currentBG == 0xA) // ! ???
            return;
    }
    if((!(main->process[GAME_PROCESS] == COURT_RECORD_PROCESS && main->process[GAME_PROCESS_STATE] == 0x5) || main->process[GAME_PROCESS_VAR1] == 0x4)) {
        if(main->effectType == 0xFFFD || main->effectType == 0xFFFE) {
            if(main->effectType == 0xFFFE)
                LoadAndAdjustBGPaletteByMode(main->currentBG, 0x20, 1);
            else
                LoadAndAdjustBGPaletteByMode(main->currentBG, 0x20, 0);
            if(main->currentBG == 4 || main->currentBG == 5 || main->currentBG == 6) {
                if(main->effectType == 0xFFFE)
                    LoadAndAdjustCounselWitnessBenchPaletteByMode(main->currentBG, 0x20, 1);
                else
                    LoadAndAdjustCounselWitnessBenchPaletteByMode(main->currentBG, 0x20, 0);
            }
        }
    }
}

void CopyBGDataToVramAndScrollBG(u32 bgId)
{
    struct Main * main = &gMain;
    u16 sp0 = main->previousBG;
    bool32 r8 = main->isBGScrolling;
    u16 sl = main->Bg256_pos_x;
    u16 spC = main->Bg256_pos_y;
    u8 r6 = main->horizontolBGScrollSpeed;
    u8 r5 = main->verticalBGScrollSpeed;
    u32 unk0;
    CopyBGDataToVram(bgId);
    main->previousBG = sp0;
    main->isBGScrolling = r8;
    main->horizontolBGScrollSpeed = r6;
    main->verticalBGScrollSpeed = r5;
    main->Bg256_scroll_x = main->Bg256_pos_x - sl;
    main->Bg256_scroll_y = main->Bg256_pos_y - spC;
    unk0 = gBackgroundTable[main->currentBG].controlBits;
    if(unk0 & BG_MODE_SPECIAL_SPEEDLINE)
        return;
    unk0 &= BG_MODE_4BPP;
    if(main->Bg256_scroll_x > 0)
    {
        main->Bg256_pos_x = sl;
        main->Bg256_scroll_x *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160)
            unk0 |= 480;
        else
            unk0 |= 360;
        bg256_right_scroll(main, unk0);
    }
    else if(main->Bg256_scroll_x < 0)
    {
        main->Bg256_pos_x = sl;
        main->Bg256_scroll_x *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_480x160)
            unk0 |= 480;
        else
            unk0 |= 360;
        bg256_left_scroll(main, unk0);
    }
    else if(main->Bg256_scroll_y > 0)
    {
        main->Bg256_pos_y = spC;
        main->Bg256_scroll_y *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320)
            unk0 |= 320;
        else
            unk0 |= 240;
        bg256_down_scroll(main, unk0);
    }
    else if(main->Bg256_scroll_y < 0)
    {
        main->Bg256_pos_y = spC;
        main->Bg256_scroll_y *= -1;
        if(gBackgroundTable[main->currentBG].controlBits & BG_MODE_SIZE_240x320)
            unk0 |= 320;
        else
            unk0 |= 240;
        bg256_up_scroll(main, unk0);
    }
}

u32 GetBGControlBits(u32 bgId)
{
    return gBackgroundTable[bgId].controlBits;
}

u8 * GetBGPalettePtr(u32 bgId)
{
    return gBackgroundTable[bgId].bgData + 0x28;
}

void SetTextboxSize(u32 arg0)
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u16 * map;
    u32 i;
    switch(arg0)
    {
    case 0:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x2C0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        scriptCtx->textboxState = 0;
        SetTextboxNametag(scriptCtx->textboxNameId & 0x7F, (u8)(scriptCtx->textboxNameId & 0x80));
        break;
    case 1:
        scriptCtx->unused3A = 0;
        scriptCtx->textboxYPos = 14;
        scriptCtx->textboxState = 2;
        SetTextboxNametag(0, FALSE);
        break;
    case 2:
        map = gBG1MapBuffer;
        for(i = 0; i < 0x1C0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        map = gBG1MapBuffer + 0x1C0;
        for(i = 0x1C0; i < 0x220; i++, map++)
        {
            *map = 0;
        }
        map = gBG1MapBuffer + 0x200;
        for(i = 0x1C0; i < 0x1E0; i++, map++)
        {
            *map = gTextboxTiles[i];
        }
        scriptCtx->textboxState = 0;
        break;
    default:
        break;
    }
}


void UpdateTextbox()
{
    struct ScriptContext * scriptCtx = &gScriptContext;
    u32 tiley;
    u32 i;
    switch(scriptCtx->textboxState)
    {
    case 0:
    case 1:
        break;
    case 2:
        scriptCtx->unused3A += 2;
        if(scriptCtx->unused3A < 2)
            break;
        scriptCtx->unused3A = 0;
        tiley = scriptCtx->textboxYPos * 32;
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley - 32 + i];
            u16 * src = &gBG1MapBuffer[tiley + i];
            *dest = *src;
        }
        for(i = 0; i < 32; i++)
        {
            u16 * dest = &gBG1MapBuffer[tiley + i];
            u16 * src = &gBG1MapBuffer[tiley + 32 + i];
            *dest = *src;
        }
        scriptCtx->textboxYPos--;
        if(scriptCtx->textboxYPos == 0)
        {
            gMain.showTextboxCharacters = TRUE;
            scriptCtx->textboxState = 0;
        }
        break;
    case 3:
        gIORegisters.lcd_bg1vofs += 4;
        if(gIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gMain.advanceScriptContext = TRUE;
            gMain.showTextboxCharacters = TRUE;
            gIORegisters.lcd_bg1vofs = 0;
            scriptCtx->textboxState = 0;
        }
        break;
    case 4:
        gIORegisters.lcd_bg1vofs -= 4;
        if(gIORegisters.lcd_bg1vofs < (u16)-80u)
        {
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            scriptCtx->textboxState = 1;
        }
        break;
    }
}

void CopyTextboxTilesToBG1MapBuffer()
{
    s32 i;
    for(i = 0x1C0; i < 0x3C0; i++) {
        gBG1MapBuffer[i] = gTextboxTiles[i];
    }
}

void SlideTextbox(u32 slideUp)
{
    gMain.advanceScriptContext = 0;
    gMain.showTextboxCharacters = 0;
    CopyTextboxTilesToBG1MapBuffer();
    SetTextboxNametag(0, FALSE);
    if(slideUp == 1)
    {
        gScriptContext.textboxState = 3;
        gInvestigation.actionState = 3;
        gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
        gBG1MapBuffer[622] = 9;
        gBG1MapBuffer[623] = 9;
    }
    else if(slideUp == 2) {
        gScriptContext.textboxState = 3;
        gInvestigation.actionState = 3;
    }
    else
    {
        gScriptContext.textboxState = 4;
        gInvestigation.actionState = 1;
    }
}

u16 AdjustColorByMode(u16 color, u16 intensity, u16 mode)
{
    u16 r = (color & 0x1F);
    u16 g = (color & 0x3E0) >> 5;
    u16 b = (color & 0x7C00) >> 10;
    u16 average = (r + g + b) / 3;

    if(intensity > 32)
        intensity = 32;
    
    switch(mode) {
        // Fade to black
        case 2:
            r = (r * (32 - intensity)) / 32;
            g = (g * (32 - intensity)) / 32;
            b = (b * (32 - intensity)) / 32;
            break;
        // Fade to red
        case 1:
            r = (r * (32 - intensity) + intensity * 31) / 32;
            g = (g * (32 - intensity)) / 32;
            b = (b * (32 - intensity)) / 32;
            break;
        // Fade to grey
        default:
            r = (r * (32 - intensity) + intensity * average) / 32;
            g = (g * (32 - intensity) + intensity * average) / 32;
            b = (b * (32 - intensity) + intensity * average) / 32;
    }
    r &= 0x1F;
    g &= 0x1F;
    b &= 0x1F;
    return (b << 10) | (g << 5) | (r);
}

void LoadAndAdjustBGPaletteByMode(u16 bgId, u16 intensity, u16 mode)
{
    u16 pal[0x100];
    u32 i;
    if(bgId == 0x80) {
        for(i = 0x20; i < 0x100; i++) {
            pal[i] = 0;
            pal[i] = AdjustColorByMode(pal[i], intensity, mode);
        }
        DmaCopy16(3, pal+0x20, PLTT+0x40, 0x1C0);
    } else {
        u32 bits = GetBGControlBits(bgId);
        u16 * bgpal = (u16 *)GetBGPalettePtr(bgId);
        if(bits & 0x80000000) {
            // 4bpp
            DmaCopy16(3, bgpal, pal, 0x20);
            for(i = 0; i < 0x10; i++) {
                pal[i] = AdjustColorByMode(pal[i], intensity, mode);
            }
            DmaCopy16(3, pal, PLTT+0x40, 0x20);
        } else {
            // 8bpp
            DmaCopy16(3, bgpal, pal, 0x200);
            for(i = 0x20; i < 0x100; i++) {
                pal[i] = AdjustColorByMode(pal[i], intensity, mode);
            }
            DmaCopy16(3, pal+0x20, PLTT+0x40, 0x1C0);
        }
    }
}

void LoadAndAdjustCurrentAnimation01PaletteByMode(u16 intensity, u16 mode) {
    u16 pal[0x30];
    u32 * gfx = (u32*)gAnimation[1].animationInfo.animGfxDataStartPtr;
    u32 paletteCount = *gfx++;
    s32 i;
    do{
    DmaCopy16(3, gfx, pal, 0x40);
    }while(0);
    for(i = 0; i < paletteCount*16; i++) {
        pal[i] = AdjustColorByMode(pal[i], intensity, mode);
    }
    if(paletteCount == 3) {
        DmaCopy16(3, pal, OBJ_PLTT+0x1A0, 0x60);
    } else {
        DmaCopy16(3, pal, OBJ_PLTT+0x1C0, paletteCount*0x20);
    }
}

void LoadAndAdjustCounselWitnessBenchPaletteByMode(u16 bgId, u16 intensity, u16 mode)
{
    u16 pal[0x10];
    u16 * benchpal;
    u32 i;
    bgId -= 4;
    benchpal = bgId < 2 ? (u16*)gPalCounselBench : (u16*)gPalWitnessBench;
    DmaCopy16(3, benchpal, pal, 0x20);
    for(i = 0; i < 0x10; i++) {
        pal[i] = AdjustColorByMode(pal[i], intensity, mode);
    }
    DmaCopy16(3, pal, OBJ_PLTT+0x140, 0x20);
}

void LoadAndAdjustAnimation10PaletteByMode(u16 intensity, u16 mode)
{
    u16 pal[0x10];
    u32 * framedata = (u32*)gGfxSeqAnimation10;
    u16 * spritepal = (u16*)(gGfxPixAnimationTileset01 + 4 + *(framedata+1));
    u32 i;
    DmaCopy16(3, spritepal, pal, 0x20);
    for(i = 0; i < 0x10; i++) {
        if(mode == 2) {
            pal[i] = AdjustColorByMode(pal[i], 32,0);
            pal[i] = AdjustColorByMode(pal[i], intensity, 2);
        } else {
            pal[i] = AdjustColorByMode(pal[i], intensity, mode);
        }
    }
    DmaCopy16(3, pal, OBJ_PLTT+0x140, 0x20);
}

void SlideInBG2Window(u32 mode, u32 speed)
{
    struct CourtRecord * courtRecord = &gCourtRecord;
    if(mode > 4) // is for save screens
    {
        courtRecord->windowIsSaveScreen = TRUE;
        mode -= 4;
    }
    else
    {
        courtRecord->windowIsSaveScreen = FALSE;
    }
    courtRecord->windowMode = mode;
    courtRecord->windowOffset = 0;
    courtRecord->windowPrevX = courtRecord->windowX;
    courtRecord->flags &= ~0x4;
    switch(mode)
    {
    case 0:
        break;
    case 1:
        courtRecord->windowScrollSpeed = speed;
        courtRecord->windowTileX = 0;
        courtRecord->windowX = 0x100;
        break;
    case 2:
        courtRecord->windowScrollSpeed = -speed;
        courtRecord->windowTileX = 31;
        courtRecord->windowX = 0x110;
        break;
    case 3:
        courtRecord->windowScrollSpeed = speed;
        break;
    case 4:
        courtRecord->windowScrollSpeed = -speed;
        break;
    default:
        break;
    }
}

// St_bg2_main00
void WindowDummy(struct CourtRecord * courtRecord)
{

}


// St_bg2_main01
void ScrollWindowWithPrevWindow(struct CourtRecord * courtRecord)
{
    u32 i;
    courtRecord->windowOffset += courtRecord->windowScrollSpeed;
    courtRecord->windowX -= courtRecord->windowScrollSpeed;
    courtRecord->windowX &= 0x1FF;
    courtRecord->windowPrevX -= courtRecord->windowScrollSpeed;
    courtRecord->windowPrevX &= 0x1FF;
    while(courtRecord->windowOffset >= 8)
    {
        courtRecord->windowOffset -= 8;
        courtRecord->windowTileX++;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0x1F)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
            courtRecord->windowX = 8;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer+1, &gBG2MapBuffer[i*0x20], 0x3E);
        }
        if(courtRecord->windowIsSaveScreen)
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gMapCourtRecordSaveWindow[courtRecord->windowTileX + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i + 31] = gMapCourtRecordNormalWindow[courtRecord->windowTileX + i];
            }
        }
    }
    while(courtRecord->windowOffset <= -8)
    {
        courtRecord->windowOffset += 8;
        courtRecord->windowTileX--;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
            courtRecord->windowX = 8;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer, &gBG2MapBuffer[i*0x20+1], 0x3E);
        }
        if(courtRecord->windowIsSaveScreen)
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gMapCourtRecordSaveWindow[courtRecord->windowTileX + i];
            }
        }
        else
        {
            for(i = 0x40; i < 0x180; i += 0x20)
            {
                gBG2MapBuffer[i] = gMapCourtRecordNormalWindow[courtRecord->windowTileX + i];
            }
        }
    }
}

// St_bg2_main02
void ScrollWindowWithoutPrevWindow(struct CourtRecord * courtRecord)
{
    u32 i;
    courtRecord->windowOffset += courtRecord->windowScrollSpeed;
    courtRecord->windowX -= courtRecord->windowScrollSpeed;
    courtRecord->windowX &= 0x1FF;
    while(courtRecord->windowOffset >= 8)
    {
        courtRecord->windowOffset -= 8;
        courtRecord->windowTileX++;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0x1F)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer+1, &gBG2MapBuffer[i*0x20], 0x3E);
        }
        for(i = 0x40; i < 0x180; i += 0x20)
        {
            gBG2MapBuffer[i+31] = 0;
        }
    }
    while(courtRecord->windowOffset <= -8)
    {
        courtRecord->windowOffset += 8;
        courtRecord->windowTileX--;
        courtRecord->windowTileX &= 0x1F;
        if(courtRecord->windowTileX == 0)
        {
            courtRecord->windowOffset = 0;
            courtRecord->windowScrollSpeed = 0;
        }
        for(i = 2; i < 12; i++)
        {
            DmaCopy16(3, &gBG2MapBuffer[i*0x20], gTilemapBuffer, 0x40);
            DmaCopy16(3, gTilemapBuffer, &gBG2MapBuffer[i*0x20+1], 0x3E);
        }
        for(i = 0x40; i < 0x180; i += 0x20)
        {
            gBG2MapBuffer[i] = 0;
        }
    }
}

// st_bg2_main_proc_tbl
void (*gWindowFunctions[])(struct CourtRecord *) = {
    WindowDummy,
	ScrollWindowWithPrevWindow,
	ScrollWindowWithPrevWindow,
	ScrollWindowWithoutPrevWindow,
	ScrollWindowWithoutPrevWindow,
};

void UpdateBG2Window(struct CourtRecord * courtRecord)
{
    if(gMain.blendMode == 0)
    {
        gWindowFunctions[courtRecord->windowMode](courtRecord);
        gIORegisters.lcd_bg2hofs = courtRecord->windowOffset + 8;
    }
}

u8 gSpeakerToNametagMap[56] = {
    0x00, 0x01, 0x01, 0x02, 0x03, 0x0C, 0x0C, 0x09,
    0x1F, 0x04, 0x05, 0x06, 0x00, 0x07, 0x0B, 0x0B,
    0x0A, 0x08, 0x08, 0x0E, 0x10, 0x0F, 0x11, 0x12,
    0x14, 0x0C, 0x13, 0x0D, 0x16, 0x15, 0x17, 0x19,
    0x1A, 0x18, 0x1B, 0x20, 0x21, 0x22, 0x00, 0x23,
    0x24, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x29,
    0x27, 0x28, 0x2A, 0x2B, 0x2C, 0x25, 0x2D, 0x00,
};

// Mess_win_name_set
void SetTextboxNametag(u32 nametagId, u32 rightSide)
{
    u32 i;
    u32 j;
    void * tiles;
    const u8 * tileId;
    u16 * map;
    u32 offset = rightSide;

    /* begin wat */
    gMain.currentSpeaker = nametagId;
    gMain.currentNametagRightSide = rightSide;
    nametagId = gSpeakerToNametagMap[nametagId];
    /* end wat */
    
    // this reuses r0 instead of loading into r5
    if(nametagId == 0)
    {
        for(i = 0x180; i < 0x1E0; i++)
            gBG1MapBuffer[i] = gTextboxTiles[i];
        return;
    }
    i = (nametagId / 5);
    j = (nametagId % 5);
    i *= 0x800;
    j *= 0xC0;
    tiles = gGfx4bppNametags + j + i;
    DmaCopy16(3, tiles, VRAM+0xA80, 0xC0);
    DmaCopy16(3, tiles+0x400, VRAM+0xB40, 0xC0);
    if(rightSide)
    {
        offset = 24;
        tileId = gNameTagTiles+18;
    }
    else
    {
        offset = 0;
        tileId = gNameTagTiles+12;
    }

    map = gBG1MapBuffer + 0x1C0;
    map += offset;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
    map = gBG1MapBuffer + 0x180;
    map += offset;
    tileId = gNameTagTiles;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
    map = gBG1MapBuffer + 0x1A0;
    map += offset;
    tileId = gNameTagTiles+6;
    for(i = 0; i < 6; i++)
    {
        *map = *tileId;
        map++;
        tileId++;
    }
}

void UpdateBGTilemaps()
{
    if(gMain.tilemapUpdateBits & 1)
        DmaCopy16(3, gBG0MapBuffer, BG_SCREEN_ADDR(28), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 2)
        DmaCopy16(3, gBG1MapBuffer, BG_SCREEN_ADDR(29), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 4)
        DmaCopy16(3, gBG2MapBuffer, BG_SCREEN_ADDR(30), BG_SCREEN_SIZE);
    if(gMain.tilemapUpdateBits & 8)
        DmaCopy16(3, gBG3MapBuffer, BG_SCREEN_ADDR(31), BG_SCREEN_SIZE);
}
