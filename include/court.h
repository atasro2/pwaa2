#ifndef GUARD_COURT_H
#define GUARD_COURT_H

struct TestimonyStruct
{
    /* +0x00 */ u8 displayState; // unity AA4: move_status_flag
    /* +0x01 */ u8 timer; // unity AA4: wait_timer
    /* +0x02 */ u8 pressPromptY; // unity AA4: pos_y_yusaburu
    /* +0x03 */ u8 presentPromptY; // unity AA4: pos_y_tukitukeru
    /* +0x04 */ u8 unk4; // ??
    u8 fill5[3];
};

extern struct TestimonyStruct gTestimony;

void sub_800B51C(struct Main *, struct TestimonyStruct *, u32);
void sub_800B638(struct Main *, struct TestimonyStruct *);

void GameProcess03(struct Main *);
void GameProcess05(struct Main *);
void GameProcess06(struct Main *);
extern void GameProcess09(struct Main *);

#endif//GUARD_COURT_H