# Default variables

GAME_REVISION ?= 0
MODERN        ?= 0
COMPARE       ?= 0

# For gbafix
MAKER_CODE  := 08

BUILD_NAME  := pwaa2

# Revision
ifeq ($(GAME_REVISION),0)
BUILD_NAME  := $(BUILD_NAME)
else
$(error unknown revision $(GAME_REVISION))
endif
