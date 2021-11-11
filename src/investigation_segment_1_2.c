#include "global.h"
#include "main.h"
#include "investigation.h"
#include "script.h"
#include "sound.h"

void InvestigationSegmentSetup_1_2(struct Main *main) {
    DmaCopy16(3, gUnknown_0801D6DC, gMain.roomData, 0x28);
    DmaCopy16(3, gUnknown_0801D470, gTalkData, 0x26C);
    DmaCopy16(3, gUnknown_0801D464, gUnknown_03003B70, 12);
    main->currentRoomId = 3;
}

void InvestigationRoomSetup_1_2(struct Main *main) {
    DmaFill16(3, 0xFFFF, gExaminationData, 0x1E0);
    switch(main->currentRoomId) {
        case 0: {
            LOADEXAMDATA(gUnknown_0801D704);
            if(!GetFlag(0, 0x90)) {
                InvestigationSetScriptSectionAndFlag(0x81, 0x90);
            }
            break;
        }
        case 1: {
            LOADEXAMDATA(gUnknown_0801D768);
            if(GetFlag(0, 0xAF)) {
                LoadCurrentScriptIntoRam();
                if(!GetFlag(0, 0x94)) {
                    InvestigationSetScriptSectionAndFlag(0xA8, 0x94);
                    break;
                }
                InvestigationSetPersonAnimation(5, 0, 0);
                PlayBGM(12);
            }
            else if(GetFlag(0, 0xAA)) {
                if(!GetFlag(0, 0x93)) {
                    InvestigationSetScriptSectionAndFlag(0xA3, 0x93);
                }
                else if(!GetFlag(0, 0xBA) || !GetFlag(0, 0xBB)) {
                    InvestigationSetPersonAnimation(5, 0x52C, 0x52C);
                    PlayBGM(0xD0);
                }
            }
            else if(GetFlag(0, 0xA6) && GetFlag(0, 0xA7) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if(!GetFlag(0, 0x92)) {
                    InvestigationSetScriptSectionAndFlag(0x8A, 0x92);
                    break;
                }
                InvestigationSetPersonAnimation(4, 0, 0);
                PlayBGM(0xD0);
            }
            else if(!GetFlag(0, 0x91)) {
                InvestigationSetScriptSectionAndFlag(0x87, 0x91);
            }
            break;
        }
        case 2: {
            LOADEXAMDATA(gUnknown_0801DA88);
            if(!GetFlag(0, 0x95)) {
                InvestigationSetScriptSectionAndFlag(0x14F, 0x95);
            }
            else if(!GetFlag(0, 0xB9)) {
                InvestigationSetPersonAnimation(0x16, 0, 0);
                PlayBGM(0xD1);
            }
            break;
        }
        case 3: {
            LOADEXAMDATA(gUnknown_0801D790);
            if(GetFlag(0, 0xAF)) {
                if(!GetFlag(0, 0x9A)) {
                    InvestigationSetScriptSectionAndFlag(0xEE, 0x9A);
                }
                else {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                }
            }
            else if(GetFlag(0, 0xAD) && GetFlag(0, 0xAE)) {
                if(!GetFlag(0, 0x99)) {
                    InvestigationSetScriptSectionAndFlag(0xEA, 0x99);
                    break;
                }
                InvestigationSetPersonAnimation(0x18, 0xE48, 0xE48);
                PlayBGM(0xC);
            }
            else if(GetFlag(0, 0xAB)) {
                if(!GetFlag(0, 0x98)) {
                    InvestigationSetScriptSectionAndFlag(0xD7, 0x98);
                    break;
                }
                InvestigationSetPersonAnimation(0x18, 0x1778, 0x1778);
                PlayBGM(0x16);
            }
            else if(GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if(!GetFlag(0, 0x97)) {
                    InvestigationSetScriptSectionAndFlag(0xD6, 0x97);
                }
                else {
                    PlayBGM(0x1F);
                }
            }
            else if(GetFlag(0, 0x96)) {
                InvestigationSetPersonAnimation(0x14, 0, 0);
                PlayBGM(0xF2);
            }
            break;
        }
        case 4: {
            LOADEXAMDATA(gUnknown_0801D81C);
            if(GetFlag(0, 0xAA)) {
                if(!GetFlag(0, 0x9D)) {
                    InvestigationSetScriptSectionAndFlag(0x11F, 0x9D);
                }
                else if(!GetFlag(0, 0xB9)) {
                    InvestigationSetPersonAnimation(0x14, 0, 0);
                    PlayBGM(0xF2);
                }
            }
            else if(GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3) && GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0x9C)) {
                    InvestigationSetScriptSectionAndFlag(0x11E, 0x9C);
                }
            }
            else if(!GetFlag(0, 0x9B)) {
                InvestigationSetScriptSectionAndFlag(0x119, 0x9B);
            }
            break;
        }
        case 5: {
            LOADEXAMDATA(gUnknown_0801D86C);
            if(GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3)) {
                if(!GetFlag(0, 0x98)) {
                    if(!GetFlag(0, 0x9F)) {
                        InvestigationSetScriptSectionAndFlag(0x143, 0x9F);
                        sub_801480C(0xC);
                        break;
                    }
                    InvestigationSetPersonAnimation(0x4015, 0x5A0, 0x5A0);
                    PlayBGM(0xCF);
                }
            }
            else if(!GetFlag(0, 0x9E)) {
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
            if(GetFlag(0, 0xAD) && GetFlag(0, 0xAE)) {
                LOADEXAMDATA(gUnknown_0801DA24);
                if(!GetFlag(0, 0xA2)) {
                    InvestigationSetScriptSectionAndFlag(0x118, 0xA2);
                    break;
                }
                InvestigationSetPersonAnimation(0x13, 0, 0);
                PlayBGM(0xC);
            }
            else if(GetFlag(0, 0xA5)) {
                LOADEXAMDATA(gUnknown_0801DA24);
                if(!GetFlag(0, 0xB3)) {
                    sub_801480C(0xA);
                }
                if(!GetFlag(0, 0xA1)) {
                    InvestigationSetScriptSectionAndFlag(0xF7, 0xA1);
                    break;
                }
                InvestigationSetPersonAnimation(0x13, 0, 0);
                PlayBGM(0xD7);
            }
            else {
                if(!GetFlag(0, 0xA0)) {
                    InvestigationSetScriptSectionAndFlag(0xF2, 0xA0);
                }
                LOADEXAMDATA(gUnknown_0801D9C0);
            }
            break;
        }
        case 7: {
            if(GetFlag(0, 0xA9) && GetFlag(0, 0xA5) && GetFlag(0, 0xB3) && GetFlag(0, 0x97)) {
                if(!GetFlag(0, 0xB5)) {
                    sub_801480C(0xE);
                }
                LOADEXAMDATA(gUnknown_0801D948);
                if(!GetFlag(0, 0xA4)) {
                    InvestigationSetScriptSectionAndFlag(0x14B, 0xA4);
                }
            }
            else {
                if(!GetFlag(0, 0xA3)) {
                    InvestigationSetScriptSectionAndFlag(0x145, 0xA3);
                }
                LOADEXAMDATA(gUnknown_0801D8E4);
            }
            break;
        }
    }
}

void InvestigationRoomUpdate_1_2(struct Main *main) {
}
