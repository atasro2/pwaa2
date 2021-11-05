    .section .rodata

    .global gCaseStartProcess
gCaseStartProcess:
    .incbin "baserom.gba", 0x0001C3D8, 0x16

    .global gUnknown_0801C3EE
gUnknown_0801C3EE:
    .incbin "baserom.gba", 0x0001C3EE, 0x636
