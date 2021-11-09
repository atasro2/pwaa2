#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

// BEGIN case 1
void sub_80044F8(struct Main *main) {
    DmaCopy16(3, gUnknown_0801CC08, gMain.roomData, 0x28);
    DmaCopy16(3, gUnknown_0801CA28, gTalkData, 0x1E0);
    DmaCopy16(3, gUnknown_0801CA24, gUnknown_03003B70, 4);
    main->currentRoomId = 0;
    sub_8017910();
}

void sub_800455C(struct Main *main) {
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
                DmaCopy16(3, gUnknown_0801CC30, gExaminationData, 0x78);
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
            DmaCopy16(3, gUnknown_0801CCA8, gExaminationData, 0x28);
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
            DmaCopy16(3, gUnknown_0801CCD0, gExaminationData, 0x8C);
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
            DmaCopy16(3, gUnknown_0801CD5C, gExaminationData, 0x50);
            break;
        }
        case 5: {
            if(GetFlag(0, 0x48)) {
                DmaCopy16(3, gUnknown_0801CE10, gExaminationData, 0x78);
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
                DmaCopy16(3, gUnknown_0801CDAC, gExaminationData, 0x64);
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
            DmaCopy16(3, gUnknown_0801CE88, gExaminationData, 0x64);
            break;
        }
        case 7: {
            if(GetFlag(0, 0x4D)) {
                DmaCopy16(3, gUnknown_0801CF8C, gExaminationData, 0x64);
                if(GetFlag(0, 0x7B) && !GetFlag(0, 0x4E)) {
                    InvestigationSetPersonAnimation(0x13, 0, 0);
                    PlayBGM(0xD7);
                }
                else if(!GetFlag(0, 0x4E)) {
                    InvestigationSetScriptSectionAndFlag(0x118, 0xFF);
                }
            }
            else if(GetFlag(0, 0x48)) {
                DmaCopy16(3, gUnknown_0801CF8C, gExaminationData, 0x64);
                if(GetFlag(0, 0x75)) {
                    InvestigationSetPersonAnimation(0x13, 0, 0);
                    PlayBGM(0xD7);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0x10D, 0xFF);
                }
            }
            else if(GetFlag(0, 0x42)) {
                DmaCopy16(3, gUnknown_0801CF3C, gExaminationData, 0x50);
                if(GetFlag(0, 0x43)) {
                    InvestigationSetPersonAnimation(0x13, 0, 0);
                    PlayBGM(215);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0x104, 0xFF);
                }
            }
            else {
                DmaCopy16(3, gUnknown_0801CEEC, gExaminationData, 0x50);
                if(!GetFlag(0, 0x5C)) {
                    InvestigationSetScriptSectionAndFlag(0xFE, 0xFF);
                }
            }
            break;
        }
    }
}

