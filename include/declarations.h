#ifndef GUARD_DECLARATIONS_H //TODO: get rid of this file when it's possible to move everything to its own header
#define GUARD_DECLARATIONS_H

extern struct PscyheLock gPsycheLock;
extern struct Struct3006390 gUnknown_03006390[8];

extern u8 * gUnknown_081124D0[];
extern u16 gUnknown_08112520[0x1E0];
extern u16 gUnknown_08112700[0x1E0];
extern u8 gUnknown_0814777C[];

// ??
extern void sub_8003988(u16,u16,u16);
extern void sub_8003A7C(u16,u16);
extern void sub_8003B1C(u16,u16,u16);
extern void sub_8003B8C(u16,u16);

// script_main
extern void sub_8007D30(struct Main * main);

// investigation stuff 
extern void sub_8010FA4(void);

// new file
extern void sub_8016C7C(u32);
extern void sub_8016D40(void);
extern void sub_8016E10(u32);
extern bool32 sub_801715C(void);
extern int sub_80175C0(void);
extern void sub_80178E0(void);
extern void sub_8017910(void);
extern void sub_8017928(u32);
extern void sub_801798C(void);
extern bool32 sub_8017C78(void);
extern void sub_80183D8(void);

#endif//GUARD_DECLARATIONS_H