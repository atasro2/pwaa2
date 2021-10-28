    .section .data

    .global gGameProcesses
gGameProcesses:
    .incbin "baserom.gba", 0x00111E18, 0x3C

    .global gUnknown_08111E54
gUnknown_08111E54:
    .incbin "baserom.gba", 0x00111E54, 0x40

    .global gUnknown_08111E94
gUnknown_08111E94:
    .incbin "baserom.gba", 0x00111E94, 0x28

    .global gUnknown_08111EBC
gUnknown_08111EBC:
    .incbin "baserom.gba", 0x00111EBC, 0x14

    .global gUnknown_08111ED0
gUnknown_08111ED0:
    .incbin "baserom.gba", 0x00111ED0, 0x38

    .global gFlagPtrs
gFlagPtrs:
    .incbin "baserom.gba", 0x00111F08, 0xC

    .global gUnknown_08111F14
gUnknown_08111F14:
    .incbin "baserom.gba", 0x00111F14, 0x58

    .global gUnknown_08111F6C
gUnknown_08111F6C:
    .incbin "baserom.gba", 0x00111F6C, 0x58

    .global gUnknown_08111FC4
gUnknown_08111FC4:
    .incbin "baserom.gba", 0x00111FC4, 0x58

    .global gUnknown_0811201C
gUnknown_0811201C:
    .incbin "baserom.gba", 0x0011201C, 0x58

    .global gUnknown_08112074
gUnknown_08112074:
    .incbin "baserom.gba", 0x00112074, 0x58

    .global gUnknown_081120CC
gUnknown_081120CC:
    .incbin "baserom.gba", 0x001120CC, 0x58

    .global gScriptCmdFuncs
gScriptCmdFuncs:
    .incbin "baserom.gba", 0x00112124, 0x1D4

    .global gUnknown_081122F8
gUnknown_081122F8:
    .incbin "baserom.gba", 0x001122F8, 0x20

    .global gUnknown_08112318
gUnknown_08112318:
    .incbin "baserom.gba", 0x00112318, 0xC

    .global gUnknown_08112324
gUnknown_08112324:
    .incbin "baserom.gba", 0x00112324, 0x10

    .global gUnknown_08112334
gUnknown_08112334:
    .incbin "baserom.gba", 0x00112334, 0x18

    .global gUnknown_0811234C
gUnknown_0811234C:
    .incbin "baserom.gba", 0x0011234C, 0x2C

    .global gUnknown_08112378
gUnknown_08112378:
    .incbin "baserom.gba", 0x00112378, 0x30

    .global gUnknown_081123A8
gUnknown_081123A8:
    .incbin "baserom.gba", 0x001123A8, 0x20

    .global gUnknown_081123C8
gUnknown_081123C8:
    .incbin "baserom.gba", 0x001123C8, 0xC

    .global gUnknown_081123D4
gUnknown_081123D4:
    .incbin "baserom.gba", 0x001123D4, 0x20

    .global gUnknown_081123F4
gUnknown_081123F4:
    .incbin "baserom.gba", 0x001123F4, 0x20

    .global gUnknown_08112414
gUnknown_08112414:
    .incbin "baserom.gba", 0x00112414, 0x18

    .global gUnknown_0811242C
gUnknown_0811242C:
    .incbin "baserom.gba", 0x0011242C, 0x40

    .global gUnknown_0811246C
gUnknown_0811246C:
    .incbin "baserom.gba", 0x0011246C, 0x64

    .global gUnknown_081124D0
gUnknown_081124D0:
    .incbin "baserom.gba", 0x001124D0, 0x50

    .global gUnknown_08112520
gUnknown_08112520:
    .incbin "baserom.gba", 0x00112520, 0x1E0

    .global gUnknown_08112700
gUnknown_08112700:
    .incbin "baserom.gba", 0x00112700, 0x1E0

    .global gUnknown_081128E0
gUnknown_081128E0:
    .incbin "baserom.gba", 0x001128E0, 0x160

    .global gUnknown_08112A40
gUnknown_08112A40:
    .incbin "baserom.gba", 0x00112A40, 0x1D5C0

    .global gUnknown_08130000
gUnknown_08130000:
    .incbin "baserom.gba", 0x00130000, 0x200

    .global gUnknown_08130200
gUnknown_08130200:
    .incbin "baserom.gba", 0x00130200, 0x3EE4

    .global gUnknown_081340E4
gUnknown_081340E4:
    .incbin "graphics/title_screen_demo.gbapal"

    .global gUnknown_081342E4
gUnknown_081342E4:
    .incbin "graphics/title_screen_demo.8bpp.lz"

    .global gUnknown_081370FC
gUnknown_081370FC:
    .incbin "graphics/unused_ascii_charset.4bpp"

    .global gUnknown_081378FC
gUnknown_081378FC:
    .incbin "graphics/evidence_profile_descriptions/evidence_profile_descriptions.gbapal"

    .global gUnknown_0813791C
gUnknown_0813791C:
    .incbin "baserom.gba", 0x0013791C, 0x1000

    .global gUnknown_0813891C
gUnknown_0813891C:
    .incbin "baserom.gba", 0x0013891C, 0x5000

    .global gUnknown_0813D91C
gUnknown_0813D91C:
    .incbin "baserom.gba", 0x0013D91C, 0x60

    .global gUnknown_0813D97C
gUnknown_0813D97C:
    .incbin "baserom.gba", 0x0013D97C, 0x180

    .global gUnknown_0813DAFC
gUnknown_0813DAFC:
    .incbin "baserom.gba", 0x0013DAFC, 0x600

    .global gUnknown_0813E0FC
gUnknown_0813E0FC:
    .incbin "graphics/ui/trial/unused_testimony_characters.4bpp"

    .global gUnknown_081400FC
gUnknown_081400FC:
    .incbin "graphics/ui/investigation/action_buttons.4bpp"

    .global gUnknown_081410FC
gUnknown_081410FC:
    .incbin "graphics/ui/court_record/controller_buttons.4bpp"

    .global gUnknown_081412FC
gUnknown_081412FC:
    .incbin "graphics/ui/investigation/scroll_prompt.4bpp"

    .global gUnknown_081414FC
gUnknown_081414FC:
    .incbin "graphics/ui/trial/testimony_text_tiles.4bpp"

    .global gUnknown_08141CFC
gUnknown_08141CFC:
    .incbin "graphics/ui/trial/press_present_buttons.4bpp"

    .global gUnknown_081420FC
gUnknown_081420FC:
    .incbin "graphics/ui/court_record/present_back_text.4bpp"

    .global gUnknown_081422FC
gUnknown_081422FC:
    .incbin "graphics/ui/court_record/profiles_text.4bpp"

    .global gUnknown_081424FC
gUnknown_081424FC:
    .incbin "graphics/ui/court_record/evidence_text.4bpp"

    .global gUnknown_081426FC
gUnknown_081426FC:
    .incbin "graphics/ui/investigation/examine_cursor.4bpp"

    .global gUnknown_08142BFC
gUnknown_08142BFC:
    .incbin "graphics/ui/investigation/checkmark.4bpp"

    .global gUnknown_08142DFC
gUnknown_08142DFC:
    .incbin "graphics/ui/trial/game_over_doors.4bpp"

    .global gUnknown_081430DC
gUnknown_081430DC:
    .incbin "graphics/ui/trial/not_guilty1.4bpp"

    .global gUnknown_081438DC
gUnknown_081438DC:
    .incbin "graphics/ui/trial/guilty1.4bpp"

    .global gUnknown_081440DC
gUnknown_081440DC:
    .incbin "graphics/ui/trial/guilty_not_guilty2.4bpp"

    .global gUnknown_081448DC
gUnknown_081448DC:
    .incbin "graphics/ui/trial/game_over_text.4bpp"

    .global gUnknown_081458DC
gUnknown_081458DC:
    .incbin "graphics/ui/new_game_continue.4bpp"

    .global gUnknown_08145CDC
gUnknown_08145CDC:
    .incbin "graphics/ui/trial/confetti.4bpp"

    .global gUnknown_08145CFC
gUnknown_08145CFC:
    .incbin "baserom.gba", 0x00145CFC, 0x600

    .global gUnknown_081462FC
gUnknown_081462FC:
    .incbin "baserom.gba", 0x001462FC, 0xD00

    .global gUnknown_08146FFC
gUnknown_08146FFC:
    .incbin "baserom.gba", 0x00146FFC, 0x200

    .global gUnknown_081471FC
gUnknown_081471FC:
    .incbin "baserom.gba", 0x001471FC, 0x200

    .global gUnknown_081473FC
gUnknown_081473FC:
    .incbin "baserom.gba", 0x001473FC, 0x80

    .global gUnknown_0814747C
gUnknown_0814747C:
    .incbin "baserom.gba", 0x0014747C, 0x100

    .global gUnknown_0814757C
gUnknown_0814757C:
    .incbin "baserom.gba", 0x0014757C, 0x80

    .global gUnknown_081475FC
gUnknown_081475FC:
    .incbin "baserom.gba", 0x001475FC, 0x180

    .global gUnknown_0814777C
gUnknown_0814777C:
    .incbin "baserom.gba", 0x0014777C, 0x6304

    .global gUnknown_0814DA80
gUnknown_0814DA80:
    .incbin "baserom.gba", 0x0014DA80, 0x20

    .global gUnknown_0814DAA0
gUnknown_0814DAA0:
    .incbin "graphics/unk_194100.gbapal"

    .global gUnknown_0814DBA0
gUnknown_0814DBA0:
    .incbin "graphics/ui/investigation/action_buttons_0.gbapal"

    .global gUnknown_0814DBC0
gUnknown_0814DBC0:
    .incbin "graphics/ui/investigation/action_buttons_1.gbapal"

    .global gUnknown_0814DBE0
gUnknown_0814DBE0:
    .incbin "graphics/ui/court_record/controls_blurb.gbapal"

    .global gUnknown_0814DC00
gUnknown_0814DC00:
    .incbin "graphics/ui/investigation/scroll_prompt.gbapal"

    .global gUnknown_0814DC20
gUnknown_0814DC20:
    .incbin "graphics/ui/trial/testimony_text_tiles.gbapal"

    .global gUnknown_0814DC40
gUnknown_0814DC40:
    .incbin "graphics/ui/trial/press_present_buttons.gbapal"

    .global gUnknown_0814DC60
