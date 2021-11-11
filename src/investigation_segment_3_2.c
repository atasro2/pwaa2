#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

void InvestigationSegmentSetup_3_2(struct Main *main) {
    DmaCopy16(3, gUnknown_08020954, gMain.roomData, 0x7C);
    DmaCopy16(3, gUnknown_080206FC, gTalkData, 0x258);
    DmaCopy16(3, gUnknown_080206F0, gUnknown_03003B70, 0xC);
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
            LOADEXAMDATA(gUnknown_08020FB0);
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
