#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

extern struct PscyheLock gPsycheLock;
extern struct Struct3006390 gUnknown_03006390[8];

extern u8 * gUnknown_081124D0[];

extern u8 gUnknown_0814777C[];

// ??
extern void sub_8003988(u16,u16,u16);
extern void sub_8003A7C(u16,u16);
extern void sub_8003B1C(u16,u16,u16);
extern void sub_8003B8C(u16,u16);

// script_main
extern void sub_8007D30(struct Main * main);

// investigation stuff 
extern void sub_800E7B0(void);
extern void sub_800E7EC(u32, u32, u8);
extern void sub_800E8C4(void);
extern void sub_800E900(u32, u32, u8);
extern void sub_800E9D4(u32, u32, u8);
extern void sub_8010FA4(void);
extern void sub_8011088(u16, u16);

// new file
void sub_80161F4(void);
void sub_8016204(void);
void sub_801622C(void);
void sub_8016C7C(u32);
void sub_8016D40(void);
void sub_8016E10(u32);
bool32 sub_801715C(void);
int sub_80175C0(void);
void sub_80178E0(void);
void sub_8017910(void);
void sub_8017928(u32);
void sub_801798C(void);
bool32 sub_8017C78(void);
void sub_8017F2C(void);
void sub_80180B4(void);
void sub_80180F8(void);
extern void sub_8018138(void);
extern void sub_801816C(void);
extern void sub_801823C(void);
extern void sub_80183D8(void);
extern void sub_8018690(void);
extern void sub_80186EC(void);
extern void sub_8018720(void);

#endif//GUARD_DECLARATIONS_H