gUnknown_0814DC60:
    .incbin "graphics/ui/investigation/examine_cursor_00.gbapal"

    .global gUnknown_0814DC80
gUnknown_0814DC80:
    .incbin "graphics/ui/investigation/examine_cursor_01.gbapal"

    .global gUnknown_0814DCA0
gUnknown_0814DCA0:
    .incbin "graphics/ui/investigation/examine_cursor_02.gbapal"

    .global gUnknown_0814DCC0
gUnknown_0814DCC0:
    .incbin "graphics/ui/investigation/examine_cursor_03.gbapal"

    .global gUnknown_0814DCE0
gUnknown_0814DCE0:
    .incbin "graphics/ui/investigation/examine_cursor_04.gbapal"

    .global gUnknown_0814DD00
gUnknown_0814DD00:
    .incbin "graphics/ui/investigation/examine_cursor_05.gbapal"

    .global gUnknown_0814DD20
gUnknown_0814DD20:
    .incbin "graphics/ui/investigation/examine_cursor_06.gbapal"

    .global gUnknown_0814DD40
gUnknown_0814DD40:
    .incbin "graphics/ui/investigation/examine_cursor_07.gbapal"

    .global gUnknown_0814DD60
gUnknown_0814DD60:
    .incbin "graphics/ui/investigation/examine_cursor_08.gbapal"

    .global gUnknown_0814DD80
gUnknown_0814DD80:
    .incbin "graphics/ui/investigation/examine_cursor_09.gbapal"

    .global gUnknown_0814DDA0
gUnknown_0814DDA0:
    .incbin "graphics/ui/investigation/examine_cursor_10.gbapal"

    .global gUnknown_0814DDC0
gUnknown_0814DDC0:
    .incbin "graphics/ui/investigation/examine_cursor_11.gbapal"

    .global gUnknown_0814DDE0
gUnknown_0814DDE0:
    .incbin "graphics/ui/investigation/examine_cursor_12.gbapal"

    .global gUnknown_0814DE00
gUnknown_0814DE00:
    .incbin "graphics/ui/investigation/examine_cursor_13.gbapal"

    .global gUnknown_0814DE20
gUnknown_0814DE20:
    .incbin "graphics/ui/investigation/examine_cursor_14.gbapal"

    .global gUnknown_0814DE40
gUnknown_0814DE40:
    .incbin "graphics/ui/investigation/examine_cursor_15.gbapal"

    .global gUnknown_0814DE60
gUnknown_0814DE60:
    .incbin "graphics/ui/investigation/examine_cursor_16.gbapal"

    .global gUnknown_0814DE80
gUnknown_0814DE80:
    .incbin "graphics/ui/investigation/checkmark.gbapal"

    .global gUnknown_0814DEA0
gUnknown_0814DEA0:
    .incbin "graphics/ui/trial/game_over_doors.gbapal"

    .global gUnknown_0814DEC0
gUnknown_0814DEC0:
    .incbin "graphics/ui/trial/guilty.gbapal"

    .global gUnknown_0814DEE0
gUnknown_0814DEE0:
    .incbin "graphics/ui/trial/not_guilty.gbapal"

    .global gUnknown_0814DF00
gUnknown_0814DF00:
    .incbin "graphics/ui/trial/game_over_text.gbapal"

    .global gUnknown_0814DF20
gUnknown_0814DF20:
    .incbin "graphics/ui/new_game_continue_0.gbapal"

    .global gUnknown_0814DF40
gUnknown_0814DF40:
    .incbin "graphics/ui/new_game_continue_1.gbapal"

    .global gUnknown_0814DF60
gUnknown_0814DF60:
    .incbin "graphics/ui/new_game_continue_2.gbapal"

    .global gUnknown_0814DF80
gUnknown_0814DF80:
    .incbin "graphics/ui/new_game_continue_3.gbapal"

    .global gUnknown_0814DFA0
gUnknown_0814DFA0:
    .incbin "graphics/ui/new_game_continue_4.gbapal"

    .global gUnknown_0814DFC0
gUnknown_0814DFC0:
    .incbin "graphics/ui/new_game_continue_5.gbapal"

    .global gUnknown_0814DFE0
gUnknown_0814DFE0:
    .incbin "graphics/ui/trial/confetti_0.gbapal"

    .global gUnknown_0814E000
gUnknown_0814E000:
    .incbin "graphics/ui/trial/confetti_1.gbapal"

    .global gUnknown_0814E020
gUnknown_0814E020:
    .incbin "graphics/ui/trial/confetti_2.gbapal"

    .global gUnknown_0814E040
gUnknown_0814E040:
    .incbin "graphics/ui/trial/confetti_3.gbapal"

    .global gUnknown_0814E060
gUnknown_0814E060:
    .incbin "baserom.gba", 0x0014E060, 0x80

    .global gUnknown_0814E0E0
gUnknown_0814E0E0:
    .incbin "baserom.gba", 0x0014E0E0, 0x20

    .global gUnknown_0814E100
gUnknown_0814E100:
    .incbin "baserom.gba", 0x0014E100, 0x20

    .global gUnknown_0814E120
gUnknown_0814E120:
    .incbin "baserom.gba", 0x0014E120, 0x200

    .global gUnknown_0814E320
gUnknown_0814E320:
    .incbin "baserom.gba", 0x0014E320, 0x20

    .global gUnknown_0814E340
gUnknown_0814E340:
    .incbin "baserom.gba", 0x0014E340, 0x20

    .global gUnknown_0814E360
gUnknown_0814E360:
    .incbin "baserom.gba", 0x0014E360, 0x100

    .global gUnknown_0814E460
gUnknown_0814E460:
    .incbin "baserom.gba", 0x0014E460, 0xC64

    .global gUnknown_0814F0C4
gUnknown_0814F0C4:
    .incbin "graphics/from_save_or_beginning_options.4bpp"

    .global gUnknown_081500C4
gUnknown_081500C4:
    .incbin "graphics/save_yes_no.4bpp"

    .global gUnknown_081508C4
gUnknown_081508C4:
    .incbin "baserom.gba", 0x001508C4, 0x27564

@ BEGIN EVIDENCE PROFILE PICTURES

    .global gUnknown_08177E28_pal
gUnknown_08177E28_pal:
    .incbin "graphics/evidence_profile_pictures/00177E28.gbapal"

    .global gUnknown_08177E28_gfx
gUnknown_08177E28_gfx:
    .incbin "graphics/evidence_profile_pictures/00177E28.4bpp"

    .global gUnknown_08178648_pal
gUnknown_08178648_pal:
    .incbin "graphics/evidence_profile_pictures/00178648.gbapal"

    .global gUnknown_08178648_gfx
gUnknown_08178648_gfx:
    .incbin "graphics/evidence_profile_pictures/00178648.4bpp"

    .global gUnknown_08178E68_pal
gUnknown_08178E68_pal:
    .incbin "graphics/evidence_profile_pictures/00178E68.gbapal"

    .global gUnknown_08178E68_gfx
gUnknown_08178E68_gfx:
    .incbin "graphics/evidence_profile_pictures/00178E68.4bpp"

    .global gUnknown_08179688_pal
gUnknown_08179688_pal:
    .incbin "graphics/evidence_profile_pictures/00179688.gbapal"

    .global gUnknown_08179688_gfx
gUnknown_08179688_gfx:
    .incbin "graphics/evidence_profile_pictures/00179688.4bpp"

    .global gUnknown_08179EA8_pal
gUnknown_08179EA8_pal:
    .incbin "graphics/evidence_profile_pictures/00179EA8.gbapal"

    .global gUnknown_08179EA8_gfx
gUnknown_08179EA8_gfx:
    .incbin "graphics/evidence_profile_pictures/00179EA8.4bpp"

    .global gUnknown_0817A6C8_pal
gUnknown_0817A6C8_pal:
    .incbin "graphics/evidence_profile_pictures/0017A6C8.gbapal"

    .global gUnknown_0817A6C8_gfx
gUnknown_0817A6C8_gfx:
    .incbin "graphics/evidence_profile_pictures/0017A6C8.4bpp"

    .global gUnknown_0817AEE8_pal
gUnknown_0817AEE8_pal:
    .incbin "graphics/evidence_profile_pictures/0017AEE8.gbapal"

    .global gUnknown_0817AEE8_gfx
gUnknown_0817AEE8_gfx:
    .incbin "graphics/evidence_profile_pictures/0017AEE8.4bpp"

    .global gUnknown_0817B708_pal
gUnknown_0817B708_pal:
    .incbin "graphics/evidence_profile_pictures/0017B708.gbapal"

    .global gUnknown_0817B708_gfx
gUnknown_0817B708_gfx:
    .incbin "graphics/evidence_profile_pictures/0017B708.4bpp"

    .global gUnknown_0817BF28_pal
gUnknown_0817BF28_pal:
    .incbin "graphics/evidence_profile_pictures/0017BF28.gbapal"

    .global gUnknown_0817BF28_gfx
gUnknown_0817BF28_gfx:
    .incbin "graphics/evidence_profile_pictures/0017BF28.4bpp"

    .global gUnknown_0817C748_pal
gUnknown_0817C748_pal:
    .incbin "graphics/evidence_profile_pictures/0017C748.gbapal"

    .global gUnknown_0817C748_gfx
gUnknown_0817C748_gfx:
    .incbin "graphics/evidence_profile_pictures/0017C748.4bpp"

    .global gUnknown_0817CF68_pal
gUnknown_0817CF68_pal:
    .incbin "graphics/evidence_profile_pictures/0017CF68.gbapal"

    .global gUnknown_0817CF68_gfx
gUnknown_0817CF68_gfx:
    .incbin "graphics/evidence_profile_pictures/0017CF68.4bpp"

    .global gUnknown_0817D788_pal
gUnknown_0817D788_pal:
    .incbin "graphics/evidence_profile_pictures/0017D788.gbapal"

    .global gUnknown_0817D788_gfx
gUnknown_0817D788_gfx:
    .incbin "graphics/evidence_profile_pictures/0017D788.4bpp"

    .global gUnknown_0817DFA8_pal
gUnknown_0817DFA8_pal:
    .incbin "graphics/evidence_profile_pictures/0017DFA8.gbapal"

    .global gUnknown_0817DFA8_gfx
