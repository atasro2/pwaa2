    .section .rodata

    .global gUnknown_08022E6C
gUnknown_08022E6C:
    .incbin "baserom.gba", 0x00022E6C, 0x98

    .global gSaveVersion
gSaveVersion:
    .incbin "baserom.gba", 0x00022F04, 0x34

    .global gUnknown_08022F38
gUnknown_08022F38:
    .incbin "baserom.gba", 0x00022F38, 0x4E0

    .global gUnknown_08023418
gUnknown_08023418:
    .incbin "baserom.gba", 0x00023418, 0x4

    .global gUnknown_0802341C
gUnknown_0802341C:
    .incbin "baserom.gba", 0x0002341C, 0x4