void sub_8004C64(struct Main *main) {
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

void sub_8004C90(struct Main *main) {
    DmaCopy16(3, gUnknown_0801D6DC, gMain.roomData, 0x28);
    DmaCopy16(3, gUnknown_0801D470, gTalkData, 0x26C);
    DmaCopy16(3, gUnknown_0801D464, gUnknown_03003B70, 12);
    main->currentRoomId = 3;
}

void sub_8004CEC(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            DmaCopy16(3, gUnknown_0801D704, gExaminationData, 0x64);
            if (!GetFlag(0, 0x90)) {
                InvestigationSetScriptSectionAndFlag(0x81, 0x90);
            }
            break;
        }
        case 1: {
            DmaCopy16(3, gUnknown_0801D768, gExaminationData, 0x28);
            if (GetFlag(0, 0xAF)) {
                LoadCurrentScriptIntoRam();
                if (!GetFlag(0, 0x94)) {
                    InvestigationSetScriptSectionAndFlag(0xA8, 0x94);
                    break;
                }
                InvestigationSetPersonAnimation(5, 0, 0);
                PlayBGM(12);
            }
            else if (GetFlag(0, 0xAA)) {
                if (!GetFlag(0, 0x93)) {
                    InvestigationSetScriptSectionAndFlag(0xA3, 0x93);
                }
                else if (!GetFlag(0, 0xBA) || !GetFlag(0, 0xBB)) {
                    InvestigationSetPersonAnimation(5, 0x52C, 0x52C);
                    PlayBGM(0xD0);
                }
            }
            else if (GetFlag(0, 0xA6) && GetFlag(0, 0xA7) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if (!GetFlag(0, 0x92)) {
                    InvestigationSetScriptSectionAndFlag(0x8A, 0x92);
                    break;
                }
                InvestigationSetPersonAnimation(4, 0, 0);
                PlayBGM(0xD0);
            }
            else if (!GetFlag(0, 0x91)) {
                InvestigationSetScriptSectionAndFlag(0x87, 0x91);
            }
            break;
        }
        case 2: {
            DmaCopy16(3, gUnknown_0801DA88, gExaminationData, 0x78);
            if (!GetFlag(0, 0x95)) {
                InvestigationSetScriptSectionAndFlag(0x14F, 0x95);
            }
            else if (!GetFlag(0, 0xB9)) {
                InvestigationSetPersonAnimation(0x16, 0, 0);
                PlayBGM(0xD1);
            }
            break;
        }
        case 3: {
            DmaCopy16(3, gUnknown_0801D790, gExaminationData, 0x8C);
            if (GetFlag(0, 0xAF)) {
                if (!GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0xEE, 0x9A);
                }
                else {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                }
            }
            else if (GetFlag(0, 0xAD) && GetFlag(0, 0xAE)) {
                if (!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xEA, 0x99);
                    break;
                }
                InvestigationSetPersonAnimation(0x18, 0xE48, 0xE48);
                PlayBGM(0xC);
            }
            else if (GetFlag(0, 0xAB)) {
                if (!GetFlag(0, 0x98)) {
                    InvestigationSetScriptSectionAndFlag(0xD7, 0x98);
                    break;
                }
                InvestigationSetPersonAnimation(0x18, 0x1778, 0x1778);
                PlayBGM(0x16);
            }
            else if (GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if (!GetFlag(0, 0x97)) {
                    InvestigationSetScriptSectionAndFlag(0xD6, 0x97);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if (GetFlag(0, 0x96)) {
                InvestigationSetPersonAnimation(0x14, 0, 0);
                PlayBGM(0xF2);
            }
            break;
        }
        case 4: {
            DmaCopy16(3, gUnknown_0801D81C, gExaminationData, 0x50);
            if (GetFlag(0, 0xAA)) {
                if (!GetFlag(0, 0x9D)) {
                    InvestigationSetScriptSectionAndFlag(0x11F, 0x9D);
                }
                else if (!GetFlag(0, 0xB9)) {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                    PlayBGM(0xF2);
                }
            }
            else if (GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3) && GetFlag(0, 0x97)) {
                if (!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0x11E, 0x9C);
                }
            }
            else if (!GetFlag(0, 0x9B)) {
                InvestigationSetScriptSectionAndFlag(0x119, 0x9B);
            }
            break;
        }
        case 5: {
            DmaCopy16(3, gUnknown_0801D86C, gExaminationData, 0x78);
            if (GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if (!GetFlag(0, 0x98)) {
                    if (!GetFlag(0, 0x9F)) {
                        InvestigationSetScriptSectionAndFlag(0x143, 0x9F);
                        sub_801480C(0xC);
                        break;
                    }
                    InvestigationSetPersonAnimation(0x4015, 0x5A0, 0x5A0);
                    PlayBGM(0xCF);
                }
            }
            else if (!GetFlag(0, 0x9E)) {
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
            if (GetFlag(0, 0xAD) && GetFlag(0, 0xAE)) {
                DmaCopy16(3, gUnknown_0801DA24, gExaminationData, 0x64);
                if (!GetFlag(0, 0xA2)) {
                    InvestigationSetScriptSectionAndFlag(0x118, 0xA2);
                    break;
                }
                InvestigationSetPersonAnimation(0x13, 0, 0);
                PlayBGM(0xC);
            }
            else if (GetFlag(0, 0xA5)) {
                DmaCopy16(3, gUnknown_0801DA24, gExaminationData, 0x64);
                if(!GetFlag(0, 0xB3)) {
                    sub_801480C(0xA);
                }
                if (!GetFlag(0, 0xA1)) {
                    InvestigationSetScriptSectionAndFlag(0xF7, 0xA1);
                    break;
                }
                InvestigationSetPersonAnimation(0x13, 0, 0);
                PlayBGM(0xD7);
            }
            else {
                if (!GetFlag(0, 0xA0)) {
                    InvestigationSetScriptSectionAndFlag(0xF2, 0xA0);
                }
                DmaCopy16(3, gUnknown_0801D9C0, gExaminationData, 0x64);
            }
            break;
        }
        case 7: {
            if (GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3) && GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0xB5)) {
                    sub_801480C(0xE);
                }
                DmaCopy16(3, gUnknown_0801D948, gExaminationData, 0x78);
                if (!GetFlag(0, 0xA4)) {
                    InvestigationSetScriptSectionAndFlag(0x14B, 0xA4);
                }
            }
            else {
                if (!GetFlag(0, 0xA3)) {
                    InvestigationSetScriptSectionAndFlag(0x145, 0xA3);
                }
                DmaCopy16(3, gUnknown_0801D8E4, gExaminationData, 0x64);
            }
            break;
        }
    }
}

