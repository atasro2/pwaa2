    .section gfx_data, "aw", %progbits
    .include "asm/macros.inc"

    .global gAssets
gAssets:
    .incbin "assets.bin"
