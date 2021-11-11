#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

void InvestigationSegmentSetup_3_4(struct Main *main) {
    DmaCopy16(3, gUnknown_08021430, gMain.roomData, 0x82);
    DmaCopy16(3, gUnknown_08021318, gTalkData, 0x118);
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
                    LOADEXAMDATA(gUnknown_080214B4);
                }
                else {
                    LOADEXAMDATA(gUnknown_08021518);
                }
            }
            else {
                if(GetFlag(0, 0x9B)) {
                    InvestigationSetPersonAnimation(0xA, 0xB48, 0xB48);
                    PlayBGM(1);
                }
                LOADEXAMDATA(gUnknown_080214B4);
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
            LOADEXAMDATA(gUnknown_0802157C);
            break;
        }
        case 19: {
            if(!GetFlag(0, 0x9F)) {
                InvestigationSetScriptSectionAndFlag(0xAC, 0x9F);
            }
            else {
                PlayBGM(0xD7);
            }
            LOADEXAMDATA(gUnknown_080215A4);
            break;
        }
        case 18: {
            if(!GetFlag(0, 0xA0)) {
                InvestigationSetScriptSectionAndFlag(0xB3, 0xA0);
                LOADEXAMDATA(gUnknown_0802166C);
            }
            else if(!GetFlag(0, 0xBB)) {
                InvestigationSetPersonAnimation(0x18, 0, 0);
                PlayBGM(0x16);
                LOADEXAMDATA(gUnknown_0802166C);
            }
            else {
                LOADEXAMDATA(gUnknown_08021720);
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
            LOADEXAMDATA(gUnknown_080217D4);
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
            LOADEXAMDATA(gUnknown_08021874);
            break;
        }
        case 15: {
            if(!GetFlag(0, 0xA4)) {
                InvestigationSetScriptSectionAndFlag(0xF4, 0xA4);
            }
            LOADEXAMDATA(gUnknown_080219F0);
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
            LOADEXAMDATA(gUnknown_08021ACC);
            break;
        }
        case 21: {
            if(!GetFlag(0, 0xA7)) {
                InvestigationSetScriptSectionAndFlag(0x110, 0xA7);
            }
            else {
                sub_801480C(0x1C);
                sub_801480C(0x1E);
                PlayBGM(0xD3);
            }
            LOADEXAMDATA(gUnknown_08021B58);
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
            LOADEXAMDATA(gUnknown_08021BF8);
            break;
        }
        case 25: {
            if(!GetFlag(0, 0xA6)) {
                InvestigationSetScriptSectionAndFlag(0x10B, 0xA6);
            }
            LOADEXAMDATA(gUnknown_08021A7C);
            break;
        }
    }
}

void InvestigationRoomUpdate_3_4(struct Main *main) {
    switch(main->currentRoomId) {
        case 0: {
            if(GetFlag(0, 0x95)) {
                LOADEXAMDATA(gUnknown_08021518);
            }
            break;
        }
        case 18: {
            if(GetFlag(0, 0xBB)) {
                LOADEXAMDATA(gUnknown_08021720);
            }
            break;
        }
    }
}
