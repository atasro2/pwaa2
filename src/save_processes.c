#include "global.h"
#include "save.h"

const char gSaveVersion[0x34] = "2002 CAPCOM GBA GYAKUTEN-SAIBAN2 07/15 Ver 1.000-";

void (*gSaveGameProcessStates[])(struct Main *) = {
	SaveGameInit1,
	SaveGameInit2,
	SaveGameInitButtons,
	SaveGameWaitForInput,
	SaveGameExitSaveScreen,
	SaveGame5,
	SaveGame6,
	SaveGame7
};