gUnknown_0817DFA8_gfx:
    .incbin "graphics/evidence_profile_pictures/0017DFA8.4bpp"

    .global gUnknown_0817E7C8_pal
gUnknown_0817E7C8_pal:
    .incbin "graphics/evidence_profile_pictures/0017E7C8.gbapal"

    .global gUnknown_0817E7C8_gfx
gUnknown_0817E7C8_gfx:
    .incbin "graphics/evidence_profile_pictures/0017E7C8.4bpp"

    .global gUnknown_0817EFE8_pal
gUnknown_0817EFE8_pal:
    .incbin "graphics/evidence_profile_pictures/0017EFE8.gbapal"

    .global gUnknown_0817EFE8_gfx
gUnknown_0817EFE8_gfx:
    .incbin "graphics/evidence_profile_pictures/0017EFE8.4bpp"

    .global gUnknown_0817F808_pal
gUnknown_0817F808_pal:
    .incbin "graphics/evidence_profile_pictures/0017F808.gbapal"

    .global gUnknown_0817F808_gfx
gUnknown_0817F808_gfx:
    .incbin "graphics/evidence_profile_pictures/0017F808.4bpp"

    .global gUnknown_08180028_pal
gUnknown_08180028_pal:
    .incbin "graphics/evidence_profile_pictures/00180028.gbapal"

    .global gUnknown_08180028_gfx
gUnknown_08180028_gfx:
    .incbin "graphics/evidence_profile_pictures/00180028.4bpp"

    .global gUnknown_08180848_pal
gUnknown_08180848_pal:
    .incbin "graphics/evidence_profile_pictures/00180848.gbapal"

    .global gUnknown_08180848_gfx
gUnknown_08180848_gfx:
    .incbin "graphics/evidence_profile_pictures/00180848.4bpp"

    .global gUnknown_08181068_pal
gUnknown_08181068_pal:
    .incbin "graphics/evidence_profile_pictures/00181068.gbapal"

    .global gUnknown_08181068_gfx
gUnknown_08181068_gfx:
    .incbin "graphics/evidence_profile_pictures/00181068.4bpp"

    .global gUnknown_08181888_pal
gUnknown_08181888_pal:
    .incbin "graphics/evidence_profile_pictures/00181888.gbapal"

    .global gUnknown_08181888_gfx
gUnknown_08181888_gfx:
    .incbin "graphics/evidence_profile_pictures/00181888.4bpp"

    .global gUnknown_081820A8_pal
gUnknown_081820A8_pal:
    .incbin "graphics/evidence_profile_pictures/001820A8.gbapal"

    .global gUnknown_081820A8_gfx
gUnknown_081820A8_gfx:
    .incbin "graphics/evidence_profile_pictures/001820A8.4bpp"

    .global gUnknown_081828C8_pal
gUnknown_081828C8_pal:
    .incbin "graphics/evidence_profile_pictures/001828C8.gbapal"

    .global gUnknown_081828C8_gfx
gUnknown_081828C8_gfx:
    .incbin "graphics/evidence_profile_pictures/001828C8.4bpp"

    .global gUnknown_081830E8_pal
gUnknown_081830E8_pal:
    .incbin "graphics/evidence_profile_pictures/001830E8.gbapal"

    .global gUnknown_081830E8_gfx
gUnknown_081830E8_gfx:
    .incbin "graphics/evidence_profile_pictures/001830E8.4bpp"

    .global gUnknown_08183908_pal
gUnknown_08183908_pal:
    .incbin "graphics/evidence_profile_pictures/00183908.gbapal"

    .global gUnknown_08183908_gfx
gUnknown_08183908_gfx:
    .incbin "graphics/evidence_profile_pictures/00183908.4bpp"

    .global gUnknown_08184128_pal
gUnknown_08184128_pal:
    .incbin "graphics/evidence_profile_pictures/00184128.gbapal"

    .global gUnknown_08184128_gfx
gUnknown_08184128_gfx:
    .incbin "graphics/evidence_profile_pictures/00184128.4bpp"

    .global gUnknown_08184948_pal
gUnknown_08184948_pal:
    .incbin "graphics/evidence_profile_pictures/00184948.gbapal"

    .global gUnknown_08184948_gfx
gUnknown_08184948_gfx:
    .incbin "graphics/evidence_profile_pictures/00184948.4bpp"

    .global gUnknown_08185168_pal
gUnknown_08185168_pal:
    .incbin "graphics/evidence_profile_pictures/00185168.gbapal"

    .global gUnknown_08185168_gfx
gUnknown_08185168_gfx:
    .incbin "graphics/evidence_profile_pictures/00185168.4bpp"

    .global gUnknown_08185988_pal
gUnknown_08185988_pal:
    .incbin "graphics/evidence_profile_pictures/00185988.gbapal"

    .global gUnknown_08185988_gfx
gUnknown_08185988_gfx:
    .incbin "graphics/evidence_profile_pictures/00185988.4bpp"

    .global gUnknown_081861A8_pal
gUnknown_081861A8_pal:
    .incbin "graphics/evidence_profile_pictures/001861A8.gbapal"

    .global gUnknown_081861A8_gfx
gUnknown_081861A8_gfx:
    .incbin "graphics/evidence_profile_pictures/001861A8.4bpp"

    .global gUnknown_081869C8_pal
gUnknown_081869C8_pal:
    .incbin "graphics/evidence_profile_pictures/001869C8.gbapal"

    .global gUnknown_081869C8_gfx
gUnknown_081869C8_gfx:
    .incbin "graphics/evidence_profile_pictures/001869C8.4bpp"

    .global gUnknown_081871E8_pal
gUnknown_081871E8_pal:
    .incbin "graphics/evidence_profile_pictures/001871E8.gbapal"

    .global gUnknown_081871E8_gfx
gUnknown_081871E8_gfx:
    .incbin "graphics/evidence_profile_pictures/001871E8.4bpp"

    .global gUnknown_08187A08_pal
gUnknown_08187A08_pal:
    .incbin "graphics/evidence_profile_pictures/00187A08.gbapal"

    .global gUnknown_08187A08_gfx
gUnknown_08187A08_gfx:
    .incbin "graphics/evidence_profile_pictures/00187A08.4bpp"

    .global gUnknown_08188228_pal
gUnknown_08188228_pal:
    .incbin "graphics/evidence_profile_pictures/00188228.gbapal"

    .global gUnknown_08188228_gfx
gUnknown_08188228_gfx:
    .incbin "graphics/evidence_profile_pictures/00188228.4bpp"

    .global gUnknown_08188A48_pal
gUnknown_08188A48_pal:
    .incbin "graphics/evidence_profile_pictures/00188A48.gbapal"

    .global gUnknown_08188A48_gfx
gUnknown_08188A48_gfx:
    .incbin "graphics/evidence_profile_pictures/00188A48.4bpp"

    .global gUnknown_08189268_pal
gUnknown_08189268_pal:
    .incbin "graphics/evidence_profile_pictures/00189268.gbapal"

    .global gUnknown_08189268_gfx
gUnknown_08189268_gfx:
    .incbin "graphics/evidence_profile_pictures/00189268.4bpp"

    .global gUnknown_08189A88_pal
gUnknown_08189A88_pal:
    .incbin "graphics/evidence_profile_pictures/00189A88.gbapal"

    .global gUnknown_08189A88_gfx
gUnknown_08189A88_gfx:
    .incbin "graphics/evidence_profile_pictures/00189A88.4bpp"

    .global gUnknown_0818A2A8_pal
gUnknown_0818A2A8_pal:
    .incbin "graphics/evidence_profile_pictures/0018A2A8.gbapal"

    .global gUnknown_0818A2A8_gfx
gUnknown_0818A2A8_gfx:
    .incbin "graphics/evidence_profile_pictures/0018A2A8.4bpp"

    .global gUnknown_0818AAC8_pal
gUnknown_0818AAC8_pal:
    .incbin "graphics/evidence_profile_pictures/0018AAC8.gbapal"

    .global gUnknown_0818AAC8_gfx
gUnknown_0818AAC8_gfx:
    .incbin "graphics/evidence_profile_pictures/0018AAC8.4bpp"

    .global gUnknown_0818B2E8_pal
gUnknown_0818B2E8_pal:
    .incbin "graphics/evidence_profile_pictures/0018B2E8.gbapal"

    .global gUnknown_0818B2E8_gfx
gUnknown_0818B2E8_gfx:
    .incbin "graphics/evidence_profile_pictures/0018B2E8.4bpp"

    .global gUnknown_0818BB08_pal
gUnknown_0818BB08_pal:
    .incbin "graphics/evidence_profile_pictures/0018BB08.gbapal"

    .global gUnknown_0818BB08_gfx
gUnknown_0818BB08_gfx:
    .incbin "graphics/evidence_profile_pictures/0018BB08.4bpp"

    .global gUnknown_0818C328_pal
gUnknown_0818C328_pal:
    .incbin "graphics/evidence_profile_pictures/0018C328.gbapal"

    .global gUnknown_0818C328_gfx
gUnknown_0818C328_gfx:
    .incbin "graphics/evidence_profile_pictures/0018C328.4bpp"

    .global gUnknown_0818CB48_pal
gUnknown_0818CB48_pal:
    .incbin "graphics/evidence_profile_pictures/0018CB48.gbapal"

    .global gUnknown_0818CB48_gfx
gUnknown_0818CB48_gfx:
    .incbin "graphics/evidence_profile_pictures/0018CB48.4bpp"

    .global gUnknown_0818D368_pal
gUnknown_0818D368_pal:
    .incbin "graphics/evidence_profile_pictures/0018D368.gbapal"

    .global gUnknown_0818D368_gfx
gUnknown_0818D368_gfx:
    .incbin "graphics/evidence_profile_pictures/0018D368.4bpp"

    .global gUnknown_0818DB88_pal
gUnknown_0818DB88_pal:
    .incbin "graphics/evidence_profile_pictures/0018DB88.gbapal"

    .global gUnknown_0818DB88_gfx
gUnknown_0818DB88_gfx:
    .incbin "graphics/evidence_profile_pictures/0018DB88.4bpp"

    .global gUnknown_0818E3A8_pal
gUnknown_0818E3A8_pal:
    .incbin "graphics/evidence_profile_pictures/0018E3A8.gbapal"

    .global gUnknown_0818E3A8_gfx
