#include "global.h"
#include "court.h"

void SetCurrentEpisodeBit()
{
    struct Main * main = &gMain;
	u8 mask = 1;
	u8 i;
    switch(main->scenarioIdx)
    {
        case 0:
        case 1:
			main->caseEnabledFlags |= 1;
			mask = 1;
            break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            main->caseEnabledFlags |= 2;
			mask = 2;
            break;
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
            main->caseEnabledFlags |= 4;
			mask = 4;
            break;
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
            main->caseEnabledFlags |= 8;
			mask = 8;
            break;
        default:
            main->caseEnabledFlags |= 1;
			mask = 1;
    }
	if((main->caseEnabledFlags >> 4) & mask) {
		for(i = 0; i < 8; i++) {
			main->unk100[i] = ~0;
		}
	}
}

void (*gCourtProcessStates[])(struct Main *) = {
	CourtInit,
	CourtMain,
	CourtExit
};

void CourtProcess(struct Main * main)
{
    gCourtProcessStates[main->process[GAME_PROCESS_STATE]](main);
}

void (*gTestimonyProcessStates[])(struct Main *) = {
	TestimonyInit,
	TestimonyMain,
	TestimonyExit,
	TestimonyAnim
};

// void TestimonyProcess(struct Main * main)

void (*gQuestioningProcessStates[])(struct Main *) = {
	QuestioningInit,
	QuestioningMain,
	QuestioningExit,
	QuestioningAnim,
	QuestioningHoldIt,
	QuestioningObjection
};

// void QuestioningProcess(struct Main * main)
