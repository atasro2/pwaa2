#include "global.h"
#include "main.h"
#include "investigation.h"

void (*gInvestigationProcessStates[])(struct Main *, struct InvestigationStruct *) = {
	InvestigationInit, // RNO1_TANTEI_INIT
	InvestigationMain, // RNO1_TANTEI_MAIN
	InvestigationExit, // RNO1_TANTEI_EXIT
	InvestigationBgScrollWait, // RNO1_TANTEI_BG_WAIT
	InvestigationTextboxSlideWait, // RNO1_TANTEI_MW_WAIT
	InvestigationRoomInit, // RNO1_TANTEI_ROOM_INIT
	InvestigationInspect, // RNO1_TANTEI_INSPECT
	InvestigationMove, // RNO1_TANTEI_MOVE
	InvestigationTalk, // RNO1_TANTEI_TALK
	InvestigationPresent,  // RNO1_TANTEI_SHOW
    sub_8010A3C // new in GS2, probably for signal detector?
};
