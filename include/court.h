#ifndef GUARD_COURT_H
#define GUARD_COURT_H

struct TestimonyStruct
{
    /* +0x00 */ u8 displayState; // unity AA4: move_status_flag
    /* +0x01 */ u8 timer; // unity AA4: wait_timer
    /* +0x02 */ u8 pressPromptY; // unity AA4: pos_y_yusaburu
    /* +0x03 */ u8 presentPromptY; // unity AA4: pos_y_tukitukeru
    /* +0x04 */ u8 animationOffsetX; // this gets (ab)userd both for testimony arrows and health bar stuff
    u8 fill5[3];
};

extern struct TestimonyStruct gTestimony;

void SetCurrentEpisodeBit();
void UpdateQuestioningMenuSprites(struct Main *, struct TestimonyStruct *, u32);
void UpdateHealthSprites(struct Main *, struct TestimonyStruct *);

void CourtProcess(struct Main *);
void TestimonyProcess(struct Main *);
void QuestioningProcess(struct Main *);
void VerdictProcess(struct Main *);


/* begin process functions */

//~ gCourtProcessStates:
void CourtInit(struct Main *);
void CourtMain(struct Main *);
void CourtExit(struct Main *);

//~ gTestimonyProcessStates:
void TestimonyInit(struct Main *);
void TestimonyMain(struct Main *);
void TestimonyExit(struct Main *);
void TestimonyAnim(struct Main *);

//~ gQuestioningProcessStates:
void QuestioningInit(struct Main *);
void QuestioningMain(struct Main *);
void QuestioningExit(struct Main *);
void QuestioningAnim(struct Main *);
void QuestioningHoldIt(struct Main *);
void QuestioningObjection(struct Main *);
/* end process functions */

#endif//GUARD_COURT_H