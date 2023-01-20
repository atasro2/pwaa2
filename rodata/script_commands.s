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

    .global sMapMarkerSprites
sMapMarkerSprites:
    .incbin "baserom.gba", 0x00022CA0, 0x6C

    .global gSpotSelectData
gSpotSelectData:
    .incbin "baserom.gba", 0x00022D0C, 0x160
