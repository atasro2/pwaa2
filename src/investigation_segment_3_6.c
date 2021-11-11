#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

void InvestigationSegmentSetup_3_6(struct Main *main) {
    DmaCopy16(3, gUnknown_0802240C, gMain.roomData, 0x82);
    DmaCopy16(3, gUnknown_08022254, gTalkData, 0x1B8);
    DmaCopy16(3, gUnknown_0802224C, gUnknown_03003B70, 8);
    main->currentRoomId = 17;
}

void InvestigationRoomSetup_3_6(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            ChangeFlag(0, 0xB4, 0);
            if(GetFlag(0, 0x94) && GetFlag(0, 0x95)) {
                if(!GetFlag(0, 0x9B)) {
                    if(!GetFlag(0, 0xB8)) {
                        InvestigationSetScriptSectionAndFlag(0x87, 0x9B);
                    }
                    else {
                        InvestigationSetScriptSectionAndFlag(0x88, 0x9B);
                    }
                }
                else {
                    InvestigationSetPersonAnimation(0xA, 0, 0);
                    PlayBGM(0xC);
                }
                LOADEXAMDATA(gUnknown_080224F4);
            }
            else {
                if(!GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0x81, 0x9A);
                }
                else {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                    PlayBGM(0xD7);
                }
                LOADEXAMDATA(gUnknown_08022490);
            }
            break;
        }
        case 1: {
            if(GetFlag(0, 0x99)) {
                if(!GetFlag(0, 0x9E)) {
                    InvestigationSetScriptSectionAndFlag(0xFC, 0x9E);
                }
                else {
                    InvestigationSetPersonAnimation(0x24, 0x3CB4, 0x3CB4);
                    if(GetFlag(0, 0xBF)) {
                        PlayBGM(0xCB);
                    }
                    else if(!GetFlag(0, 0xBE)) {
                        PlayBGM(0xD6);
                    }
                }
                LOADEXAMDATA(gUnknown_08022580);
            }
            else if(GetFlag(0, 0x90)) {
                if(!GetFlag(0, 0x9D)) {
                    InvestigationSetScriptSectionAndFlag(0xA6, 0x9D);
                }
                else if(GetFlag(0, 0xAA) && !GetFlag(0, 0xBC) && !GetFlag(0, 0xBD)) {
                    InvestigationSetScriptSectionAndFlag(0xAB, 0xBD);
                }
                else {
                    InvestigationSetScriptSectionAndFlag(0xA7, 0xFF);
                }
                LOADEXAMDATA(gUnknown_08022580);
            }
            else {
                if(!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0xA3, 0x9C);
                }
                LOADEXAMDATA(gUnknown_08022558);
            }
            break;
        }
        case 19: {
            if(!GetFlag(0, 0x9F)) {
                InvestigationSetScriptSectionAndFlag(0x105, 0x9F);
            }
            else {
                InvestigationSetPersonAnimation(0x27, 0, 0);
                PlayBGM(0xDA);
            }
            LOADEXAMDATA(gUnknown_080225A8);
            break;
        }
        case 18: {
            LoadCurrentScriptIntoRam();
            if(!GetFlag(0, 0xA1)) {
                InvestigationSetScriptSectionAndFlag(0x110, 0xA1);
            }
            LOADEXAMDATA(gUnknown_08022670);
            break;
        }
        case 20: {
            if(!GetFlag(0, 0xA0)) {
                InvestigationSetScriptSectionAndFlag(0x100, 0xA0);
            }
            LOADEXAMDATA(gUnknown_08022724);
            break;
        }
        case 17: {
            ChangeFlag(0, 0xB4, 1);
            if(GetFlag(0, 0xA2)) {
                InvestigationSetPersonAnimation(0x14, 0, 0);
                PlayBGM(0xC);
            }
            LOADEXAMDATA(gUnknown_080227C4);
            break;
        }
        case 15: {
            LOADEXAMDATA(gUnknown_08022940);
            if(GetFlag(0, 0x96) && GetFlag(0, 0xBC)) {
                if(!GetFlag(0, 0xA5)) {
                    InvestigationSetPersonAnimation(8, 0x5804, 0x5804);
                    InvestigationSetScriptSectionAndFlag(0x150, 0xA5);
                }
                else if(!GetFlag(0, 0x97)) {
                    InvestigationSetPersonAnimation(8, 0x3C68, 0x3C68);
                    PlayBGM(0xC);
                }
                gExaminationData[1].examinationSection=0x13C;
            }
            else if(GetFlag(0, 0x91) && GetFlag(0, 0x92) && GetFlag(0, 0x93)) {
                if(!GetFlag(0, 0xA4)) {
                    InvestigationSetScriptSectionAndFlag(0x13A, 0xA4);
                }
                else if(GetFlag(0, 0x94) && !GetFlag(0, 0x9B) && GetFlag(0, 0x95) && !GetFlag(0, 0xB8)) {
                    InvestigationSetScriptSectionAndFlag(0x13B, 0xB8);
                }
                else {
                    InvestigationSetPersonAnimation(0x28, 0, 0);
                    PlayBGM(0xD1);
                }
                gExaminationData[1].examinationSection=0x13C;
            }
            else if(!GetFlag(0, 0xA3)) {
                InvestigationSetScriptSectionAndFlag(0x133, 0xA3);
            }
            break;
        }
        case 23: {
            if(!GetFlag(0, 0x99)) {
                sub_801480C(0x1D);
            }
            if(!GetFlag(0, 0xA8)) {
                sub_8004458(0x157, 0xA8);
            }
            LOADEXAMDATA(gUnknown_080229CC);
            break;
        }
        case 22: {
            if(GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0x98)) {
                    sub_801480C(0x1F);
                }
                if(!GetFlag(0, 0xA7)) {
                    InvestigationSetScriptSectionAndFlag(0x16B, 0xA7);
                }
                else if(!GetFlag(0, 0x99)) {
                    PlayBGM(0xEC);
                }
                LOADEXAMDATA(gUnknown_08022ABC);
            }
            else {
                if(!GetFlag(0, 0xA6)) {
                    InvestigationSetScriptSectionAndFlag(0x164, 0xA6);
                }
                else {
                    PlayBGM(0xEE);
                }
                LOADEXAMDATA(gUnknown_08022A30);
            }
            break;
        }
        case 24: {
            if(!GetFlag(0, 0xA9)) {
                InvestigationSetScriptSectionAndFlag(0x15C, 0xA9);
            }
            LOADEXAMDATA(gUnknown_08022B5C);
            break;
        }
    }
}

void InvestigationRoomUpdate_3_6(struct Main *main) {
}
