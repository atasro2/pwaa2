#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

void InvestigationSegmentSetup_3_0(struct Main *main) {
    DmaCopy16(3, gUnknown_0801FF70, gMain.roomData, 0x7C);
    DmaCopy16(3, gUnknown_0801FE30, gTalkData, 0x140);
    main->currentRoomId = 0x13;
    sub_8017910();
}

void InvestigationRoomSetup_3_0(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {if(!GetFlag(0, 0x94)) {
                InvestigationSetScriptSectionAndFlag(0xC6, 0x94);
            }
            else {
                InvestigationSetPersonAnimation(0x14, 0, 0);
            }
            break;
        }
        case 1: {if(!GetFlag(0, 0x95)) {
                InvestigationSetScriptSectionAndFlag(0xCB, 0x95);
            }
            else {
                InvestigationSetPersonAnimation(0x23, 0, 0);
                PlayBGM(0xEE);
            }
            LOADEXAMDATA(gUnknown_0801FFF0);
            break;
        }
        case 19: {if(GetFlag(0, 0x91)) {
                if(!GetFlag(0, 0x97)) {
                    InvestigationSetScriptSectionAndFlag(0x93, 0x97);
                }
                LOADEXAMDATA(gUnknown_080200E0);
                break;
            }
            if(GetFlag(0, 0x96)) {
                if(!GetFlag(0, 0x90) && GetFlag(0, 0xA5) && GetFlag(0, 0xA6) && GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0x82, 0xFF);
                    InvestigationSetPersonAnimation(0x28, 0x1824, 0x1824);
                }
                else {
                    InvestigationSetPersonAnimation(0x28, 0, 0);
                    PlayBGM(0x15);
                }
            }
            LOADEXAMDATA(gUnknown_08020018);
            break;
        }
        case 18: {
            LOADEXAMDATA(gUnknown_080201A8);
            if(GetFlag(0, 0x91)) {
                if(!GetFlag(0, 0x9B)) {
                    InvestigationSetScriptSectionAndFlag(0xA0, 0x9B);
                    break;
                }
                InvestigationSetPersonAnimation(0xA, 0, 0);
                PlayBGM(1);
            }
            else if(!GetFlag(0, 0x9A)) {
                InvestigationSetScriptSectionAndFlag(0x99, 0x9A);
            }
            break;
        }
        case 20: {if(GetFlag(0, 0x92)) {
                if(!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xB7, 0x99);
                }
                else {
                    InvestigationSetPersonAnimation(0x28, 0, 0);
                    PlayBGM(0xD7);
                }
                LOADEXAMDATA(gUnknown_080202FC);
                break;
            }
            if(!GetFlag(0, 0x98)) {
                InvestigationSetScriptSectionAndFlag(0xAC, 0x98);
            }
            else {
                InvestigationSetPersonAnimation(0x27, 0, 0);
                PlayBGM(0xDA);
            }
            if(!GetFlag(0, 0xA7)) {
                LOADEXAMDATA(gUnknown_0802025C);
            }
            else {
                LOADEXAMDATA(gUnknown_080202FC);
            }
            break;
        }
    }
}

void InvestigationRoomUpdate_3_0(struct Main *main) {
}
