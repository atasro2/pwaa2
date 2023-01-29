#include "global.h"
#include "court.h"

// void SetCurrentEpisodeBit()

void (*gCourtProcessStates[])(struct Main *) = {
	CourtInit,
	CourtMain,
	CourtExit
};

// void CourtProcess(struct Main * main)

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
