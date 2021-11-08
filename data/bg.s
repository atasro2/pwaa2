    .section .data

    .global gUnknown_08111E54
gUnknown_08111E54:
    .incbin "baserom.gba", 0x00111E54, 0x40

    .global gUnknown_08111E94
gUnknown_08111E94:
    .incbin "baserom.gba", 0x00111E94, 0x28

    .global gUnknown_08111EBC
gUnknown_08111EBC:
    .4byte nullsub_2
    .4byte sub_8003C98
    .4byte sub_8003C98
    .4byte sub_8003E80
    .4byte sub_8003E80

    .global gUnknown_08111ED0
gUnknown_08111ED0:
    .incbin "baserom.gba", 0x00111ED0, 0x38
