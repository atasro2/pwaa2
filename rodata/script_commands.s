    .section .rodata

    .global gSoundCueTable
gSoundCueTable:
    .incbin "baserom.gba", 0x00022C54, 0x38

    .global gCourtScrollGfxPointers
gCourtScrollGfxPointers:
    .incbin "baserom.gba", 0x00022C8C, 0xC

    .global gTextboxDownArrowTileIndexes
gTextboxDownArrowTileIndexes:
    .incbin "baserom.gba", 0x00022C98, 0x8

    .global gUnknown_08022CA0
gUnknown_08022CA0:
    .incbin "baserom.gba", 0x00022CA0, 0x6C

    .global gUnknown_08022D0C
gUnknown_08022D0C:
    .incbin "baserom.gba", 0x00022D0C, 0x160
