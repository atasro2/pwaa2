#ifndef GUARD_GRAPHICS_H
#define GUARD_GRAPHICS_H

#ifndef ROM_START
#define ROM_START 0x08000000 // why is this not already a fucking define 
#endif

#define GFX_BASE_ADDR (ROM_START + 0x130000)

#define gGfx4bppTestimonyArrows ((u8*)(GFX_BASE_ADDR + 0xD97C))
#define gUnknown_08141CFC ((u8*)(GFX_BASE_ADDR + 0x11CFC))
#define gUnknown_08141EFC ((u8*)(GFX_BASE_ADDR + 0x11EFC))
#define gUnknown_081426FC ((u8*)(GFX_BASE_ADDR + 0x126FC))
#define gUnknown_081430DC ((u8*)(GFX_BASE_ADDR + 0x130DC))
#define gUnknown_081438DC ((u8*)(GFX_BASE_ADDR + 0x138DC))
#define gUnknown_081440DC ((u8*)(GFX_BASE_ADDR + 0x140DC))
#define gUnknown_08146FFC ((u8*)(GFX_BASE_ADDR + 0x16FFC))
#define gUnknown_081473FC ((u8*)(GFX_BASE_ADDR + 0x173FC))
#define gUnknown_0814747C ((u8*)(GFX_BASE_ADDR + 0x1747C))
#define gUnknown_0814757C ((u8*)(GFX_BASE_ADDR + 0x1757C))
#define gUnknown_081475FC ((u8*)(GFX_BASE_ADDR + 0x175FC))
#define gUnknown_0814777C ((u8*)(GFX_BASE_ADDR + 0x1777C))
#define gUnknown_0814DC40 ((u8*)(GFX_BASE_ADDR + 0x1DC40))
#define gUnknown_0814DC60 ((u8*)(GFX_BASE_ADDR + 0x1DC60))
#define gUnknown_0814DEC0 ((u8*)(GFX_BASE_ADDR + 0x1DEC0))
#define gUnknown_0814DEE0 ((u8*)(GFX_BASE_ADDR + 0x1DEE0))
#define gUnknown_0814E340 ((u8*)(GFX_BASE_ADDR + 0x1E340))
#define gUnknown_0814E360 ((u8*)(GFX_BASE_ADDR + 0x1E360))

#define gUnknown_08231BE8 ((u8*)(GFX_BASE_ADDR + 0x101BE8))

#define gUnknown_08263FD4 ((u8*)(GFX_BASE_ADDR + 0x133FD4))
#define gUnknown_08263FF4 ((u8*)(GFX_BASE_ADDR + 0x133FF4))
#define gUnknown_08265CC4 ((u8*)(GFX_BASE_ADDR + 0x135CC4))
#define gUnknown_08265CE4 ((u8*)(GFX_BASE_ADDR + 0x135CE4))
#define gUnknown_08277A98 ((u8*)(GFX_BASE_ADDR + 0x147A98))
#define gUnknown_08277AB8 ((u8*)(GFX_BASE_ADDR + 0x147AB8))

//extern u8 gTextPal[];
#define gTextPal ((u8*)(GFX_BASE_ADDR + 0x7E388))
#define gCharSet ((u8*)(GFX_BASE_ADDR + 0x7E3A8))
#endif