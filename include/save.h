#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "main.h"
#include "script.h"
#include "court_record.h"
#include "background.h"
#include "court.h"
#include "investigation.h"
#include "animation.h"

struct SaveData
{
    /* +0x0000 */ char saveDataVer[0x30];
    /* +0x0030 */ u32 magic;
    /* +0x0034 */ struct Main main;
    /* +0x02F4 */ struct IORegisters ioRegs;
    /* +0x0348 */ struct ScriptContext scriptCtx;
    /* +0x0388 */ struct CourtRecord courtRecord;
    /* +0x03E0 */ struct CourtScroll courtScroll;
    /* +0x03F0 */ struct TestimonyStruct testimony;
    /* +0x03F8 */ struct InvestigationStruct investigation;
    /* +0x0414 */ struct ExaminationData examinationData[16];
    /* +0x0554 */ struct TalkData talkData[32];
    /* +0x07D4 */ struct MapMarker mapMarker[8];
    /* +0x0874 */ struct OamAttrs oam[128];
    /* +0x0C74 */ struct TextBoxCharacter textBoxCharacters[0x40];
    /* +0x0F74 */ u16 bg0Map[0x400];
    /* +0x1774 */ u16 bg1Map[0x400];
    /* +0x1F74 */ u16 bg2Map[0x400];
    /* +0x2774 */ struct AnimationBackupStruct backupAnimations[0x20];
};

extern EWRAM_DATA struct SaveData gSaveDataBuffer;

extern const char gSaveVersion[0x34];

u32 SaveGameData();
u32 LoadSaveData();
void CalculateSaveChecksum();
bool32 CheckSaveChecksum();

void SaveGameInit1(struct Main *);
void SaveGameInit2(struct Main *);
void SaveGameInitButtons(struct Main *);
void SaveGameWaitForInput(struct Main *);
void SaveGameExitSaveScreen(struct Main *);
void SaveGame5(struct Main *);
void SaveGame6(struct Main *);
void SaveGame7(struct Main *);

#endif//GUARD_SAVE_H