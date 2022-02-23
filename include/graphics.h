#ifndef GUARD_GRAPHICS_H
#define GUARD_GRAPHICS_H

#ifndef ROM_START
#define ROM_START 0x08000000 // why is this not already a fucking define 
#endif

#define GFX_BASE_ADDR (ROM_START + 0x130000)

#define gUnknown_0814777C ((u8*)(GFX_BASE_ADDR + 0x1777C))
//extern u8 gTextPal[];
#define gTextPal ((u8*)(GFX_BASE_ADDR + 0x7E388))
#define gCharSet ((u8*)(GFX_BASE_ADDR + 0x7E3A8))
#endif