gUnknown_0818E3A8_gfx:
    .incbin "graphics/evidence_profile_pictures/0018E3A8.4bpp"

    .global gUnknown_0818EBC8_pal
gUnknown_0818EBC8_pal:
    .incbin "graphics/evidence_profile_pictures/0018EBC8.gbapal"

    .global gUnknown_0818EBC8_gfx
gUnknown_0818EBC8_gfx:
    .incbin "graphics/evidence_profile_pictures/0018EBC8.4bpp"

    .global gUnknown_0818F3E8_pal
gUnknown_0818F3E8_pal:
    .incbin "graphics/evidence_profile_pictures/0018F3E8.gbapal"

    .global gUnknown_0818F3E8_gfx
gUnknown_0818F3E8_gfx:
    .incbin "graphics/evidence_profile_pictures/0018F3E8.4bpp"

    .global gUnknown_0818FC08_pal
gUnknown_0818FC08_pal:
    .incbin "graphics/evidence_profile_pictures/0018FC08.gbapal"

    .global gUnknown_0818FC08_gfx
gUnknown_0818FC08_gfx:
    .incbin "graphics/evidence_profile_pictures/0018FC08.4bpp"

    .global gUnknown_08190428_pal
gUnknown_08190428_pal:
    .incbin "graphics/evidence_profile_pictures/00190428.gbapal"

    .global gUnknown_08190428_gfx
gUnknown_08190428_gfx:
    .incbin "graphics/evidence_profile_pictures/00190428.4bpp"

    .global gUnknown_08190C48_pal
gUnknown_08190C48_pal:
    .incbin "graphics/evidence_profile_pictures/00190C48.gbapal"

    .global gUnknown_08190C48_gfx
gUnknown_08190C48_gfx:
    .incbin "graphics/evidence_profile_pictures/00190C48.4bpp"

    .global gUnknown_08191468_pal
gUnknown_08191468_pal:
    .incbin "graphics/evidence_profile_pictures/00191468.gbapal"

    .global gUnknown_08191468_gfx
gUnknown_08191468_gfx:
    .incbin "graphics/evidence_profile_pictures/00191468.4bpp"

    .global gUnknown_08191C88_pal
gUnknown_08191C88_pal:
    .incbin "graphics/evidence_profile_pictures/00191C88.gbapal"

    .global gUnknown_08191C88_gfx
gUnknown_08191C88_gfx:
    .incbin "graphics/evidence_profile_pictures/00191C88.4bpp"

    .global gUnknown_081924A8_pal
gUnknown_081924A8_pal:
    .incbin "graphics/evidence_profile_pictures/001924A8.gbapal"

    .global gUnknown_081924A8_gfx
gUnknown_081924A8_gfx:
    .incbin "graphics/evidence_profile_pictures/001924A8.4bpp"

    .global gUnknown_08192CC8_pal
gUnknown_08192CC8_pal:
    .incbin "graphics/evidence_profile_pictures/00192CC8.gbapal"

    .global gUnknown_08192CC8_gfx
gUnknown_08192CC8_gfx:
    .incbin "graphics/evidence_profile_pictures/00192CC8.4bpp"

    .global gUnknown_081934E8_pal
gUnknown_081934E8_pal:
    .incbin "graphics/evidence_profile_pictures/001934E8.gbapal"

    .global gUnknown_081934E8_gfx
gUnknown_081934E8_gfx:
    .incbin "graphics/evidence_profile_pictures/001934E8.4bpp"

    .global gUnknown_08193D08_pal
gUnknown_08193D08_pal:
    .incbin "graphics/evidence_profile_pictures/00193D08.gbapal"

    .global gUnknown_08193D08_gfx
gUnknown_08193D08_gfx:
    .incbin "graphics/evidence_profile_pictures/00193D08.4bpp"

    .global gUnknown_08194528_pal
gUnknown_08194528_pal:
    .incbin "graphics/evidence_profile_pictures/00194528.gbapal"

    .global gUnknown_08194528_gfx
gUnknown_08194528_gfx:
    .incbin "graphics/evidence_profile_pictures/00194528.4bpp"

    .global gUnknown_08194D48_pal
gUnknown_08194D48_pal:
    .incbin "graphics/evidence_profile_pictures/00194D48.gbapal"

    .global gUnknown_08194D48_gfx
gUnknown_08194D48_gfx:
    .incbin "graphics/evidence_profile_pictures/00194D48.4bpp"

    .global gUnknown_08195568_pal
gUnknown_08195568_pal:
    .incbin "graphics/evidence_profile_pictures/00195568.gbapal"

    .global gUnknown_08195568_gfx
gUnknown_08195568_gfx:
    .incbin "graphics/evidence_profile_pictures/00195568.4bpp"

    .global gUnknown_08195D88_pal
gUnknown_08195D88_pal:
    .incbin "graphics/evidence_profile_pictures/00195D88.gbapal"

    .global gUnknown_08195D88_gfx
gUnknown_08195D88_gfx:
    .incbin "graphics/evidence_profile_pictures/00195D88.4bpp"

    .global gUnknown_081965A8_pal
gUnknown_081965A8_pal:
    .incbin "graphics/evidence_profile_pictures/001965A8.gbapal"

    .global gUnknown_081965A8_gfx
gUnknown_081965A8_gfx:
    .incbin "graphics/evidence_profile_pictures/001965A8.4bpp"

    .global gUnknown_08196DC8_pal
gUnknown_08196DC8_pal:
    .incbin "graphics/evidence_profile_pictures/00196DC8.gbapal"

    .global gUnknown_08196DC8_gfx
gUnknown_08196DC8_gfx:
    .incbin "graphics/evidence_profile_pictures/00196DC8.4bpp"

    .global gUnknown_081975E8_pal
gUnknown_081975E8_pal:
    .incbin "graphics/evidence_profile_pictures/001975E8.gbapal"

    .global gUnknown_081975E8_gfx
gUnknown_081975E8_gfx:
    .incbin "graphics/evidence_profile_pictures/001975E8.4bpp"

    .global gUnknown_08197E08_pal
gUnknown_08197E08_pal:
    .incbin "graphics/evidence_profile_pictures/00197E08.gbapal"

    .global gUnknown_08197E08_gfx
gUnknown_08197E08_gfx:
    .incbin "graphics/evidence_profile_pictures/00197E08.4bpp"

    .global gUnknown_08198628_pal
gUnknown_08198628_pal:
    .incbin "graphics/evidence_profile_pictures/00198628.gbapal"

    .global gUnknown_08198628_gfx
gUnknown_08198628_gfx:
    .incbin "graphics/evidence_profile_pictures/00198628.4bpp"

    .global gUnknown_08198E48_pal
gUnknown_08198E48_pal:
    .incbin "graphics/evidence_profile_pictures/00198E48.gbapal"

    .global gUnknown_08198E48_gfx
gUnknown_08198E48_gfx:
    .incbin "graphics/evidence_profile_pictures/00198E48.4bpp"

    .global gUnknown_08199668_pal
gUnknown_08199668_pal:
    .incbin "graphics/evidence_profile_pictures/00199668.gbapal"

    .global gUnknown_08199668_gfx
gUnknown_08199668_gfx:
    .incbin "graphics/evidence_profile_pictures/00199668.4bpp"

    .global gUnknown_08199E88_pal
gUnknown_08199E88_pal:
    .incbin "graphics/evidence_profile_pictures/00199E88.gbapal"

    .global gUnknown_08199E88_gfx
gUnknown_08199E88_gfx:
    .incbin "graphics/evidence_profile_pictures/00199E88.4bpp"

    .global gUnknown_0819A6A8_pal
gUnknown_0819A6A8_pal:
    .incbin "graphics/evidence_profile_pictures/0019A6A8.gbapal"

    .global gUnknown_0819A6A8_gfx
gUnknown_0819A6A8_gfx:
    .incbin "graphics/evidence_profile_pictures/0019A6A8.4bpp"

    .global gUnknown_0819AEC8_pal
gUnknown_0819AEC8_pal:
    .incbin "graphics/evidence_profile_pictures/0019AEC8.gbapal"

    .global gUnknown_0819AEC8_gfx
gUnknown_0819AEC8_gfx:
    .incbin "graphics/evidence_profile_pictures/0019AEC8.4bpp"

    .global gUnknown_0819B6E8_pal
gUnknown_0819B6E8_pal:
    .incbin "graphics/evidence_profile_pictures/0019B6E8.gbapal"

    .global gUnknown_0819B6E8_gfx
gUnknown_0819B6E8_gfx:
    .incbin "graphics/evidence_profile_pictures/0019B6E8.4bpp"

    .global gUnknown_0819BF08_pal
gUnknown_0819BF08_pal:
    .incbin "graphics/evidence_profile_pictures/0019BF08.gbapal"

    .global gUnknown_0819BF08_gfx
gUnknown_0819BF08_gfx:
    .incbin "graphics/evidence_profile_pictures/0019BF08.4bpp"

    .global gUnknown_0819C728_pal
gUnknown_0819C728_pal:
    .incbin "graphics/evidence_profile_pictures/0019C728.gbapal"

    .global gUnknown_0819C728_gfx
gUnknown_0819C728_gfx:
    .incbin "graphics/evidence_profile_pictures/0019C728.4bpp"

    .global gUnknown_0819CF48_pal
gUnknown_0819CF48_pal:
    .incbin "graphics/evidence_profile_pictures/0019CF48.gbapal"

    .global gUnknown_0819CF48_gfx
gUnknown_0819CF48_gfx:
    .incbin "graphics/evidence_profile_pictures/0019CF48.4bpp"

    .global gUnknown_0819D768_pal
gUnknown_0819D768_pal:
    .incbin "graphics/evidence_profile_pictures/0019D768.gbapal"

    .global gUnknown_0819D768_gfx
gUnknown_0819D768_gfx:
    .incbin "graphics/evidence_profile_pictures/0019D768.4bpp"

    .global gUnknown_0819DF88_pal
gUnknown_0819DF88_pal:
    .incbin "graphics/evidence_profile_pictures/0019DF88.gbapal"

    .global gUnknown_0819DF88_gfx
gUnknown_0819DF88_gfx:
    .incbin "graphics/evidence_profile_pictures/0019DF88.4bpp"

    .global gUnknown_0819E7A8_pal
