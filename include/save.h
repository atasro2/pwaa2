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
    /* +0x0414 */ struct ExaminationData examinationData[24];
    /* +0x05F4 */ struct TalkData talkData[32];
    /* +0x0874 */ u16 unknown3003B70[20];
    /* +0x089C */ struct MapMarker mapMarker[8];
    /* +0x093C */ struct OamAttrs oam[128];
    /* +0x0D3C */ struct TextBoxCharacter textBoxCharacters[0x40];
    /* +0x103C */ u16 bg0Map[0x400];
    /* +0x183C */ u16 bg1Map[0x400];
    /* +0x203C */ u16 bg2Map[0x400];
    /* +0x283C */ struct AnimationBackupStruct backupAnimations[0x20];
};

extern EWRAM_DATA struct SaveData gSaveDataBuffer;

extern const char gSaveVersion[0x32];

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