#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

void InvestigationSegmentSetup_2_2(struct Main *main) {
    DmaCopy16(3, gUnknown_0801F1EC, gMain.roomData, 0x50);
    DmaCopy16(3, gUnknown_0801EFE4, gTalkData, 0x208);
    DmaCopy16(3, gUnknown_0801EFDC, gUnknown_03003B70, 8);
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