gUnknown_0819E7A8_pal:
    .incbin "graphics/evidence_profile_pictures/0019E7A8.gbapal"

    .global gUnknown_0819E7A8_gfx
gUnknown_0819E7A8_gfx:
    .incbin "graphics/evidence_profile_pictures/0019E7A8.4bpp"

    .global gUnknown_0819EFC8_pal
gUnknown_0819EFC8_pal:
    .incbin "graphics/evidence_profile_pictures/0019EFC8.gbapal"

    .global gUnknown_0819EFC8_gfx
gUnknown_0819EFC8_gfx:
    .incbin "graphics/evidence_profile_pictures/0019EFC8.4bpp"

    .global gUnknown_0819F7E8_pal
gUnknown_0819F7E8_pal:
    .incbin "graphics/evidence_profile_pictures/0019F7E8.gbapal"

    .global gUnknown_0819F7E8_gfx
gUnknown_0819F7E8_gfx:
    .incbin "graphics/evidence_profile_pictures/0019F7E8.4bpp"

    .global gUnknown_081A0008_pal
gUnknown_081A0008_pal:
    .incbin "graphics/evidence_profile_pictures/001A0008.gbapal"

    .global gUnknown_081A0008_gfx
gUnknown_081A0008_gfx:
    .incbin "graphics/evidence_profile_pictures/001A0008.4bpp"

    .global gUnknown_081A0828_pal
gUnknown_081A0828_pal:
    .incbin "graphics/evidence_profile_pictures/001A0828.gbapal"

    .global gUnknown_081A0828_gfx
gUnknown_081A0828_gfx:
    .incbin "graphics/evidence_profile_pictures/001A0828.4bpp"

    .global gUnknown_081A1048_pal
gUnknown_081A1048_pal:
    .incbin "graphics/evidence_profile_pictures/001A1048.gbapal"

    .global gUnknown_081A1048_gfx
gUnknown_081A1048_gfx:
    .incbin "graphics/evidence_profile_pictures/001A1048.4bpp"

    .global gUnknown_081A1868_pal
gUnknown_081A1868_pal:
    .incbin "graphics/evidence_profile_pictures/001A1868.gbapal"

    .global gUnknown_081A1868_gfx
gUnknown_081A1868_gfx:
    .incbin "graphics/evidence_profile_pictures/001A1868.4bpp"

    .global gUnknown_081A2088_pal
gUnknown_081A2088_pal:
    .incbin "graphics/evidence_profile_pictures/001A2088.gbapal"

    .global gUnknown_081A2088_gfx
gUnknown_081A2088_gfx:
    .incbin "graphics/evidence_profile_pictures/001A2088.4bpp"

    .global gUnknown_081A28A8_pal
gUnknown_081A28A8_pal:
    .incbin "graphics/evidence_profile_pictures/001A28A8.gbapal"

    .global gUnknown_081A28A8_gfx
gUnknown_081A28A8_gfx:
    .incbin "graphics/evidence_profile_pictures/001A28A8.4bpp"

    .global gUnknown_081A30C8_pal
gUnknown_081A30C8_pal:
    .incbin "graphics/evidence_profile_pictures/001A30C8.gbapal"

    .global gUnknown_081A30C8_gfx
gUnknown_081A30C8_gfx:
    .incbin "graphics/evidence_profile_pictures/001A30C8.4bpp"

    .global gUnknown_081A38E8_pal
gUnknown_081A38E8_pal:
    .incbin "graphics/evidence_profile_pictures/001A38E8.gbapal"

    .global gUnknown_081A38E8_gfx
gUnknown_081A38E8_gfx:
    .incbin "graphics/evidence_profile_pictures/001A38E8.4bpp"

    .global gUnknown_081A4108_pal
gUnknown_081A4108_pal:
    .incbin "graphics/evidence_profile_pictures/001A4108.gbapal"

    .global gUnknown_081A4108_gfx
gUnknown_081A4108_gfx:
    .incbin "graphics/evidence_profile_pictures/001A4108.4bpp"

    .global gUnknown_081A4928_pal
gUnknown_081A4928_pal:
    .incbin "graphics/evidence_profile_pictures/001A4928.gbapal"

    .global gUnknown_081A4928_gfx
gUnknown_081A4928_gfx:
    .incbin "graphics/evidence_profile_pictures/001A4928.4bpp"

    .global gUnknown_081A5148_pal
gUnknown_081A5148_pal:
    .incbin "graphics/evidence_profile_pictures/001A5148.gbapal"

    .global gUnknown_081A5148_gfx
gUnknown_081A5148_gfx:
    .incbin "graphics/evidence_profile_pictures/001A5148.4bpp"

    .global gUnknown_081A5968_pal
gUnknown_081A5968_pal:
    .incbin "graphics/evidence_profile_pictures/001A5968.gbapal"

    .global gUnknown_081A5968_gfx
gUnknown_081A5968_gfx:
    .incbin "graphics/evidence_profile_pictures/001A5968.4bpp"

    .global gUnknown_081A6188_pal
gUnknown_081A6188_pal:
    .incbin "graphics/evidence_profile_pictures/001A6188.gbapal"

    .global gUnknown_081A6188_gfx
gUnknown_081A6188_gfx:
    .incbin "graphics/evidence_profile_pictures/001A6188.4bpp"

    .global gUnknown_081A69A8_pal
gUnknown_081A69A8_pal:
    .incbin "graphics/evidence_profile_pictures/001A69A8.gbapal"

    .global gUnknown_081A69A8_gfx
gUnknown_081A69A8_gfx:
    .incbin "graphics/evidence_profile_pictures/001A69A8.4bpp"

    .global gUnknown_081A71C8_pal
gUnknown_081A71C8_pal:
    .incbin "graphics/evidence_profile_pictures/001A71C8.gbapal"

    .global gUnknown_081A71C8_gfx
gUnknown_081A71C8_gfx:
    .incbin "graphics/evidence_profile_pictures/001A71C8.4bpp"

    .global gUnknown_081A79E8_pal
gUnknown_081A79E8_pal:
    .incbin "graphics/evidence_profile_pictures/001A79E8.gbapal"

    .global gUnknown_081A79E8_gfx
gUnknown_081A79E8_gfx:
    .incbin "graphics/evidence_profile_pictures/001A79E8.4bpp"

    .global gUnknown_081A8208_pal
gUnknown_081A8208_pal:
    .incbin "graphics/evidence_profile_pictures/001A8208.gbapal"

    .global gUnknown_081A8208_gfx
gUnknown_081A8208_gfx:
    .incbin "graphics/evidence_profile_pictures/001A8208.4bpp"

    .global gUnknown_081A8A28_pal
gUnknown_081A8A28_pal:
    .incbin "graphics/evidence_profile_pictures/001A8A28.gbapal"

    .global gUnknown_081A8A28_gfx
gUnknown_081A8A28_gfx:
    .incbin "graphics/evidence_profile_pictures/001A8A28.4bpp"

    .global gUnknown_081A9248_pal
gUnknown_081A9248_pal:
    .incbin "graphics/evidence_profile_pictures/001A9248.gbapal"

    .global gUnknown_081A9248_gfx
gUnknown_081A9248_gfx:
    .incbin "graphics/evidence_profile_pictures/001A9248.4bpp"

    .global gUnknown_081A9A68_pal
gUnknown_081A9A68_pal:
    .incbin "graphics/evidence_profile_pictures/001A9A68.gbapal"

    .global gUnknown_081A9A68_gfx
gUnknown_081A9A68_gfx:
    .incbin "graphics/evidence_profile_pictures/001A9A68.4bpp"

    .global gUnknown_081AA288_pal
gUnknown_081AA288_pal:
    .incbin "graphics/evidence_profile_pictures/001AA288.gbapal"

    .global gUnknown_081AA288_gfx
gUnknown_081AA288_gfx:
    .incbin "graphics/evidence_profile_pictures/001AA288.4bpp"

    .global gUnknown_081AAAA8_pal
gUnknown_081AAAA8_pal:
    .incbin "graphics/evidence_profile_pictures/001AAAA8.gbapal"

    .global gUnknown_081AAAA8_gfx
gUnknown_081AAAA8_gfx:
    .incbin "graphics/evidence_profile_pictures/001AAAA8.4bpp"

    .global gUnknown_081AB2C8_pal
gUnknown_081AB2C8_pal:
    .incbin "graphics/evidence_profile_pictures/001AB2C8.gbapal"

    .global gUnknown_081AB2C8_gfx
gUnknown_081AB2C8_gfx:
    .incbin "graphics/evidence_profile_pictures/001AB2C8.4bpp"

    .global gUnknown_081ABAE8_pal
gUnknown_081ABAE8_pal:
    .incbin "graphics/evidence_profile_pictures/001ABAE8.gbapal"

    .global gUnknown_081ABAE8_gfx
gUnknown_081ABAE8_gfx:
    .incbin "graphics/evidence_profile_pictures/001ABAE8.4bpp"

    .global gUnknown_081AC308_pal
gUnknown_081AC308_pal:
    .incbin "graphics/evidence_profile_pictures/001AC308.gbapal"

    .global gUnknown_081AC308_gfx
gUnknown_081AC308_gfx:
    .incbin "graphics/evidence_profile_pictures/001AC308.4bpp"

    .global gUnknown_081ACB28_pal
gUnknown_081ACB28_pal:
    .incbin "graphics/evidence_profile_pictures/001ACB28.gbapal"

    .global gUnknown_081ACB28_gfx
gUnknown_081ACB28_gfx:
    .incbin "graphics/evidence_profile_pictures/001ACB28.4bpp"

    .global gUnknown_081AD348_pal
gUnknown_081AD348_pal:
    .incbin "graphics/evidence_profile_pictures/001AD348.gbapal"

    .global gUnknown_081AD348_gfx
gUnknown_081AD348_gfx:
    .incbin "graphics/evidence_profile_pictures/001AD348.4bpp"

    .global gUnknown_081ADB68_pal
gUnknown_081ADB68_pal:
    .incbin "graphics/evidence_profile_pictures/001ADB68.gbapal"

    .global gUnknown_081ADB68_gfx
gUnknown_081ADB68_gfx:
    .incbin "graphics/evidence_profile_pictures/001ADB68.4bpp"

@ END EVIDENCE PROFILE PICTURES

@ BEGIN CHARSETS

    .global gTextPal
gTextPal:
    .incbin "graphics/charset.gbapal"

    .global gCharSet
