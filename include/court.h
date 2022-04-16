#ifndef GUARD_COURT_H
#define GUARD_COURT_H

struct TestimonyStruct
{
    u8 fill0[4];
    u8 unk4;
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