void nullsub_9(struct Main *main) {
}

// END case 1

// BEGIN case 2

void sub_8005310(struct Main *main) {
    DmaCopy16(3, gUnknown_0801E220, gMain.roomData, 0x50);
    DmaCopy16(3, gUnknown_0801E018, gTalkData, 0x208);
    DmaCopy16(3, gUnknown_0801E014, gUnknown_03003B70, 4);
    main->currentRoomId = 0;
    sub_8017910();
}

void sub_8005374(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            DmaCopy16(3, gUnknown_0801E270, gExaminationData, 0x64);
            if (GetFlag(0, 0xAB)) {
                if (!GetFlag(0, 0x91)) {
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
            if (GetFlag(0, 0xB5) && GetFlag(0, 0xB6)) {
                if (!GetFlag(0, 0x94)) {
                    InvestigationSetScriptSectionAndFlag(0xAD, 0x94);
                    sub_800EAC8(1, 1);
                }
                else {
                    InvestigationSetPersonAnimation(0x1D, 0x1FEC, 0x1FEC);
                    PlayBGM(0xD0);
                }
                DmaCopy16(3, gUnknown_0801E2D4, gExaminationData, 0x28);
                break;
            }
            if (GetFlag(0, 0xAC)) {
                if (!GetFlag(0, 0x93)) {
                    InvestigationSetScriptSectionAndFlag(0xAA, 0x93);
                }
                DmaCopy16(3, gUnknown_0801E2FC, gExaminationData, 0x28);
                break;
            }
            LoadCurrentScriptIntoRam();
            if (!GetFlag(0, 0x92)) {
                InvestigationSetScriptSectionAndFlag(0x99, 0x92);
            }
            else {
                InvestigationSetPersonAnimation(0x1D, 0, 0);
                if (GetFlag(0, 0xAB)) {
                    PlayBGM(0xD0);
                }
                else {
                    PlayBGM(0xD7);
                }
            }
            DmaCopy16(3, gUnknown_0801E2D4, gExaminationData, 0x28);
            break;
        }
        case 8: {
            DmaCopy16(3, gUnknown_0801E324, gExaminationData, 0xA0);
            if (GetFlag(0, 0xB9)) {
                ChangeFlag(0, 0xC6, 0);
                if (!GetFlag(0, 0x97)) {
                    InvestigationSetScriptSectionAndFlag(0xCD, 0x97);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if (GetFlag(0, 0xAE) && GetFlag(0, 0xAC)) {
                ChangeFlag(0, 0xC6, 1);
                if (!GetFlag(0, 0x96)) {
                    InvestigationSetScriptSectionAndFlag(0xC7, 0x96);
                    break;
                }
                InvestigationSetPersonAnimation(0x1E, 0, 0);
                PlayBGM(0xD1);
            }
            else {
                ChangeFlag(0, 0xC6, 0);
                if (!GetFlag(0, 0x95)) {
                    InvestigationSetScriptSectionAndFlag(0xC6, 0x95);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            break;
        }
        case 9: {
            if (GetFlag(0, 0xBA)) {
                ChangeFlag(0, 0xC8, 1);
                if (!GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0xEA, 0x9A);
                }
                else {
                    InvestigationSetPersonAnimation(0x1C, 0x10F0, 0x10F0);
                    PlayBGM(0xCD);
                }
                DmaCopy16(3, gUnknown_0801E464, gExaminationData, 0xC8);
            }
            else if (GetFlag(0, 0xB9)) {
                ChangeFlag(0, 0xC8, 0);
                if (!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xE9, 0x99);
                }
                DmaCopy16(3, gUnknown_0801E52C, gExaminationData, 0xC8);
            }
            else {
                ChangeFlag(0, 0xC8, 1);
                if (!GetFlag(0, 0x98)) {
                    InvestigationSetScriptSectionAndFlag(0xDB, 0x98);
                }
                else {
                    InvestigationSetPersonAnimation(0x1C, 0, 0);
                    PlayBGM(0xCD);
                }
                DmaCopy16(3, gUnknown_0801E464, gExaminationData, 0xC8);
            }
            break;
        }
        case 10: {
            if (GetFlag(0, 0xBA)) {
                if (!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0xDA, 0x9C);
                }
                else {
                    PlayBGM(0x1F);
                }
                DmaCopy16(3, gUnknown_0801E414, gExaminationData, 0x50);
                break;
            }
            if (!GetFlag(0, 0x9B)) {
                InvestigationSetScriptSectionAndFlag(0xCE, 0x9B);
            }
            else {
                InvestigationSetPersonAnimation(0xA, 0x185C, 0x185C);
                PlayBGM(0x1F);
            }
            DmaCopy16(3, gUnknown_0801E3C4, gExaminationData, 0x50);
            break;
        }
        case 11: {
            DmaCopy16(3, gUnknown_0801E7FC, gExaminationData, 0x12C);
            if (GetFlag(0, 0xB9)) {
                ChangeFlag(0, 0xC7, 1);
                if (!GetFlag(0, 0x9E)) {
                    InvestigationSetScriptSectionAndFlag(0xF9, 0x9E);
                }
                else if (!GetFlag(0, 0xBA)) {
                    if (GetFlag(0, 0xC9)) {
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
                if (!GetFlag(0, 0x9D)) {
                    InvestigationSetScriptSectionAndFlag(0xF7, 0x9D);
                }
                else {
                    PlayBGM(0xD7);
                }
                DmaCopy16(3, gUnknown_0801E7FC, gExaminationData, 0x12C);
            }
            break;
        }
        case 12: {
            if (GetFlag(0, 0xB6)) {
                DmaCopy16(3, gUnknown_0801E6F8, gExaminationData, 0x104);
            }
            else {
                DmaCopy16(3, gUnknown_0801E5F4, gExaminationData, 0x104);
            }
            if (GetFlag(0, 0xB9)) {
                if (!GetFlag(0, 0xA0)) {
                    InvestigationSetScriptSectionAndFlag(0xF5, 0xA0);
                }
            }
            else if (!GetFlag(0, 0x9F)) {
                InvestigationSetScriptSectionAndFlag(0xF1, 0x9F);
            }
            sub_801480C(0x19);
            break;
        }
        case 13: {
            if (GetFlag(0, 0xBB)) {
                if (!GetFlag(0, 0xA4)) {
                    InvestigationSetScriptSectionAndFlag(0x118, 0xA4);
                }
                DmaCopy16(3, gUnknown_0801E928, gExaminationData, 0xC8);
            }
            else if (GetFlag(0, 0xBA)) {
                if (!GetFlag(0, 0xA3)) {
                    InvestigationSetScriptSectionAndFlag(0x112, 0xA3);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                DmaCopy16(3, gUnknown_0801E9F0, gExaminationData, 0xC8);
            }
            else if (GetFlag(0, 0xAF) && GetFlag(0, 0xB0)) {
                if (!GetFlag(0, 0xA2)) {
                    InvestigationSetScriptSectionAndFlag(0x103, 0xA2);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                DmaCopy16(3, gUnknown_0801E9F0, gExaminationData, 0xC8);
            }
            else {
                if (!GetFlag(0, 0xA1)) {
                    InvestigationSetScriptSectionAndFlag(0x102, 0xA1);
                }
                DmaCopy16(3, gUnknown_0801E928, gExaminationData, 0xC8);
            }
            break;
        }
        case 14: {
            if (!GetFlag(0, 0xA5)) {
                InvestigationSetScriptSectionAndFlag(0x11A, 0xA5);
            }
            else {
                PlayBGM(0xD7);
            }
            DmaCopy16(3, gUnknown_0801EAB8, gExaminationData, 0xC8);
            break;
        }
    }
}

void sub_80059E0(struct Main *main) {
    if(main->currentRoomId == 12) {
        if(!GetFlag(0, 0xB7) && GetFlag(0, 0xB6)) {
            DmaCopy16(3, gUnknown_0801E6F8, gExaminationData, 0x104);
            ChangeFlag(0, 0xB7, 1);
        }
    }
}

void sub_8005A30(struct Main *main) {
    DmaCopy16(3, gUnknown_0801F1EC, gMain.roomData, 0x50);
    DmaCopy16(3, gUnknown_0801EFE4, gTalkData, 0x208);
    DmaCopy16(3, gUnknown_0801EFDC, gUnknown_03003B70, 8);
    main->currentRoomId = 0;
}

void sub_8005A8C(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            DmaCopy16(3, gUnknown_0801F23C, gExaminationData, 0x64);
            if (GetFlag(0, 0xD7)) {
                InvestigationSetPersonAnimation(4, 0x25E4, 0x25E4);
                PlayBGM(0xCC);
            }
            break;
        }
        case 1: {
            if (GetFlag(0, 0xD4) && GetFlag(0, 0xD5) && GetFlag(0, 0xD6)) {
                if (!GetFlag(0, 0xD9)) {
                    InvestigationSetScriptSectionAndFlag(0xAE, 0xD9);
                }
                DmaCopy16(3, gUnknown_0801F2C8, gExaminationData, 0x28);
                break;
            }
            if (!GetFlag(0, 0xD8)) {
                InvestigationSetScriptSectionAndFlag(0x9B, 0xD8);
            }
            else {
                InvestigationSetPersonAnimation(0x1D, 0x1FEC, 0x1FEC);
                PlayBGM(0xD0);
            }
            DmaCopy16(3, gUnknown_0801F2A0, gExaminationData, 0x28);
            break;
        }
        case 8: {
            DmaCopy16(3, gUnknown_0801F2F0, gExaminationData, 0xA0);
            if (!GetFlag(0, 0xDA)) {
                InvestigationSetScriptSectionAndFlag(0xB1, 0xDA);
                break;
            }
            InvestigationSetPersonAnimation(0x1E, 0x8A4, 0x8A4);
            PlayBGM(0xDA);
            break;
        }
        case 9: {
            if (GetFlag(0, 0xD3)) {
                DmaCopy16(3, gUnknown_0801F458, gExaminationData, 0xC8);
                if (!GetFlag(0, 0xDC)) {
                    InvestigationSetScriptSectionAndFlag(0xB7, 0xDC);
                    break;
                }
                InvestigationSetPersonAnimation(0x1C, 0x10F0, 0x10F0);
                PlayBGM(0xCD);
            }
            else {
                if (!GetFlag(0, 0xDB)) {
                    InvestigationSetScriptSectionAndFlag(0xB6, 0xDB);
                }
                DmaCopy16(3, gUnknown_0801F390, gExaminationData, 0xC8);
            }
            break;
        }
        case 10: {
            DmaCopy16(3, gUnknown_0801F520, gExaminationData, 0x50);
            if (GetFlag(0, 0xD1)) {
                if (!GetFlag(0, 0xDE)) {
                    InvestigationSetPersonAnimation(0xA, 0, 0);
                    InvestigationSetScriptSectionAndFlag(0xF4, 0xDE);
                    break;
                }
                if (!GetFlag(0, 0xD2)) {
                    InvestigationSetPersonAnimation(0xF, 0x3628, 0x3628);
                }
                PlayBGM(0x1F);
            }
            else if (!GetFlag(0, 0xDD)) {
                InvestigationSetScriptSectionAndFlag(0xF3, 0xDD);
            }
            else {
                PlayBGM(0x1F);
            }
            break;
        }
        case 11: {
            if (GetFlag(0, 0xD4) && GetFlag(0, 0xD5) && GetFlag(0, 0xD6)) {
                sub_800EAC8(11, 1);
                ChangeFlag(0, 0xF5, 1);
                if (!GetFlag(0, 0xE2)) {
                    InvestigationSetScriptSectionAndFlag(0xDD, 0xE2);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                DmaCopy16(3, gUnknown_0801F688, gExaminationData, 0x118);
            }
            else if (GetFlag(0, 0xD1)) {
                ChangeFlag(0, 0xF5, 0);
                if (!GetFlag(0, 0xE1)) {
                    InvestigationSetScriptSectionAndFlag(0xDC, 0xE1);
                }
                DmaCopy16(3, gUnknown_0801F570, gExaminationData, 0x118);
            }
            else if (GetFlag(0, 0xD0)) {
                ChangeFlag(0, 0xF5, 1);
                if (!GetFlag(0, 0xE0)) {
                    InvestigationSetScriptSectionAndFlag(0xCE, 0xE0);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                DmaCopy16(3, gUnknown_0801F688, gExaminationData, 0x118);
            }
            else {
                ChangeFlag(0, 0xF5, 0);
                if (!GetFlag(0, 0xDF)) {
                    InvestigationSetScriptSectionAndFlag(0xCD, 0xDF);
                }
                else {
                    PlayBGM(0xD7);
                }
                DmaCopy16(3, gUnknown_0801F570, gExaminationData, 0x118);
            }
            break;
        }
        case 12: {
            DmaCopy16(3, gUnknown_0801F7A0, gExaminationData, 0x104);
            if (!GetFlag(0, 0xE3)) {
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
            DmaCopy16(3, gUnknown_0801F8A4, gExaminationData, 0xC8);
            if (GetFlag(0, 0xD4) && GetFlag(0, 0xD5) && GetFlag(0, 0xD6)) {
                if (!GetFlag(0, 0xE5)) {
                    InvestigationSetScriptSectionAndFlag(0xFC, 0xE5);
                }
            }
            else if (!GetFlag(0, 0xE4)) {
                InvestigationSetScriptSectionAndFlag(0xFB, 0xE4);
            }
            else {
                PlayBGM(0xD7);
            }
            break;
        }
        case 14: {
            DmaCopy16(3, gUnknown_0801F96C, gExaminationData, 0xC8);
            if (!GetFlag(0, 0xE6)) {
                InvestigationSetPersonAnimation(0x20, 0, 0);
                sub_801480C(0x3D);
                InvestigationSetScriptSectionAndFlag(0x101, 0xE6);
                break;
            }
            InvestigationSetPersonAnimation(0x20, 0, 0);
            sub_801480C(0x3D);
            if (GetFlag(0, 0xF9) && !GetFlag(0, 0xFA)) {
                InvestigationSetScriptSectionAndFlag(0x102, 0xFA);
            }
            PlayBGM(0xCD);
            break;
        }
    }
}

void nullsub_3(struct Main *main) {
}

// END case 2

// BEGIN case 3


// END case 3