gCharSet:
    .incbin "graphics/charset.4bpp"

@ END CHARSETS

@ BEGIN TALK LOCATION CHOICES

    .global gUnknown_081DE3A8
gUnknown_081DE3A8:
    .incbin "graphics/talk_location_choices/choice_selected.gbapal"

    .global gUnknown_081DE3C8
gUnknown_081DE3C8:
    .incbin "graphics/talk_location_choices/choice_greyed_out.gbapal"

    .global gUnknown_081DE3E8
gUnknown_081DE3E8:
    .incbin "graphics/talk_location_choices/001DE3E8.4bpp"

    .global gUnknown_081DEBE8
gUnknown_081DEBE8:
    .incbin "graphics/talk_location_choices/001DEBE8.4bpp"

    .global gUnknown_081DF3E8
gUnknown_081DF3E8:
    .incbin "graphics/talk_location_choices/001DF3E8.4bpp"

    .global gUnknown_081DFBE8
gUnknown_081DFBE8:
    .incbin "graphics/talk_location_choices/001DFBE8.4bpp"

    .global gUnknown_081E03E8
gUnknown_081E03E8:
    .incbin "graphics/talk_location_choices/001E03E8.4bpp"

    .global gUnknown_081E0BE8
gUnknown_081E0BE8:
    .incbin "graphics/talk_location_choices/001E0BE8.4bpp"

    .global gUnknown_081E13E8
gUnknown_081E13E8:
    .incbin "graphics/talk_location_choices/001E13E8.4bpp"

    .global gUnknown_081E1BE8
gUnknown_081E1BE8:
    .incbin "graphics/talk_location_choices/001E1BE8.4bpp"

    .global gUnknown_081E23E8
gUnknown_081E23E8:
    .incbin "graphics/talk_location_choices/001E23E8.4bpp"

    .global gUnknown_081E2BE8
gUnknown_081E2BE8:
    .incbin "graphics/talk_location_choices/001E2BE8.4bpp"

    .global gUnknown_081E33E8
gUnknown_081E33E8:
    .incbin "graphics/talk_location_choices/001E33E8.4bpp"

    .global gUnknown_081E3BE8
gUnknown_081E3BE8:
    .incbin "graphics/talk_location_choices/001E3BE8.4bpp"

    .global gUnknown_081E43E8
gUnknown_081E43E8:
    .incbin "graphics/talk_location_choices/001E43E8.4bpp"

    .global gUnknown_081E4BE8
gUnknown_081E4BE8:
    .incbin "graphics/talk_location_choices/001E4BE8.4bpp"

    .global gUnknown_081E53E8
gUnknown_081E53E8:
    .incbin "graphics/talk_location_choices/001E53E8.4bpp"

    .global gUnknown_081E5BE8
gUnknown_081E5BE8:
    .incbin "graphics/talk_location_choices/001E5BE8.4bpp"

    .global gUnknown_081E63E8
gUnknown_081E63E8:
    .incbin "graphics/talk_location_choices/001E63E8.4bpp"

    .global gUnknown_081E6BE8
gUnknown_081E6BE8:
    .incbin "graphics/talk_location_choices/001E6BE8.4bpp"

    .global gUnknown_081E73E8
gUnknown_081E73E8:
    .incbin "graphics/talk_location_choices/001E73E8.4bpp"

    .global gUnknown_081E7BE8
gUnknown_081E7BE8:
    .incbin "graphics/talk_location_choices/001E7BE8.4bpp"

    .global gUnknown_081E83E8
gUnknown_081E83E8:
    .incbin "graphics/talk_location_choices/001E83E8.4bpp"

    .global gUnknown_081E8BE8
gUnknown_081E8BE8:
    .incbin "graphics/talk_location_choices/001E8BE8.4bpp"

    .global gUnknown_081E93E8
gUnknown_081E93E8:
    .incbin "graphics/talk_location_choices/001E93E8.4bpp"

    .global gUnknown_081E9BE8
gUnknown_081E9BE8:
    .incbin "graphics/talk_location_choices/001E9BE8.4bpp"

    .global gUnknown_081EA3E8
gUnknown_081EA3E8:
    .incbin "graphics/talk_location_choices/001EA3E8.4bpp"

    .global gUnknown_081EABE8
gUnknown_081EABE8:
    .incbin "graphics/talk_location_choices/001EABE8.4bpp"

    .global gUnknown_081EB3E8
gUnknown_081EB3E8:
    .incbin "graphics/talk_location_choices/001EB3E8.4bpp"

    .global gUnknown_081EBBE8
gUnknown_081EBBE8:
    .incbin "graphics/talk_location_choices/001EBBE8.4bpp"

    .global gUnknown_081EC3E8
gUnknown_081EC3E8:
    .incbin "graphics/talk_location_choices/001EC3E8.4bpp"

    .global gUnknown_081ECBE8
gUnknown_081ECBE8:
    .incbin "graphics/talk_location_choices/001ECBE8.4bpp"

    .global gUnknown_081ED3E8
gUnknown_081ED3E8:
    .incbin "graphics/talk_location_choices/001ED3E8.4bpp"

    .global gUnknown_081EDBE8
gUnknown_081EDBE8:
    .incbin "graphics/talk_location_choices/001EDBE8.4bpp"

    .global gUnknown_081EE3E8
gUnknown_081EE3E8:
    .incbin "graphics/talk_location_choices/001EE3E8.4bpp"

    .global gUnknown_081EEBE8
gUnknown_081EEBE8:
    .incbin "graphics/talk_location_choices/001EEBE8.4bpp"

    .global gUnknown_081EF3E8
gUnknown_081EF3E8:
    .incbin "graphics/talk_location_choices/001EF3E8.4bpp"

    .global gUnknown_081EFBE8
gUnknown_081EFBE8:
    .incbin "graphics/talk_location_choices/001EFBE8.4bpp"

    .global gUnknown_081F03E8
gUnknown_081F03E8:
    .incbin "graphics/talk_location_choices/001F03E8.4bpp"

    .global gUnknown_081F0BE8
gUnknown_081F0BE8:
    .incbin "graphics/talk_location_choices/001F0BE8.4bpp"

    .global gUnknown_081F13E8
gUnknown_081F13E8:
    .incbin "graphics/talk_location_choices/001F13E8.4bpp"

    .global gUnknown_081F1BE8
gUnknown_081F1BE8:
    .incbin "graphics/talk_location_choices/001F1BE8.4bpp"

    .global gUnknown_081F23E8
gUnknown_081F23E8:
    .incbin "graphics/talk_location_choices/001F23E8.4bpp"

    .global gUnknown_081F2BE8
gUnknown_081F2BE8:
    .incbin "graphics/talk_location_choices/001F2BE8.4bpp"

    .global gUnknown_081F33E8
gUnknown_081F33E8:
    .incbin "graphics/talk_location_choices/001F33E8.4bpp"

    .global gUnknown_081F3BE8
gUnknown_081F3BE8:
    .incbin "graphics/talk_location_choices/001F3BE8.4bpp"

    .global gUnknown_081F43E8
gUnknown_081F43E8:
    .incbin "graphics/talk_location_choices/001F43E8.4bpp"

    .global gUnknown_081F4BE8
gUnknown_081F4BE8:
    .incbin "graphics/talk_location_choices/001F4BE8.4bpp"

    .global gUnknown_081F53E8
gUnknown_081F53E8:
    .incbin "graphics/talk_location_choices/001F53E8.4bpp"

    .global gUnknown_081F5BE8
gUnknown_081F5BE8:
    .incbin "graphics/talk_location_choices/001F5BE8.4bpp"

    .global gUnknown_081F63E8
gUnknown_081F63E8:
    .incbin "graphics/talk_location_choices/001F63E8.4bpp"

    .global gUnknown_081F6BE8
gUnknown_081F6BE8:
    .incbin "graphics/talk_location_choices/001F6BE8.4bpp"

    .global gUnknown_081F73E8
gUnknown_081F73E8:
    .incbin "graphics/talk_location_choices/001F73E8.4bpp"

    .global gUnknown_081F7BE8
gUnknown_081F7BE8:
    .incbin "graphics/talk_location_choices/001F7BE8.4bpp"

    .global gUnknown_081F83E8
gUnknown_081F83E8:
    .incbin "graphics/talk_location_choices/001F83E8.4bpp"

    .global gUnknown_081F8BE8
gUnknown_081F8BE8:
    .incbin "graphics/talk_location_choices/001F8BE8.4bpp"

    .global gUnknown_081F93E8
gUnknown_081F93E8:
    .incbin "graphics/talk_location_choices/001F93E8.4bpp"

    .global gUnknown_081F9BE8
gUnknown_081F9BE8:
    .incbin "graphics/talk_location_choices/001F9BE8.4bpp"

    .global gUnknown_081FA3E8
gUnknown_081FA3E8:
    .incbin "graphics/talk_location_choices/001FA3E8.4bpp"

    .global gUnknown_081FABE8
gUnknown_081FABE8:
    .incbin "graphics/talk_location_choices/001FABE8.4bpp"

    .global gUnknown_081FB3E8
gUnknown_081FB3E8:
    .incbin "graphics/talk_location_choices/001FB3E8.4bpp"

    .global gUnknown_081FBBE8
gUnknown_081FBBE8:
    .incbin "graphics/talk_location_choices/001FBBE8.4bpp"

    .global gUnknown_081FC3E8
gUnknown_081FC3E8:
    .incbin "graphics/talk_location_choices/001FC3E8.4bpp"

    .global gUnknown_081FCBE8
gUnknown_081FCBE8:
    .incbin "graphics/talk_location_choices/001FCBE8.4bpp"

    .global gUnknown_081FD3E8
gUnknown_081FD3E8:
    .incbin "graphics/talk_location_choices/001FD3E8.4bpp"

    .global gUnknown_081FDBE8
gUnknown_081FDBE8:
    .incbin "graphics/talk_location_choices/001FDBE8.4bpp"

    .global gUnknown_081FE3E8
gUnknown_081FE3E8:
    .incbin "graphics/talk_location_choices/001FE3E8.4bpp"

    .global gUnknown_081FEBE8
gUnknown_081FEBE8:
    .incbin "graphics/talk_location_choices/001FEBE8.4bpp"

    .global gUnknown_081FF3E8
