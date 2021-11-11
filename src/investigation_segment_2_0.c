#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

void InvestigationSegmentSetup_2_0(struct Main *main) {
    DmaCopy16(3, gUnknown_0801E220, gMain.roomData, 0x50);
    DmaCopy16(3, gUnknown_0801E018, gTalkData, 0x208);
    DmaCopy16(3, gUnknown_0801E014, gUnknown_03003B70, 4);
    main->currentRoomId = 0;
    sub_8017910();
}

void InvestigationRoomSetup_2_0(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            LOADEXAMDATA(gUnknown_0801E270);
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
                    sub_800EAC8(1, 1);
                }
                else {
                    InvestigationSetPersonAnimation(0x1D, 0x1FEC, 0x1FEC);
                    PlayBGM(0xD0);
                }
                LOADEXAMDATA(gUnknown_0801E2D4);
                break;
            }
            if(GetFlag(0, 0xAC)) {
                if(!GetFlag(0, 0x93)) {
                    InvestigationSetScriptSectionAndFlag(0xAA, 0x93);
                }
                LOADEXAMDATA(gUnknown_0801E2FC);
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
            LOADEXAMDATA(gUnknown_0801E2D4);
            break;
        }
        case 8: {
            LOADEXAMDATA(gUnknown_0801E324);
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
                LOADEXAMDATA(gUnknown_0801E464);
            }
            else if(GetFlag(0, 0xB9)) {
                ChangeFlag(0, 0xC8, 0);
                if(!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xE9, 0x99);
                }
                LOADEXAMDATA(gUnknown_0801E52C);
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
                LOADEXAMDATA(gUnknown_0801E464);
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
                LOADEXAMDATA(gUnknown_0801E414);
                break;
            }
            if(!GetFlag(0, 0x9B)) {
                InvestigationSetScriptSectionAndFlag(0xCE, 0x9B);
            }
            else {
                InvestigationSetPersonAnimation(0xA, 0x185C, 0x185C);
                PlayBGM(0x1F);
            }
            LOADEXAMDATA(gUnknown_0801E3C4);
            break;
        }
        case 11: {
            LOADEXAMDATA(gUnknown_0801E7FC);
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
                LOADEXAMDATA(gUnknown_0801E7FC);
            }
            break;
        }
        case 12: {
            if(GetFlag(0, 0xB6)) {
                LOADEXAMDATA(gUnknown_0801E6F8);
            }
            else {
                LOADEXAMDATA(gUnknown_0801E5F4);
            }
            if(GetFlag(0, 0xB9)) {
                if(!GetFlag(0, 0xA0)) {
                    InvestigationSetScriptSectionAndFlag(0xF5, 0xA0);
                }
            }
            else if(!GetFlag(0, 0x9F)) {
                InvestigationSetScriptSectionAndFlag(0xF1, 0x9F);
            }
            sub_801480C(0x19);
            break;
        }
        case 13: {
            if(GetFlag(0, 0xBB)) {
                if(!GetFlag(0, 0xA4)) {
                    InvestigationSetScriptSectionAndFlag(0x118, 0xA4);
                }
                LOADEXAMDATA(gUnknown_0801E928);
            }
            else if(GetFlag(0, 0xBA)) {
                if(!GetFlag(0, 0xA3)) {
                    InvestigationSetScriptSectionAndFlag(0x112, 0xA3);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                LOADEXAMDATA(gUnknown_0801E9F0);
            }
            else if(GetFlag(0, 0xAF) && GetFlag(0, 0xB0)) {
                if(!GetFlag(0, 0xA2)) {
                    InvestigationSetScriptSectionAndFlag(0x103, 0xA2);
                }
                else {
                    InvestigationSetPersonAnimation(0x1F, 0x784, 0x784);
                    PlayBGM(0xDA);
                }
                LOADEXAMDATA(gUnknown_0801E9F0);
            }
            else {
                if(!GetFlag(0, 0xA1)) {
                    InvestigationSetScriptSectionAndFlag(0x102, 0xA1);
                }
                LOADEXAMDATA(gUnknown_0801E928);
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
            LOADEXAMDATA(gUnknown_0801EAB8);
            break;
        }
    }
}

void InvestigationRoomUpdate_2_0(struct Main *main) {
    if(main->currentRoomId == 12) {
        if(!GetFlag(0, 0xB7) && GetFlag(0, 0xB6)) {
            LOADEXAMDATA(gUnknown_0801E6F8);
            ChangeFlag(0, 0xB7, 1);
        }
    }
}
