#include "graphics.h"

const struct Background gBackgroundTable[] = {
    {
        .bgData = gUnknown_082329A8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08233674,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082359B4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0823663C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0823B3E0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0823CF88,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0823E98C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08240624,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08246B24,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0824C990,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082540C0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08257B58,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0825A8F0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0825E078,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08263FD4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08265CC4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08267F34,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_SPECIAL_SPEEDLINE | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08268DE0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0826C528,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08271C44,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08277A98,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08279388,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0827C8EC,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0827FBA8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082837C8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08287938,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08292318,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08294658,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08298BA4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0829F718,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082A8370,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082B88D4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082C04A0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082C7CF0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082CF29C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082D5268,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082DA994,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_DOWN | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082E5168,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082EA99C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082EBA44,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082EC9B4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082ED900,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082EE868,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082EF398,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082F0288,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082F13EC,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082F4518,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082F7A14,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082FB9E4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_082FD950,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08300B30,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_083040A8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0830948C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0830C744,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083130D4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08316500,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_083198CC,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0831C908,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08320384,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0832587C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0832D4A0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08335060,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0833C13C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08342954,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083497D4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0834FAAC,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08356EB0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0835D154,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_DOWN | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08362700,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08367768,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08376EA8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0837C934,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0837D6D8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0838309C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083899B0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0838D548,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0838EB18,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08391440,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08393C98,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08395F30,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08398878,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0839DE10,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_083A1590,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_083A42C4,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083A9384,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_083AD43C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_083B1104,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_DOWN | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_083B3140,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083BBCB0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083C49C0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083CC6F8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083D414C,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083E23A8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_083E3490,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083EBD14,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083F3DA8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_083FA848,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08417880,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0841DE18,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08425334,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0842C52C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0842F748,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_084308EC,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0843414C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0843B428,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0843E438,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08441C50,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08444EF8,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_084478B0,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_DOWN | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0844DE14,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08451F68,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08458A38,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0845BDB0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08462D6C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0846531C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08468FD0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0846CAF0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0846DBF0,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0847384C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_084746CC,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_08401E1C,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08401E1C,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_08401E1C,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0840EE18,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = gUnknown_0841101C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_0841101C,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = gUnknown_082F0288,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | (1 << 8) | BG_MODE_4BPP,
    },
};