gUnknown_081FF3E8:
    .incbin "graphics/talk_location_choices/001FF3E8.4bpp"

    .global gUnknown_081FFBE8
gUnknown_081FFBE8:
    .incbin "graphics/talk_location_choices/001FFBE8.4bpp"

    .global gUnknown_082003E8
gUnknown_082003E8:
    .incbin "graphics/talk_location_choices/002003E8.4bpp"

    .global gUnknown_08200BE8
gUnknown_08200BE8:
    .incbin "graphics/talk_location_choices/00200BE8.4bpp"

    .global gUnknown_082013E8
gUnknown_082013E8:
    .incbin "graphics/talk_location_choices/002013E8.4bpp"

    .global gUnknown_08201BE8
gUnknown_08201BE8:
    .incbin "graphics/talk_location_choices/00201BE8.4bpp"

    .global gUnknown_082023E8
gUnknown_082023E8:
    .incbin "graphics/talk_location_choices/002023E8.4bpp"

    .global gUnknown_08202BE8
gUnknown_08202BE8:
    .incbin "graphics/talk_location_choices/00202BE8.4bpp"

    .global gUnknown_082033E8
gUnknown_082033E8:
    .incbin "graphics/talk_location_choices/002033E8.4bpp"

    .global gUnknown_08203BE8
gUnknown_08203BE8:
    .incbin "graphics/talk_location_choices/00203BE8.4bpp"

    .global gUnknown_082043E8
gUnknown_082043E8:
    .incbin "graphics/talk_location_choices/002043E8.4bpp"

    .global gUnknown_08204BE8
gUnknown_08204BE8:
    .incbin "graphics/talk_location_choices/00204BE8.4bpp"

    .global gUnknown_082053E8
gUnknown_082053E8:
    .incbin "graphics/talk_location_choices/002053E8.4bpp"

    .global gUnknown_08205BE8
gUnknown_08205BE8:
    .incbin "graphics/talk_location_choices/00205BE8.4bpp"

    .global gUnknown_082063E8
gUnknown_082063E8:
    .incbin "graphics/talk_location_choices/002063E8.4bpp"

    .global gUnknown_08206BE8
gUnknown_08206BE8:
    .incbin "graphics/talk_location_choices/00206BE8.4bpp"

    .global gUnknown_082073E8
gUnknown_082073E8:
    .incbin "graphics/talk_location_choices/002073E8.4bpp"

    .global gUnknown_08207BE8
gUnknown_08207BE8:
    .incbin "graphics/talk_location_choices/00207BE8.4bpp"

    .global gUnknown_082083E8
gUnknown_082083E8:
    .incbin "graphics/talk_location_choices/002083E8.4bpp"

    .global gUnknown_08208BE8
gUnknown_08208BE8:
    .incbin "graphics/talk_location_choices/00208BE8.4bpp"

    .global gUnknown_082093E8
gUnknown_082093E8:
    .incbin "graphics/talk_location_choices/002093E8.4bpp"

    .global gUnknown_08209BE8
gUnknown_08209BE8:
    .incbin "graphics/talk_location_choices/00209BE8.4bpp"

    .global gUnknown_0820A3E8
gUnknown_0820A3E8:
    .incbin "graphics/talk_location_choices/0020A3E8.4bpp"

    .global gUnknown_0820ABE8
gUnknown_0820ABE8:
    .incbin "graphics/talk_location_choices/0020ABE8.4bpp"

    .global gUnknown_0820B3E8
gUnknown_0820B3E8:
    .incbin "graphics/talk_location_choices/0020B3E8.4bpp"

    .global gUnknown_0820BBE8
gUnknown_0820BBE8:
    .incbin "graphics/talk_location_choices/0020BBE8.4bpp"

    .global gUnknown_0820C3E8
gUnknown_0820C3E8:
    .incbin "graphics/talk_location_choices/0020C3E8.4bpp"

    .global gUnknown_0820CBE8
gUnknown_0820CBE8:
    .incbin "graphics/talk_location_choices/0020CBE8.4bpp"

    .global gUnknown_0820D3E8
gUnknown_0820D3E8:
    .incbin "graphics/talk_location_choices/0020D3E8.4bpp"

    .global gUnknown_0820DBE8
gUnknown_0820DBE8:
    .incbin "graphics/talk_location_choices/0020DBE8.4bpp"

    .global gUnknown_0820E3E8
gUnknown_0820E3E8:
    .incbin "graphics/talk_location_choices/0020E3E8.4bpp"

    .global gUnknown_0820EBE8
gUnknown_0820EBE8:
    .incbin "graphics/talk_location_choices/0020EBE8.4bpp"

    .global gUnknown_0820F3E8
gUnknown_0820F3E8:
    .incbin "graphics/talk_location_choices/0020F3E8.4bpp"

    .global gUnknown_0820FBE8
gUnknown_0820FBE8:
    .incbin "graphics/talk_location_choices/0020FBE8.4bpp"

    .global gUnknown_082103E8
gUnknown_082103E8:
    .incbin "graphics/talk_location_choices/002103E8.4bpp"

    .global gUnknown_08210BE8
gUnknown_08210BE8:
    .incbin "graphics/talk_location_choices/00210BE8.4bpp"

    .global gUnknown_082113E8
gUnknown_082113E8:
    .incbin "graphics/talk_location_choices/002113E8.4bpp"

    .global gUnknown_08211BE8
gUnknown_08211BE8:
    .incbin "graphics/talk_location_choices/00211BE8.4bpp"

    .global gUnknown_082123E8
gUnknown_082123E8:
    .incbin "graphics/talk_location_choices/002123E8.4bpp"

    .global gUnknown_08212BE8
gUnknown_08212BE8:
    .incbin "graphics/talk_location_choices/00212BE8.4bpp"

    .global gUnknown_082133E8
gUnknown_082133E8:
    .incbin "graphics/talk_location_choices/002133E8.4bpp"

    .global gUnknown_08213BE8
gUnknown_08213BE8:
    .incbin "graphics/talk_location_choices/00213BE8.4bpp"

    .global gUnknown_082143E8
gUnknown_082143E8:
    .incbin "graphics/talk_location_choices/002143E8.4bpp"

    .global gUnknown_08214BE8
gUnknown_08214BE8:
    .incbin "graphics/talk_location_choices/00214BE8.4bpp"

    .global gUnknown_082153E8
gUnknown_082153E8:
    .incbin "graphics/talk_location_choices/002153E8.4bpp"

    .global gUnknown_08215BE8
gUnknown_08215BE8:
    .incbin "graphics/talk_location_choices/00215BE8.4bpp"

    .global gUnknown_082163E8
gUnknown_082163E8:
    .incbin "graphics/talk_location_choices/002163E8.4bpp"

    .global gUnknown_08216BE8
gUnknown_08216BE8:
    .incbin "graphics/talk_location_choices/00216BE8.4bpp"

    .global gUnknown_082173E8
gUnknown_082173E8:
    .incbin "graphics/talk_location_choices/002173E8.4bpp"

    .global gUnknown_08217BE8
gUnknown_08217BE8:
    .incbin "graphics/talk_location_choices/00217BE8.4bpp"

    .global gUnknown_082183E8
gUnknown_082183E8:
    .incbin "graphics/talk_location_choices/002183E8.4bpp"

    .global gUnknown_08218BE8
gUnknown_08218BE8:
    .incbin "graphics/talk_location_choices/00218BE8.4bpp"

    .global gUnknown_082193E8
gUnknown_082193E8:
    .incbin "graphics/talk_location_choices/002193E8.4bpp"

    .global gUnknown_08219BE8
gUnknown_08219BE8:
    .incbin "graphics/talk_location_choices/00219BE8.4bpp"

    .global gUnknown_0821A3E8
gUnknown_0821A3E8:
    .incbin "graphics/talk_location_choices/0021A3E8.4bpp"

    .global gUnknown_0821ABE8
gUnknown_0821ABE8:
    .incbin "graphics/talk_location_choices/0021ABE8.4bpp"

    .global gUnknown_0821B3E8
gUnknown_0821B3E8:
    .incbin "graphics/talk_location_choices/0021B3E8.4bpp"

    .global gUnknown_0821BBE8
gUnknown_0821BBE8:
    .incbin "graphics/talk_location_choices/0021BBE8.4bpp"

    .global gUnknown_0821C3E8
gUnknown_0821C3E8:
    .incbin "graphics/talk_location_choices/0021C3E8.4bpp"

    .global gUnknown_0821CBE8
gUnknown_0821CBE8:
    .incbin "graphics/talk_location_choices/0021CBE8.4bpp"

    .global gUnknown_0821D3E8
gUnknown_0821D3E8:
    .incbin "graphics/talk_location_choices/0021D3E8.4bpp"

    .global gUnknown_0821DBE8
gUnknown_0821DBE8:
    .incbin "graphics/talk_location_choices/0021DBE8.4bpp"

    .global gUnknown_0821E3E8
gUnknown_0821E3E8:
    .incbin "graphics/talk_location_choices/0021E3E8.4bpp"

    .global gUnknown_0821EBE8
gUnknown_0821EBE8:
    .incbin "graphics/talk_location_choices/0021EBE8.4bpp"

    .global gUnknown_0821F3E8
gUnknown_0821F3E8:
    .incbin "graphics/talk_location_choices/0021F3E8.4bpp"

    .global gUnknown_0821FBE8
gUnknown_0821FBE8:
    .incbin "graphics/talk_location_choices/0021FBE8.4bpp"

    .global gUnknown_082203E8
gUnknown_082203E8:
    .incbin "graphics/talk_location_choices/002203E8.4bpp"

    .global gUnknown_08220BE8
gUnknown_08220BE8:
    .incbin "graphics/talk_location_choices/00220BE8.4bpp"

    .global gUnknown_082213E8
gUnknown_082213E8:
    .incbin "graphics/talk_location_choices/002213E8.4bpp"

    .global gUnknown_08221BE8
gUnknown_08221BE8:
    .incbin "graphics/talk_location_choices/00221BE8.4bpp"

    .global gUnknown_082223E8
gUnknown_082223E8:
    .incbin "graphics/talk_location_choices/002223E8.4bpp"

    .global gUnknown_08222BE8
gUnknown_08222BE8:
    .incbin "graphics/talk_location_choices/00222BE8.4bpp"

    .global gUnknown_082233E8
gUnknown_082233E8:
    .incbin "graphics/talk_location_choices/002233E8.4bpp"

    .global gUnknown_08223BE8
gUnknown_08223BE8:
    .incbin "graphics/talk_location_choices/00223BE8.4bpp"

    .global gUnknown_082243E8
gUnknown_082243E8:
    .incbin "graphics/talk_location_choices/002243E8.4bpp"

    .global gUnknown_08224BE8
gUnknown_08224BE8:
    .incbin "graphics/talk_location_choices/00224BE8.4bpp"

    .global gUnknown_082253E8
gUnknown_082253E8:
    .incbin "graphics/talk_location_choices/002253E8.4bpp"

    .global gUnknown_08225BE8
gUnknown_08225BE8:
    .incbin "graphics/talk_location_choices/00225BE8.4bpp"

    .global gUnknown_082263E8
gUnknown_082263E8:
    .incbin "graphics/talk_location_choices/002263E8.4bpp"

    .global gUnknown_08226BE8
gUnknown_08226BE8:
    .incbin "graphics/talk_location_choices/00226BE8.4bpp"

    .global gUnknown_082273E8
gUnknown_082273E8:
    .incbin "graphics/talk_location_choices/002273E8.4bpp"

    .global gUnknown_08227BE8
gUnknown_08227BE8:
    .incbin "graphics/talk_location_choices/00227BE8.4bpp"

    .global gUnknown_082283E8
gUnknown_082283E8:
    .incbin "graphics/talk_location_choices/002283E8.4bpp"

    .global gUnknown_08228BE8
gUnknown_08228BE8:
    .incbin "graphics/talk_location_choices/00228BE8.4bpp"

    .global gUnknown_082293E8
gUnknown_082293E8:
    .incbin "graphics/talk_location_choices/002293E8.4bpp"

    .global gUnknown_08229BE8
gUnknown_08229BE8:
    .incbin "graphics/talk_location_choices/00229BE8.4bpp"

    .global gUnknown_0822A3E8
gUnknown_0822A3E8:
    .incbin "graphics/talk_location_choices/0022A3E8.4bpp"

    .global gUnknown_0822ABE8
gUnknown_0822ABE8:
    .incbin "graphics/talk_location_choices/0022ABE8.4bpp"

    .global gUnknown_0822B3E8
gUnknown_0822B3E8:
    .incbin "graphics/talk_location_choices/0022B3E8.4bpp"

    .global gUnknown_0822BBE8
gUnknown_0822BBE8:
    .incbin "graphics/talk_location_choices/0022BBE8.4bpp"

    .global gUnknown_0822C3E8
gUnknown_0822C3E8:
    .incbin "graphics/talk_location_choices/0022C3E8.4bpp"

    .global gUnknown_0822CBE8
gUnknown_0822CBE8:
    .incbin "graphics/talk_location_choices/0022CBE8.4bpp"

    .global gUnknown_0822D3E8
gUnknown_0822D3E8:
    .incbin "graphics/talk_location_choices/0022D3E8.4bpp"

    .global gUnknown_0822DBE8
gUnknown_0822DBE8:
    .incbin "graphics/talk_location_choices/0022DBE8.4bpp"

    .global gUnknown_0822E3E8
gUnknown_0822E3E8:
    .incbin "graphics/talk_location_choices/0022E3E8.4bpp"

    .global gUnknown_0822EBE8
gUnknown_0822EBE8:
    .incbin "graphics/talk_location_choices/0022EBE8.4bpp"

    .global gUnknown_0822F3E8
gUnknown_0822F3E8:
    .incbin "graphics/talk_location_choices/0022F3E8.4bpp"

    .global gUnknown_0822FBE8
gUnknown_0822FBE8:
    .incbin "graphics/talk_location_choices/0022FBE8.4bpp"

    .global gUnknown_082303E8
gUnknown_082303E8:
    .incbin "graphics/talk_location_choices/002303E8.4bpp"

    .global gUnknown_08230BE8
gUnknown_08230BE8:
    .incbin "graphics/talk_location_choices/00230BE8.4bpp"

    .global gUnknown_082313E8
gUnknown_082313E8:
    .incbin "graphics/talk_location_choices/002313E8.4bpp"

@ END TALK LOCATION CHOICES

    .global gUnknown_08231BE8
gUnknown_08231BE8:
    .incbin "graphics/map_markers/palette.gbapal"

    .global gUnknown_08231C08
gUnknown_08231C08:
    .incbin "graphics/map_markers/killer.4bpp"

    .global gUnknown_08231C88
gUnknown_08231C88:
    .incbin "graphics/map_markers/victim.4bpp"

    .global gUnknown_08231D08
gUnknown_08231D08:
    .incbin "graphics/map_markers/green.4bpp"

    .global gUnknown_08231D88
gUnknown_08231D88:
    .incbin "baserom.gba", 0x00231D88, 0x720

    .global gUnknown_082324A8
gUnknown_082324A8:
    .incbin "graphics/map_markers/case3_main_gate.4bpp"

    .global gUnknown_082325A8
gUnknown_082325A8:
    .incbin "graphics/map_markers/green.4bpp"

    .global gUnknown_08232628
gUnknown_08232628:
    .incbin "graphics/map_markers/case4_boat_horizontal.4bpp"

    .global gUnknown_08232668
gUnknown_08232668:
    .incbin "graphics/map_markers/case4_boat_rental_shop.4bpp"

    .global gUnknown_08232868
gUnknown_08232868:
    .incbin "graphics/map_markers/case4_lotta_suv.4bpp"

    .global gUnknown_08232968
gUnknown_08232968:
    .incbin "graphics/map_markers/case4_boat_vertical.4bpp"

    .global gUnknown_082329A8
gUnknown_082329A8:
    .incbin "graphics/striped_images/capcom_screen.4bpp.striped"

    .global gUnknown_08233674
gUnknown_08233674:
    .incbin "baserom.gba", 0x00233674, 0x2340

    .global gUnknown_082359B4
gUnknown_082359B4:
    .incbin "graphics/striped_images/capcom_screen_bw.4bpp.striped"

    .global gUnknown_0823663C
gUnknown_0823663C:
    .incbin "graphics/striped_images/backgrounds/court/defendant_lobby.8bpp.striped"
    
    .global gUnknown_0823B3E0
gUnknown_0823B3E0:
    .incbin "baserom.gba", 0x0023B3E0, 0x1C778

    .global gUnknown_08257B58
gUnknown_08257B58:
    .incbin "graphics/striped_images/backgrounds/gavel/1.8bpp.striped"

    .global gUnknown_0825A8F0
gUnknown_0825A8F0:
    .incbin "graphics/striped_images/backgrounds/gavel/2.8bpp.striped"

    .global gUnknown_0825E078
gUnknown_0825E078:
    .incbin "graphics/striped_images/backgrounds/gavel/3.8bpp.striped"

    .global gUnknown_08263FD4
gUnknown_08263FD4:
    .incbin "graphics/bustup_phoenix.gbapal"

    .global gUnknown_08263FF4
gUnknown_08263FF4:
    .incbin "graphics/bustup_phoenix.bin"

    .global gUnknown_082644A4
gUnknown_082644A4:
    .incbin "graphics/bustup_phoenix.4bpp"

    .global gUnknown_08265CC4
gUnknown_08265CC4:
    .incbin "graphics/bustup_edgeworth.gbapal"

    .global gUnknown_08265CE4
gUnknown_08265CE4:
    .incbin "graphics/bustup_edgeworth.bin"

    .global gUnknown_08266194
gUnknown_08266194:
    .incbin "graphics/bustup_edgeworth.4bpp"

    .global gUnknown_08267F34
gUnknown_08267F34:
    .incbin "graphics/striped_images/speedlines.4bpp.striped"

    .global gUnknown_08268DE0
gUnknown_08268DE0:
    .incbin "baserom.gba", 0x00268DE0, 0x3748

    .global gUnknown_0826C528
gUnknown_0826C528:
    .incbin "graphics/striped_images/backgrounds/wright_co_law_offices_day.8bpp.striped"

    .global gUnknown_08271C44
gUnknown_08271C44:
    .incbin "graphics/striped_images/police_station_lobby.8bpp.striped"

    .global gUnknown_08277A98
gUnknown_08277A98:
    .incbin "baserom.gba", 0x00277A98, 0x20

    .global gUnknown_08277AB8
gUnknown_08277AB8:
    .incbin "baserom.gba", 0x00277AB8, 0x1F6138

    .global gUnknown_0846DBF0
gUnknown_0846DBF0:
    .incbin "graphics/striped_images/backgrounds/steel_samurai.8bpp.striped"

    .global gUnknown_0847384C
gUnknown_0847384C:
    .incbin "baserom.gba", 0x0047384C, 0x43EC

    .global gUnknown_08477C38
gUnknown_08477C38:
    .incbin "baserom.gba", 0x00477C38, 0x738

    .global gUnknown_08478370
gUnknown_08478370:
    .incbin "baserom.gba", 0x00478370, 0x88

    .global gUnknown_084783F8
gUnknown_084783F8:
    .incbin "baserom.gba", 0x004783F8, 0x64

    .global gUnknown_0847845C
gUnknown_0847845C:
    .incbin "graphics/speedlines_first_and_last_columns.4bpp"

    .global gUnknown_08478BDC
gUnknown_08478BDC:
    .incbin "baserom.gba", 0x00478BDC, 0x266700

    .global gUnknown_086DF2DC
gUnknown_086DF2DC:
    .incbin "baserom.gba", 0x006DF2DC, 0x4

    .global gUnknown_086DF2E0
gUnknown_086DF2E0:
    .incbin "baserom.gba", 0x006DF2E0, 0xA578

    .global gUnknown_086E9858
gUnknown_086E9858:
    .incbin "baserom.gba", 0x006E9858, 0x304

    .global gUnknown_086E9B5C
gUnknown_086E9B5C:
    .incbin "baserom.gba", 0x006E9B5C, 0x1D04

    .global gUnknown_086EB860
gUnknown_086EB860:
    .incbin "baserom.gba", 0x006EB860, 0x41924

    .global gUnknown_0872D184
gUnknown_0872D184:
    .incbin "baserom.gba", 0x0072D184, 0x3968

    .global std_scripts
std_scripts:
    .incbin "baserom.gba", 0x00730AEC, 0xCF514

