    .section gfx_data, "aw", %progbits
    .include "asm/macros.inc"

    .global gUnknown_08130000
gUnknown_08130000:
    .incbin "graphics/title_screen.gbapal"

    .global gUnknown_08130200
gUnknown_08130200:
    .incbin "graphics/title_screen.8bpp.lz"

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
    .incbin "graphics/ui/message_box/13791C.4bpp"

    .global gUnknown_0813891C
gUnknown_0813891C:
    .incbin "graphics/ui/message_box/nametags.4bpp"

    .global gUnknown_0813D91C
gUnknown_0813D91C:
    .incbin "graphics/detention_center_bottom_tiles.4bpp"

    .global gUnknown_0813D97C
gUnknown_0813D97C:
    .incbin "graphics/ui/left_right_arrows.4bpp"

    .global gUnknown_0813DC7C
gUnknown_0813DC7C:
    .incbin "graphics/13DC7C.4bpp"

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
    .incbin "graphics/witness_bench_1.4bpp"

    .global gUnknown_081460FC
gUnknown_081460FC:
    .incbin "graphics/witness_bench_2.4bpp"

    .global gUnknown_081462FC
gUnknown_081462FC:
    .incbin "graphics/counsel_bench_1.4bpp"

    .global gUnknown_081466FC
gUnknown_081466FC:
    .incbin "graphics/counsel_bench_2.4bpp"

    .global gUnknown_08146AFC
gUnknown_08146AFC:
    .incbin "graphics/counsel_bench_3.4bpp"

    .global gUnknown_08146EFC
gUnknown_08146EFC:
    .incbin "graphics/counsel_bench_4.4bpp"

    .global gUnknown_08146FFC
gUnknown_08146FFC:
    .incbin "graphics/ui/investigation/stop_button.4bpp"

    .global gUnknown_081471FC
gUnknown_081471FC:
    .incbin "graphics/ui/investigation/psyche_lock.4bpp"

    .global gUnknown_081473FC
gUnknown_081473FC:
    .incbin "graphics/ui/healthbar_frame_1.4bpp"

    .global gUnknown_0814747C
gUnknown_0814747C:
    .incbin "graphics/ui/healthbar_frame_2.4bpp"

    .global gUnknown_0814757C
gUnknown_0814757C:
    .incbin "graphics/ui/healthbar_frame_3.4bpp"

    .global gUnknown_081475FC
gUnknown_081475FC:
    .incbin "graphics/ui/healthbar_progress.4bpp"

    .global gUnknown_0814777C
gUnknown_0814777C:
    .incbin "graphics/psyche_lock_chain_tileset.4bpp.lz"


    .global gUnknown_081489E8
gUnknown_081489E8:
    .incbin "graphics/psyche_lock_chain_animation_01.bin.lz"


    .global gUnknown_08148C20
gUnknown_08148C20:
    .incbin "graphics/psyche_lock_chain_animation_02.bin.lz"


    .global gUnknown_08149010
gUnknown_08149010:
    .incbin "graphics/psyche_lock_chain_animation_03.bin.lz"


    .global gUnknown_08149444
gUnknown_08149444:
    .incbin "graphics/psyche_lock_chain_animation_04.bin.lz"


    .global gUnknown_08149AB0
gUnknown_08149AB0:
    .incbin "graphics/psyche_lock_chain_animation_05.bin.lz"


    .global gUnknown_0814A224
gUnknown_0814A224:
    .incbin "graphics/psyche_lock_chain_animation_06.bin.lz"


    .global gUnknown_0814A3A8
gUnknown_0814A3A8:
    .incbin "graphics/psyche_lock_chain_animation_07.bin.lz"


    .global gUnknown_0814A610
gUnknown_0814A610:
    .incbin "graphics/psyche_lock_chain_animation_08.bin.lz"


    .global gUnknown_0814AA70
gUnknown_0814AA70:
    .incbin "graphics/psyche_lock_chain_animation_09.bin.lz"


    .global gUnknown_0814AED0
gUnknown_0814AED0:
    .incbin "graphics/psyche_lock_chain_animation_10.bin.lz"


    .global gUnknown_0814B6E4
gUnknown_0814B6E4:
    .incbin "graphics/psyche_lock_chain_animation_11.bin.lz"


    .global gUnknown_0814B944
gUnknown_0814B944:
    .incbin "graphics/psyche_lock_chain_animation_12.bin.lz"


    .global gUnknown_0814BCE4
gUnknown_0814BCE4:
    .incbin "graphics/psyche_lock_chain_animation_13.bin.lz"


    .global gUnknown_0814C094
gUnknown_0814C094:
    .incbin "graphics/psyche_lock_chain_animation_14.bin.lz"


    .global gUnknown_0814C58C
gUnknown_0814C58C:
    .incbin "graphics/psyche_lock_chain_animation_15.bin.lz"


    .global gUnknown_0814CAA0
gUnknown_0814CAA0:
    .incbin "graphics/psyche_lock_chain_animation_16.bin.lz"


    .global gUnknown_0814CC38
gUnknown_0814CC38:
    .incbin "graphics/psyche_lock_chain_animation_17.bin.lz"


    .global gUnknown_0814CEE4
gUnknown_0814CEE4:
    .incbin "graphics/psyche_lock_chain_animation_18.bin.lz"


    .global gUnknown_0814D218
gUnknown_0814D218:
    .incbin "graphics/psyche_lock_chain_animation_19.bin.lz"


    .global gUnknown_0814D5A4
gUnknown_0814D5A4:
    .incbin "graphics/psyche_lock_chain_animation_20.bin.lz"

    .global gUnknown_0814DA60
gUnknown_0814DA60:
    .incbin "graphics/unk_14DA60.gbapal"

    .global gUnknown_0814DA80
gUnknown_0814DA80:
    .incbin "graphics/unk_14DA80.gbapal"

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
    .incbin "graphics/unk_14E060.gbapal"

    .global gUnknown_0814E0E0
gUnknown_0814E0E0:
    .incbin "graphics/witness_bench.gbapal"

    .global gUnknown_0814E100
gUnknown_0814E100:
    .incbin "graphics/counsel_bench.gbapal"

    .global gUnknown_0814E120
gUnknown_0814E120:
    .incbin "graphics/case1_opening_purple_cloud_palettes.gbapal"

    .global gUnknown_0814E320
gUnknown_0814E320:
    .incbin "graphics/ui/investigation/psyche_lock.gbapal"

    .global gUnknown_0814E340
gUnknown_0814E340:
    .incbin "graphics/ui/healthbar_frame.gbapal"

    .global gUnknown_0814E360
gUnknown_0814E360:
    .incbin "graphics/ui/healthbar_progress_1.gbapal"

    .global gUnknown_0814E380
gUnknown_0814E380:
    .incbin "graphics/ui/healthbar_progress_2.gbapal"

    .global gUnknown_0814E3A0
gUnknown_0814E3A0:
    .incbin "graphics/ui/healthbar_progress_3.gbapal"

    .global gUnknown_0814E3C0
gUnknown_0814E3C0:
    .incbin "graphics/ui/healthbar_progress_4.gbapal"

    .global gUnknown_0814E3E0
gUnknown_0814E3E0:
    .incbin "graphics/ui/healthbar_progress_5.gbapal"

    .global gUnknown_0814E400
gUnknown_0814E400:
    .incbin "graphics/ui/healthbar_progress_6.gbapal"

    .global gUnknown_0814E420
gUnknown_0814E420:
    .incbin "graphics/ui/healthbar_progress_7.gbapal"

    .global gUnknown_0814E440
gUnknown_0814E440:
    .incbin "graphics/ui/healthbar_progress_8.gbapal"

    .global gUnknown_0814E460
gUnknown_0814E460:
    .incbin "graphics/episode_select_options.4bpp.lz"

    .global gUnknown_0814F0C4
gUnknown_0814F0C4:
    .incbin "graphics/from_save_or_beginning_options.4bpp"

    .global gUnknown_081500C4
gUnknown_081500C4:
    .incbin "graphics/save_yes_no.4bpp"

@ BEGIN EVIDENCE PROFILE DESCRIPTIONS

    .global gUnknown_081508C4
gUnknown_081508C4:
    .incbin "graphics/evidence_profile_descriptions/1508C4.4bpp.lz"


    .global gUnknown_08150CCC
gUnknown_08150CCC:
    .incbin "graphics/evidence_profile_descriptions/150CCC.4bpp.lz"


    .global gUnknown_08151104
gUnknown_08151104:
    .incbin "graphics/evidence_profile_descriptions/151104.4bpp.lz"


    .global gUnknown_08151568
gUnknown_08151568:
    .incbin "graphics/evidence_profile_descriptions/151568.4bpp.lz"


    .global gUnknown_081519B8
gUnknown_081519B8:
    .incbin "graphics/evidence_profile_descriptions/1519B8.4bpp.lz"


    .global gUnknown_08151D54
gUnknown_08151D54:
    .incbin "graphics/evidence_profile_descriptions/151D54.4bpp.lz"


    .global gUnknown_08152124
gUnknown_08152124:
    .incbin "graphics/evidence_profile_descriptions/152124.4bpp.lz"


    .global gUnknown_081524CC
gUnknown_081524CC:
    .incbin "graphics/evidence_profile_descriptions/1524CC.4bpp.lz"


    .global gUnknown_08152970
gUnknown_08152970:
    .incbin "graphics/evidence_profile_descriptions/152970.4bpp.lz"


    .global gUnknown_08152DBC
gUnknown_08152DBC:
    .incbin "graphics/evidence_profile_descriptions/152DBC.4bpp.lz"


    .global gUnknown_081531C8
gUnknown_081531C8:
    .incbin "graphics/evidence_profile_descriptions/1531C8.4bpp.lz"


    .global gUnknown_081535F8
gUnknown_081535F8:
    .incbin "graphics/evidence_profile_descriptions/1535F8.4bpp.lz"


    .global gUnknown_081539C8
gUnknown_081539C8:
    .incbin "graphics/evidence_profile_descriptions/1539C8.4bpp.lz"


    .global gUnknown_08153DE8
gUnknown_08153DE8:
    .incbin "graphics/evidence_profile_descriptions/153DE8.4bpp.lz"


    .global gUnknown_0815421C
gUnknown_0815421C:
    .incbin "graphics/evidence_profile_descriptions/15421C.4bpp.lz"


    .global gUnknown_0815464C
gUnknown_0815464C:
    .incbin "graphics/evidence_profile_descriptions/15464C.4bpp.lz"


    .global gUnknown_08154AD0
gUnknown_08154AD0:
    .incbin "graphics/evidence_profile_descriptions/154AD0.4bpp.lz"


    .global gUnknown_08154F20
gUnknown_08154F20:
    .incbin "graphics/evidence_profile_descriptions/154F20.4bpp.lz"


    .global gUnknown_0815523C
gUnknown_0815523C:
    .incbin "graphics/evidence_profile_descriptions/15523C.4bpp.lz"


    .global gUnknown_0815566C
gUnknown_0815566C:
    .incbin "graphics/evidence_profile_descriptions/15566C.4bpp.lz"


    .global gUnknown_08155AE4
gUnknown_08155AE4:
    .incbin "graphics/evidence_profile_descriptions/155AE4.4bpp.lz"


    .global gUnknown_08155FBC
gUnknown_08155FBC:
    .incbin "graphics/evidence_profile_descriptions/155FBC.4bpp.lz"


    .global gUnknown_081563D0
gUnknown_081563D0:
    .incbin "graphics/evidence_profile_descriptions/1563D0.4bpp.lz"


    .global gUnknown_0815680C
gUnknown_0815680C:
    .incbin "graphics/evidence_profile_descriptions/15680C.4bpp.lz"


    .global gUnknown_08156C20
gUnknown_08156C20:
    .incbin "graphics/evidence_profile_descriptions/156C20.4bpp.lz"


    .global gUnknown_081570B8
gUnknown_081570B8:
    .incbin "graphics/evidence_profile_descriptions/1570B8.4bpp.lz"


    .global gUnknown_08157500
gUnknown_08157500:
    .incbin "graphics/evidence_profile_descriptions/157500.4bpp.lz"


    .global gUnknown_08157904
gUnknown_08157904:
    .incbin "graphics/evidence_profile_descriptions/157904.4bpp.lz"


    .global gUnknown_08157D08
gUnknown_08157D08:
    .incbin "graphics/evidence_profile_descriptions/157D08.4bpp.lz"


    .global gUnknown_08158134
gUnknown_08158134:
    .incbin "graphics/evidence_profile_descriptions/158134.4bpp.lz"


    .global gUnknown_081585C4
gUnknown_081585C4:
    .incbin "graphics/evidence_profile_descriptions/1585C4.4bpp.lz"


    .global gUnknown_081589AC
gUnknown_081589AC:
    .incbin "graphics/evidence_profile_descriptions/1589AC.4bpp.lz"


    .global gUnknown_08158E10
gUnknown_08158E10:
    .incbin "graphics/evidence_profile_descriptions/158E10.4bpp.lz"


    .global gUnknown_08159200
gUnknown_08159200:
    .incbin "graphics/evidence_profile_descriptions/159200.4bpp.lz"


    .global gUnknown_0815965C
gUnknown_0815965C:
    .incbin "graphics/evidence_profile_descriptions/15965C.4bpp.lz"


    .global gUnknown_08159AA4
gUnknown_08159AA4:
    .incbin "graphics/evidence_profile_descriptions/159AA4.4bpp.lz"


    .global gUnknown_08159EEC
gUnknown_08159EEC:
    .incbin "graphics/evidence_profile_descriptions/159EEC.4bpp.lz"


    .global gUnknown_0815A350
gUnknown_0815A350:
    .incbin "graphics/evidence_profile_descriptions/15A350.4bpp.lz"


    .global gUnknown_0815A7F4
gUnknown_0815A7F4:
    .incbin "graphics/evidence_profile_descriptions/15A7F4.4bpp.lz"


    .global gUnknown_0815ACC8
gUnknown_0815ACC8:
    .incbin "graphics/evidence_profile_descriptions/15ACC8.4bpp.lz"


    .global gUnknown_0815B100
gUnknown_0815B100:
    .incbin "graphics/evidence_profile_descriptions/15B100.4bpp.lz"


    .global gUnknown_0815B5CC
gUnknown_0815B5CC:
    .incbin "graphics/evidence_profile_descriptions/15B5CC.4bpp.lz"


    .global gUnknown_0815B9F0
gUnknown_0815B9F0:
    .incbin "graphics/evidence_profile_descriptions/15B9F0.4bpp.lz"


    .global gUnknown_0815BDE0
gUnknown_0815BDE0:
    .incbin "graphics/evidence_profile_descriptions/15BDE0.4bpp.lz"


    .global gUnknown_0815C1C0
gUnknown_0815C1C0:
    .incbin "graphics/evidence_profile_descriptions/15C1C0.4bpp.lz"


    .global gUnknown_0815C590
gUnknown_0815C590:
    .incbin "graphics/evidence_profile_descriptions/15C590.4bpp.lz"


    .global gUnknown_0815C9A0
gUnknown_0815C9A0:
    .incbin "graphics/evidence_profile_descriptions/15C9A0.4bpp.lz"


    .global gUnknown_0815CE18
gUnknown_0815CE18:
    .incbin "graphics/evidence_profile_descriptions/15CE18.4bpp.lz"


    .global gUnknown_0815D230
gUnknown_0815D230:
    .incbin "graphics/evidence_profile_descriptions/15D230.4bpp.lz"


    .global gUnknown_0815D668
gUnknown_0815D668:
    .incbin "graphics/evidence_profile_descriptions/15D668.4bpp.lz"


    .global gUnknown_0815DA90
gUnknown_0815DA90:
    .incbin "graphics/evidence_profile_descriptions/15DA90.4bpp.lz"


    .global gUnknown_0815DEB4
gUnknown_0815DEB4:
    .incbin "graphics/evidence_profile_descriptions/15DEB4.4bpp.lz"


    .global gUnknown_0815E2E4
gUnknown_0815E2E4:
    .incbin "graphics/evidence_profile_descriptions/15E2E4.4bpp.lz"


    .global gUnknown_0815E73C
gUnknown_0815E73C:
    .incbin "graphics/evidence_profile_descriptions/15E73C.4bpp.lz"


    .global gUnknown_0815EB38
gUnknown_0815EB38:
    .incbin "graphics/evidence_profile_descriptions/15EB38.4bpp.lz"


    .global gUnknown_0815EFC0
gUnknown_0815EFC0:
    .incbin "graphics/evidence_profile_descriptions/15EFC0.4bpp.lz"


    .global gUnknown_0815F3CC
gUnknown_0815F3CC:
    .incbin "graphics/evidence_profile_descriptions/15F3CC.4bpp.lz"


    .global gUnknown_0815F7C8
gUnknown_0815F7C8:
    .incbin "graphics/evidence_profile_descriptions/15F7C8.4bpp.lz"


    .global gUnknown_0815FBC4
gUnknown_0815FBC4:
    .incbin "graphics/evidence_profile_descriptions/15FBC4.4bpp.lz"


    .global gUnknown_0816000C
gUnknown_0816000C:
    .incbin "graphics/evidence_profile_descriptions/16000C.4bpp.lz"


    .global gUnknown_08160318
gUnknown_08160318:
    .incbin "graphics/evidence_profile_descriptions/160318.4bpp.lz"


    .global gUnknown_08160758
gUnknown_08160758:
    .incbin "graphics/evidence_profile_descriptions/160758.4bpp.lz"


    .global gUnknown_08160B6C
gUnknown_08160B6C:
    .incbin "graphics/evidence_profile_descriptions/160B6C.4bpp.lz"


    .global gUnknown_08160F68
gUnknown_08160F68:
    .incbin "graphics/evidence_profile_descriptions/160F68.4bpp.lz"


    .global gUnknown_08161378
gUnknown_08161378:
    .incbin "graphics/evidence_profile_descriptions/161378.4bpp.lz"


    .global gUnknown_08161764
gUnknown_08161764:
    .incbin "graphics/evidence_profile_descriptions/161764.4bpp.lz"


    .global gUnknown_08161B40
gUnknown_08161B40:
    .incbin "graphics/evidence_profile_descriptions/161B40.4bpp.lz"


    .global gUnknown_08161EF8
gUnknown_08161EF8:
    .incbin "graphics/evidence_profile_descriptions/161EF8.4bpp.lz"


    .global gUnknown_081622C4
gUnknown_081622C4:
    .incbin "graphics/evidence_profile_descriptions/1622C4.4bpp.lz"


    .global gUnknown_0816264C
gUnknown_0816264C:
    .incbin "graphics/evidence_profile_descriptions/16264C.4bpp.lz"


    .global gUnknown_08162A54
gUnknown_08162A54:
    .incbin "graphics/evidence_profile_descriptions/162A54.4bpp.lz"


    .global gUnknown_08162E54
gUnknown_08162E54:
    .incbin "graphics/evidence_profile_descriptions/162E54.4bpp.lz"


    .global gUnknown_08163274
gUnknown_08163274:
    .incbin "graphics/evidence_profile_descriptions/163274.4bpp.lz"


    .global gUnknown_0816365C
gUnknown_0816365C:
    .incbin "graphics/evidence_profile_descriptions/16365C.4bpp.lz"


    .global gUnknown_08163A80
gUnknown_08163A80:
    .incbin "graphics/evidence_profile_descriptions/163A80.4bpp.lz"


    .global gUnknown_08163EB8
gUnknown_08163EB8:
    .incbin "graphics/evidence_profile_descriptions/163EB8.4bpp.lz"


    .global gUnknown_081642BC
gUnknown_081642BC:
    .incbin "graphics/evidence_profile_descriptions/1642BC.4bpp.lz"


    .global gUnknown_08164670
gUnknown_08164670:
    .incbin "graphics/evidence_profile_descriptions/164670.4bpp.lz"


    .global gUnknown_08164A14
gUnknown_08164A14:
    .incbin "graphics/evidence_profile_descriptions/164A14.4bpp.lz"


    .global gUnknown_08164DD4
gUnknown_08164DD4:
    .incbin "graphics/evidence_profile_descriptions/164DD4.4bpp.lz"


    .global gUnknown_08165280
gUnknown_08165280:
    .incbin "graphics/evidence_profile_descriptions/165280.4bpp.lz"


    .global gUnknown_08165670
gUnknown_08165670:
    .incbin "graphics/evidence_profile_descriptions/165670.4bpp.lz"


    .global gUnknown_08165AA0
gUnknown_08165AA0:
    .incbin "graphics/evidence_profile_descriptions/165AA0.4bpp.lz"


    .global gUnknown_08165EA4
gUnknown_08165EA4:
    .incbin "graphics/evidence_profile_descriptions/165EA4.4bpp.lz"


    .global gUnknown_081662C0
gUnknown_081662C0:
    .incbin "graphics/evidence_profile_descriptions/1662C0.4bpp.lz"


    .global gUnknown_0816670C
gUnknown_0816670C:
    .incbin "graphics/evidence_profile_descriptions/16670C.4bpp.lz"


    .global gUnknown_08166B4C
gUnknown_08166B4C:
    .incbin "graphics/evidence_profile_descriptions/166B4C.4bpp.lz"


    .global gUnknown_08166F74
gUnknown_08166F74:
    .incbin "graphics/evidence_profile_descriptions/166F74.4bpp.lz"


    .global gUnknown_08167370
gUnknown_08167370:
    .incbin "graphics/evidence_profile_descriptions/167370.4bpp.lz"


    .global gUnknown_0816777C
gUnknown_0816777C:
    .incbin "graphics/evidence_profile_descriptions/16777C.4bpp.lz"


    .global gUnknown_08167B98
gUnknown_08167B98:
    .incbin "graphics/evidence_profile_descriptions/167B98.4bpp.lz"


    .global gUnknown_08167F64
gUnknown_08167F64:
    .incbin "graphics/evidence_profile_descriptions/167F64.4bpp.lz"


    .global gUnknown_08168378
gUnknown_08168378:
    .incbin "graphics/evidence_profile_descriptions/168378.4bpp.lz"


    .global gUnknown_08168650
gUnknown_08168650:
    .incbin "graphics/evidence_profile_descriptions/168650.4bpp.lz"


    .global gUnknown_08168994
gUnknown_08168994:
    .incbin "graphics/evidence_profile_descriptions/168994.4bpp.lz"


    .global gUnknown_08168C6C
gUnknown_08168C6C:
    .incbin "graphics/evidence_profile_descriptions/168C6C.4bpp.lz"


    .global gUnknown_08168F38
gUnknown_08168F38:
    .incbin "graphics/evidence_profile_descriptions/168F38.4bpp.lz"


    .global gUnknown_08169228
gUnknown_08169228:
    .incbin "graphics/evidence_profile_descriptions/169228.4bpp.lz"


    .global gUnknown_08169504
gUnknown_08169504:
    .incbin "graphics/evidence_profile_descriptions/169504.4bpp.lz"


    .global gUnknown_081698E4
gUnknown_081698E4:
    .incbin "graphics/evidence_profile_descriptions/1698E4.4bpp.lz"


    .global gUnknown_08169CC8
gUnknown_08169CC8:
    .incbin "graphics/evidence_profile_descriptions/169CC8.4bpp.lz"


    .global gUnknown_0816A0C0
gUnknown_0816A0C0:
    .incbin "graphics/evidence_profile_descriptions/16A0C0.4bpp.lz"


    .global gUnknown_0816A528
gUnknown_0816A528:
    .incbin "graphics/evidence_profile_descriptions/16A528.4bpp.lz"


    .global gUnknown_0816A92C
gUnknown_0816A92C:
    .incbin "graphics/evidence_profile_descriptions/16A92C.4bpp.lz"


    .global gUnknown_0816AD64
gUnknown_0816AD64:
    .incbin "graphics/evidence_profile_descriptions/16AD64.4bpp.lz"


    .global gUnknown_0816B188
gUnknown_0816B188:
    .incbin "graphics/evidence_profile_descriptions/16B188.4bpp.lz"


    .global gUnknown_0816B5E4
gUnknown_0816B5E4:
    .incbin "graphics/evidence_profile_descriptions/16B5E4.4bpp.lz"


    .global gUnknown_0816BA60
gUnknown_0816BA60:
    .incbin "graphics/evidence_profile_descriptions/16BA60.4bpp.lz"


    .global gUnknown_0816BEC8
gUnknown_0816BEC8:
    .incbin "graphics/evidence_profile_descriptions/16BEC8.4bpp.lz"


    .global gUnknown_0816C304
gUnknown_0816C304:
    .incbin "graphics/evidence_profile_descriptions/16C304.4bpp.lz"


    .global gUnknown_0816C748
gUnknown_0816C748:
    .incbin "graphics/evidence_profile_descriptions/16C748.4bpp.lz"


    .global gUnknown_0816CB90
gUnknown_0816CB90:
    .incbin "graphics/evidence_profile_descriptions/16CB90.4bpp.lz"


    .global gUnknown_0816CF80
gUnknown_0816CF80:
    .incbin "graphics/evidence_profile_descriptions/16CF80.4bpp.lz"


    .global gUnknown_0816D35C
gUnknown_0816D35C:
    .incbin "graphics/evidence_profile_descriptions/16D35C.4bpp.lz"


    .global gUnknown_0816D774
gUnknown_0816D774:
    .incbin "graphics/evidence_profile_descriptions/16D774.4bpp.lz"


    .global gUnknown_0816DB84
gUnknown_0816DB84:
    .incbin "graphics/evidence_profile_descriptions/16DB84.4bpp.lz"


    .global gUnknown_0816DFC4
gUnknown_0816DFC4:
    .incbin "graphics/evidence_profile_descriptions/16DFC4.4bpp.lz"


    .global gUnknown_0816E3E8
gUnknown_0816E3E8:
    .incbin "graphics/evidence_profile_descriptions/16E3E8.4bpp.lz"


    .global gUnknown_0816E810
gUnknown_0816E810:
    .incbin "graphics/evidence_profile_descriptions/16E810.4bpp.lz"


    .global gUnknown_0816EC1C
gUnknown_0816EC1C:
    .incbin "graphics/evidence_profile_descriptions/16EC1C.4bpp.lz"


    .global gUnknown_0816F0A4
gUnknown_0816F0A4:
    .incbin "graphics/evidence_profile_descriptions/16F0A4.4bpp.lz"


    .global gUnknown_0816F4FC
gUnknown_0816F4FC:
    .incbin "graphics/evidence_profile_descriptions/16F4FC.4bpp.lz"


    .global gUnknown_0816F998
gUnknown_0816F998:
    .incbin "graphics/evidence_profile_descriptions/16F998.4bpp.lz"


    .global gUnknown_0816FE30
gUnknown_0816FE30:
    .incbin "graphics/evidence_profile_descriptions/16FE30.4bpp.lz"


    .global gUnknown_08170210
gUnknown_08170210:
    .incbin "graphics/evidence_profile_descriptions/170210.4bpp.lz"


    .global gUnknown_08170678
gUnknown_08170678:
    .incbin "graphics/evidence_profile_descriptions/170678.4bpp.lz"


    .global gUnknown_08170B20
gUnknown_08170B20:
    .incbin "graphics/evidence_profile_descriptions/170B20.4bpp.lz"


    .global gUnknown_08170F70
gUnknown_08170F70:
    .incbin "graphics/evidence_profile_descriptions/170F70.4bpp.lz"


    .global gUnknown_081713B4
gUnknown_081713B4:
    .incbin "graphics/evidence_profile_descriptions/1713B4.4bpp.lz"


    .global gUnknown_081717BC
gUnknown_081717BC:
    .incbin "graphics/evidence_profile_descriptions/1717BC.4bpp.lz"


    .global gUnknown_08171BC4
gUnknown_08171BC4:
    .incbin "graphics/evidence_profile_descriptions/171BC4.4bpp.lz"


    .global gUnknown_08172060
gUnknown_08172060:
    .incbin "graphics/evidence_profile_descriptions/172060.4bpp.lz"


    .global gUnknown_08172478
gUnknown_08172478:
    .incbin "graphics/evidence_profile_descriptions/172478.4bpp.lz"


    .global gUnknown_0817288C
gUnknown_0817288C:
    .incbin "graphics/evidence_profile_descriptions/17288C.4bpp.lz"


    .global gUnknown_08172D00
gUnknown_08172D00:
    .incbin "graphics/evidence_profile_descriptions/172D00.4bpp.lz"


    .global gUnknown_0817311C
gUnknown_0817311C:
    .incbin "graphics/evidence_profile_descriptions/17311C.4bpp.lz"


    .global gUnknown_08173544
gUnknown_08173544:
    .incbin "graphics/evidence_profile_descriptions/173544.4bpp.lz"


    .global gUnknown_0817399C
gUnknown_0817399C:
    .incbin "graphics/evidence_profile_descriptions/17399C.4bpp.lz"


    .global gUnknown_08173DE8
gUnknown_08173DE8:
    .incbin "graphics/evidence_profile_descriptions/173DE8.4bpp.lz"


    .global gUnknown_081740C8
gUnknown_081740C8:
    .incbin "graphics/evidence_profile_descriptions/1740C8.4bpp.lz"


    .global gUnknown_081743A0
gUnknown_081743A0:
    .incbin "graphics/evidence_profile_descriptions/1743A0.4bpp.lz"


    .global gUnknown_081747CC
gUnknown_081747CC:
    .incbin "graphics/evidence_profile_descriptions/1747CC.4bpp.lz"


    .global gUnknown_08174AA8
gUnknown_08174AA8:
    .incbin "graphics/evidence_profile_descriptions/174AA8.4bpp.lz"


    .global gUnknown_08174D74
gUnknown_08174D74:
    .incbin "graphics/evidence_profile_descriptions/174D74.4bpp.lz"


    .global gUnknown_08175034
gUnknown_08175034:
    .incbin "graphics/evidence_profile_descriptions/175034.4bpp.lz"


    .global gUnknown_08175484
gUnknown_08175484:
    .incbin "graphics/evidence_profile_descriptions/175484.4bpp.lz"


    .global gUnknown_081758CC
gUnknown_081758CC:
    .incbin "graphics/evidence_profile_descriptions/1758CC.4bpp.lz"


    .global gUnknown_08175CD4
gUnknown_08175CD4:
    .incbin "graphics/evidence_profile_descriptions/175CD4.4bpp.lz"


    .global gUnknown_081760F0
gUnknown_081760F0:
    .incbin "graphics/evidence_profile_descriptions/1760F0.4bpp.lz"


    .global gUnknown_0817651C
gUnknown_0817651C:
    .incbin "graphics/evidence_profile_descriptions/17651C.4bpp.lz"


    .global gUnknown_08176920
gUnknown_08176920:
    .incbin "graphics/evidence_profile_descriptions/176920.4bpp.lz"


    .global gUnknown_08176CF0
gUnknown_08176CF0:
    .incbin "graphics/evidence_profile_descriptions/176CF0.4bpp.lz"


    .global gUnknown_0817701C
gUnknown_0817701C:
    .incbin "graphics/evidence_profile_descriptions/17701C.4bpp.lz"


    .global gUnknown_081772D4
gUnknown_081772D4:
    .incbin "graphics/evidence_profile_descriptions/1772D4.4bpp.lz"


    .global gUnknown_081775FC
gUnknown_081775FC:
    .incbin "graphics/evidence_profile_descriptions/1775FC.4bpp.lz"


    .global gUnknown_081779E4
gUnknown_081779E4:
    .incbin "graphics/evidence_profile_descriptions/1779E4.4bpp.lz"

@ END EVIDENCE PROFILE DESCRIPTIONS

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
    .incbin "graphics/map_markers/double_door_diagram.4bpp"

    .global gUnknown_08232188
gUnknown_08232188:
    .incbin "graphics/map_markers/folding_screen.4bpp"

    .global gUnknown_08232488
gUnknown_08232488:
    .incbin "graphics/map_markers/red_dot.4bpp"

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
    .incbin "graphics/striped_images/233674.4bpp.striped"


    .global gUnknown_082359B4
gUnknown_082359B4:
    .incbin "graphics/striped_images/capcom_screen_bw.4bpp.striped"

    .global gUnknown_0823663C
gUnknown_0823663C:
    .incbin "graphics/striped_images/backgrounds/court/defendant_lobby.8bpp.striped"
    
    .global gUnknown_0823B3E0
gUnknown_0823B3E0:
    .incbin "graphics/striped_images/23B3E0.4bpp.striped"


    .global gUnknown_0823CF88
gUnknown_0823CF88:
    .incbin "graphics/striped_images/23CF88.4bpp.striped"


    .global gUnknown_0823E98C
gUnknown_0823E98C:
    .incbin "graphics/striped_images/23E98C.4bpp.striped"


    .global gUnknown_08240624
gUnknown_08240624:
    .incbin "graphics/striped_images/240624.8bpp.striped"


    .global gUnknown_08246B24
gUnknown_08246B24:
    .incbin "graphics/striped_images/246B24.8bpp.striped"


    .global gUnknown_0824C990
gUnknown_0824C990:
    .incbin "graphics/striped_images/24C990.8bpp.striped"


    .global gUnknown_082540C0
gUnknown_082540C0:
    .incbin "graphics/striped_images/2540C0.4bpp.striped"

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
    .incbin "graphics/striped_images/268DE0.8bpp.striped"

    .global gUnknown_0826C528
gUnknown_0826C528:
    .incbin "graphics/striped_images/backgrounds/wright_co_law_offices_day.8bpp.striped"

    .global gUnknown_08271C44
gUnknown_08271C44:
    .incbin "graphics/striped_images/police_station_lobby.8bpp.striped"

    .global gUnknown_08277A98
gUnknown_08277A98:
    .incbin "graphics/bustup_franziska.gbapal"

    .global gUnknown_08277AB8
gUnknown_08277AB8:
    .incbin "graphics/bustup_franziska.bin"

    .global gUnknown_08277F68
gUnknown_08277F68:
    .incbin "graphics/bustup_franziska.4bpp"

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    .global gUnknown_08279388
gUnknown_08279388:
    .incbin "graphics/striped_images/279388.4bpp.striped"


    .global gUnknown_0827C8EC
gUnknown_0827C8EC:
    .incbin "graphics/striped_images/27C8EC.4bpp.striped"


    .global gUnknown_0827FBA8
gUnknown_0827FBA8:
    .incbin "graphics/striped_images/27FBA8.4bpp.striped"


    .global gUnknown_082837C8
gUnknown_082837C8:
    .incbin "graphics/striped_images/2837C8.4bpp.striped"


    .global gUnknown_08287938
gUnknown_08287938:
    .incbin "graphics/striped_images/287938.8bpp.striped"


    .global gUnknown_08292318
gUnknown_08292318:
    .incbin "graphics/striped_images/292318.4bpp.striped"


    .global gUnknown_08294658
gUnknown_08294658:
    .incbin "graphics/striped_images/294658.8bpp.striped"


    .global gUnknown_08298BA4
gUnknown_08298BA4:
    .incbin "graphics/striped_images/298BA4.8bpp.striped"


    .global gUnknown_0829F718
gUnknown_0829F718:
    .incbin "graphics/striped_images/29F718.8bpp.striped"


    .global gUnknown_082A8370
gUnknown_082A8370:
    .incbin "graphics/striped_images/2A8370.8bpp.striped"


    .global gUnknown_082B88D4
gUnknown_082B88D4:
    .incbin "graphics/striped_images/2B88D4.8bpp.striped"


    .global gUnknown_082C04A0
gUnknown_082C04A0:
    .incbin "graphics/striped_images/2C04A0.8bpp.striped"


    .global gUnknown_082C7CF0
gUnknown_082C7CF0:
    .incbin "graphics/striped_images/2C7CF0.8bpp.striped"


    .global gUnknown_082CF29C
gUnknown_082CF29C:
    .incbin "graphics/striped_images/2CF29C.8bpp.striped"


    .global gUnknown_082D5268
gUnknown_082D5268:
    .incbin "graphics/striped_images/2D5268.8bpp.striped"


    .global gUnknown_082DA994
gUnknown_082DA994:
    .incbin "graphics/striped_images/2DA994.8bpp.striped"


    .global gUnknown_082E5168
gUnknown_082E5168:
    .incbin "graphics/striped_images/2E5168.8bpp.striped"


    .global gUnknown_082EA99C
gUnknown_082EA99C:
    .incbin "graphics/striped_images/2EA99C.4bpp.striped"


    .global gUnknown_082EBA44
gUnknown_082EBA44:
    .incbin "graphics/striped_images/2EBA44.4bpp.striped"


    .global gUnknown_082EC9B4
gUnknown_082EC9B4:
    .incbin "graphics/striped_images/2EC9B4.4bpp.striped"


    .global gUnknown_082ED900
gUnknown_082ED900:
    .incbin "graphics/striped_images/2ED900.4bpp.striped"


    .global gUnknown_082EE868
gUnknown_082EE868:
    .incbin "graphics/striped_images/2EE868.4bpp.striped"


    .global gUnknown_082EF398
gUnknown_082EF398:
    .incbin "graphics/striped_images/2EF398.4bpp.striped"


    .global gUnknown_082F0288
gUnknown_082F0288:
    .incbin "graphics/striped_images/2F0288.4bpp.striped"

    .global gUnknown_082F13EC
gUnknown_082F13EC:
    .incbin "graphics/striped_images/2F13EC.4bpp.striped"


    .global gUnknown_082F4518
gUnknown_082F4518:
    .incbin "graphics/striped_images/2F4518.4bpp.striped"


    .global gUnknown_082F7A14
gUnknown_082F7A14:
    .incbin "graphics/striped_images/2F7A14.4bpp.striped"


    .global gUnknown_082FB9E4
gUnknown_082FB9E4:
    .incbin "graphics/striped_images/2FB9E4.4bpp.striped"


    .global gUnknown_082FD950
gUnknown_082FD950:
    .incbin "graphics/striped_images/2FD950.4bpp.striped"


    .global gUnknown_08300B30
gUnknown_08300B30:
    .incbin "graphics/striped_images/300B30.4bpp.striped"


    .global gUnknown_083040A8
gUnknown_083040A8:
    .incbin "graphics/striped_images/3040A8.8bpp.striped"


    .global gUnknown_0830948C
gUnknown_0830948C:
    .incbin "graphics/striped_images/30948C.4bpp.striped"


    .global gUnknown_0830C744
gUnknown_0830C744:
    .incbin "graphics/striped_images/30C744.8bpp.striped"


    .global gUnknown_083130D4
gUnknown_083130D4:
    .incbin "graphics/striped_images/3130D4.4bpp.striped"


    .global gUnknown_08316500
gUnknown_08316500:
    .incbin "graphics/striped_images/316500.4bpp.striped"


    .global gUnknown_083198CC
gUnknown_083198CC:
    .incbin "graphics/striped_images/3198CC.4bpp.striped"


    .global gUnknown_0831C908
gUnknown_0831C908:
    .incbin "graphics/striped_images/31C908.4bpp.striped"


    .global gUnknown_08320384
gUnknown_08320384:
    .incbin "graphics/striped_images/320384.8bpp.striped"


    .global gUnknown_0832587C
gUnknown_0832587C:
    .incbin "graphics/striped_images/32587C.8bpp.striped"


    .global gUnknown_0832D4A0
gUnknown_0832D4A0:
    .incbin "graphics/striped_images/32D4A0.8bpp.striped"


    .global gUnknown_08335060
gUnknown_08335060:
    .incbin "graphics/striped_images/335060.8bpp.striped"


    .global gUnknown_0833C13C
gUnknown_0833C13C:
    .incbin "graphics/striped_images/33C13C.8bpp.striped"


    .global gUnknown_08342954
gUnknown_08342954:
    .incbin "graphics/striped_images/342954.8bpp.striped"


    .global gUnknown_083497D4
gUnknown_083497D4:
    .incbin "graphics/striped_images/3497D4.8bpp.striped"


    .global gUnknown_0834FAAC
gUnknown_0834FAAC:
    .incbin "graphics/striped_images/34FAAC.8bpp.striped"


    .global gUnknown_08356EB0
gUnknown_08356EB0:
    .incbin "graphics/striped_images/356EB0.8bpp.striped"


    .global gUnknown_0835D154
gUnknown_0835D154:
    .incbin "graphics/striped_images/35D154.4bpp.striped"


    .global gUnknown_08362700
gUnknown_08362700:
    .incbin "graphics/striped_images/362700.4bpp.striped"


    .global gUnknown_08367768
gUnknown_08367768:
    .incbin "graphics/striped_images/367768.8bpp.striped"


    .global gUnknown_08376EA8
gUnknown_08376EA8:
    .incbin "graphics/striped_images/376EA8.8bpp.striped"


    .global gUnknown_0837C934
gUnknown_0837C934:
    .incbin "graphics/striped_images/37C934.4bpp.striped"


    .global gUnknown_0837D6D8
gUnknown_0837D6D8:
    .incbin "graphics/striped_images/37D6D8.8bpp.striped"


    .global gUnknown_0838309C
gUnknown_0838309C:
    .incbin "graphics/striped_images/38309C.8bpp.striped"


    .global gUnknown_083899B0
gUnknown_083899B0:
    .incbin "graphics/striped_images/3899B0.4bpp.striped"


    .global gUnknown_0838D548
gUnknown_0838D548:
    .incbin "graphics/striped_images/38D548.4bpp.striped"


    .global gUnknown_0838EB18
gUnknown_0838EB18:
    .incbin "graphics/striped_images/38EB18.4bpp.striped"


    .global gUnknown_08391440
gUnknown_08391440:
    .incbin "graphics/striped_images/391440.4bpp.striped"


    .global gUnknown_08393C98
gUnknown_08393C98:
    .incbin "graphics/striped_images/393C98.4bpp.striped"


    .global gUnknown_08395F30
gUnknown_08395F30:
    .incbin "graphics/striped_images/395F30.4bpp.striped"


    .global gUnknown_08398878
gUnknown_08398878:
    .incbin "graphics/striped_images/398878.4bpp.striped"


    .global gUnknown_0839DE10
gUnknown_0839DE10:
    .incbin "graphics/striped_images/39DE10.4bpp.striped"


    .global gUnknown_083A1590
gUnknown_083A1590:
    .incbin "graphics/striped_images/3A1590.4bpp.striped"


    .global gUnknown_083A42C4
gUnknown_083A42C4:
    .incbin "graphics/striped_images/3A42C4.8bpp.striped"


    .global gUnknown_083A9384
gUnknown_083A9384:
    .incbin "graphics/striped_images/3A9384.4bpp.striped"


    .global gUnknown_083AD43C
gUnknown_083AD43C:
    .incbin "graphics/striped_images/3AD43C.4bpp.striped"


    .global gUnknown_083B1104
gUnknown_083B1104:
    .incbin "graphics/striped_images/3B1104.4bpp.striped"


    .global gUnknown_083B3140
gUnknown_083B3140:
    .incbin "graphics/striped_images/3B3140.8bpp.striped"


    .global gUnknown_083BBCB0
gUnknown_083BBCB0:
    .incbin "graphics/striped_images/3BBCB0.8bpp.striped"


    .global gUnknown_083C49C0
gUnknown_083C49C0:
    .incbin "graphics/striped_images/3C49C0.8bpp.striped"


    .global gUnknown_083CC6F8
gUnknown_083CC6F8:
    .incbin "graphics/striped_images/3CC6F8.8bpp.striped"


    .global gUnknown_083D414C
gUnknown_083D414C:
    .incbin "graphics/striped_images/3D414C.8bpp.striped"


    .global gUnknown_083E23A8
gUnknown_083E23A8:
    .incbin "graphics/striped_images/3E23A8.4bpp.striped"


    .global gUnknown_083E3490
gUnknown_083E3490:
    .incbin "graphics/striped_images/3E3490.8bpp.striped"


    .global gUnknown_083EBD14
gUnknown_083EBD14:
    .incbin "graphics/striped_images/3EBD14.8bpp.striped"


    .global gUnknown_083F3DA8
gUnknown_083F3DA8:
    .incbin "graphics/striped_images/3F3DA8.8bpp.striped"


    .global gUnknown_083FA848
gUnknown_083FA848:
    .incbin "graphics/striped_images/3FA848.8bpp.striped"


    .global gUnknown_08401E1C
gUnknown_08401E1C:
    .incbin "graphics/striped_images/401E1C.8bpp.striped"


    .global gUnknown_0840EE18
gUnknown_0840EE18:
    .incbin "graphics/striped_images/40EE18.4bpp.striped"


    .global gUnknown_0841101C
gUnknown_0841101C:
    .incbin "graphics/striped_images/41101C.8bpp.striped"


    .global gUnknown_08417880
gUnknown_08417880:
    .incbin "graphics/striped_images/417880.8bpp.striped"


    .global gUnknown_0841DE18
gUnknown_0841DE18:
    .incbin "graphics/striped_images/41DE18.8bpp.striped"


    .global gUnknown_08425334
gUnknown_08425334:
    .incbin "graphics/striped_images/425334.8bpp.striped"


    .global gUnknown_0842C52C
gUnknown_0842C52C:
    .incbin "graphics/striped_images/42C52C.4bpp.striped"


    .global gUnknown_0842F748
gUnknown_0842F748:
    .incbin "graphics/striped_images/42F748.4bpp.striped"


    .global gUnknown_084308EC
gUnknown_084308EC:
    .incbin "graphics/striped_images/4308EC.4bpp.striped"


    .global gUnknown_0843414C
gUnknown_0843414C:
    .incbin "graphics/striped_images/43414C.8bpp.striped"


    .global gUnknown_0843B428
gUnknown_0843B428:
    .incbin "graphics/striped_images/43B428.4bpp.striped"


    .global gUnknown_0843E438
gUnknown_0843E438:
    .incbin "graphics/striped_images/43E438.4bpp.striped"


    .global gUnknown_08441C50
gUnknown_08441C50:
    .incbin "graphics/striped_images/441C50.4bpp.striped"


    .global gUnknown_08444EF8
gUnknown_08444EF8:
    .incbin "graphics/striped_images/444EF8.4bpp.striped"


    .global gUnknown_084478B0
gUnknown_084478B0:
    .incbin "graphics/striped_images/4478B0.4bpp.striped"


    .global gUnknown_0844DE14
gUnknown_0844DE14:
    .incbin "graphics/striped_images/44DE14.4bpp.striped"


    .global gUnknown_08451F68
gUnknown_08451F68:
    .incbin "graphics/striped_images/451F68.8bpp.striped"


    .global gUnknown_08458A38
gUnknown_08458A38:
    .incbin "graphics/striped_images/458A38.4bpp.striped"


    .global gUnknown_0845BDB0
gUnknown_0845BDB0:
    .incbin "graphics/striped_images/45BDB0.8bpp.striped"


    .global gUnknown_08462D6C
gUnknown_08462D6C:
    .incbin "graphics/striped_images/462D6C.8bpp.striped"


    .global gUnknown_0846531C
gUnknown_0846531C:
    .incbin "graphics/striped_images/46531C.4bpp.striped"


    .global gUnknown_08468FD0
gUnknown_08468FD0:
    .incbin "graphics/striped_images/468FD0.4bpp.striped"


    .global gUnknown_0846CAF0
gUnknown_0846CAF0:
    .incbin "graphics/striped_images/46CAF0.4bpp.striped"

    .global gUnknown_0846DBF0
gUnknown_0846DBF0:
    .incbin "graphics/striped_images/backgrounds/steel_samurai.8bpp.striped"

    .global gUnknown_0847384C
gUnknown_0847384C:
    .incbin "graphics/striped_images/47384C.4bpp.striped"


    .global gUnknown_084746CC
gUnknown_084746CC:
    .incbin "graphics/striped_images/4746CC.4bpp.striped"

    .global gUnknown_08477C38
gUnknown_08477C38:
    .incbin "graphics/nickel_samurai_case3_op_zoomin.8bpp.lz"

    .global gUnknown_08478370
gUnknown_08478370:
    .incbin "graphics/nickel_samurai_case3_op_zoomin.bin.lz"

    .global gUnknown_084783F8
gUnknown_084783F8:
    .incbin "graphics/nickel_samurai_case3_op_zoomin.gbapal.lz"

    .global gUnknown_0847845C
gUnknown_0847845C:
    .incbin "graphics/speedlines_first_and_last_columns.4bpp"

    .global gUnknown_08478BDC
gUnknown_08478BDC:
    .incbin "graphics/court_scrolls/court_scroll.gbapal"


    .global gUnknown_08478BFC
gUnknown_08478BFC:
    .incbin "graphics/court_scrolls/court_scroll.4bpp"


    .global gUnknown_08491BFC
gUnknown_08491BFC:
    .incbin "graphics/animations/characters/animation01.pix"


    .global gUnknown_084AB9C0
gUnknown_084AB9C0:
    .incbin "graphics/animations/characters/animation01.seq"


    .global gUnknown_084AF048
gUnknown_084AF048:
    .incbin "graphics/animations/characters/animation02.pix"


    .global gUnknown_084C9ABC
gUnknown_084C9ABC:
    .incbin "graphics/animations/characters/animation02.seq"


    .global gUnknown_084CE560
gUnknown_084CE560:
    .incbin "graphics/animations/characters/animation03.pix"


    .global gUnknown_084D8C1C
gUnknown_084D8C1C:
    .incbin "graphics/animations/characters/animation03.seq"


    .global gUnknown_084DB2C8
gUnknown_084DB2C8:
    .incbin "graphics/animations/characters/animation04.pix"


    .global gUnknown_084DDA24
gUnknown_084DDA24:
    .incbin "graphics/animations/characters/animation04.seq"


    .global gUnknown_084DDC94
gUnknown_084DDC94:
    .incbin "graphics/animations/characters/animation05.pix"


    .global gUnknown_084E2514
gUnknown_084E2514:
    .incbin "graphics/animations/characters/animation05.seq"


    .global gUnknown_084E32A8
gUnknown_084E32A8:
    .incbin "graphics/animations/characters/animation06.pix"


    .global gUnknown_085039C0
gUnknown_085039C0:
    .incbin "graphics/animations/characters/animation06.seq"


    .global gUnknown_08509834
gUnknown_08509834:
    .incbin "graphics/animations/characters/animation07.pix"


    .global gUnknown_0851EE0C
gUnknown_0851EE0C:
    .incbin "graphics/animations/characters/animation07.seq"


    .global gUnknown_08522654
gUnknown_08522654:
    .incbin "graphics/animations/characters/animation08.pix"


    .global gUnknown_08547F34
gUnknown_08547F34:
    .incbin "graphics/animations/characters/animation08.seq"


    .global gUnknown_0854BB84
gUnknown_0854BB84:
    .incbin "graphics/animations/characters/animation09.pix"


    .global gUnknown_08558750
gUnknown_08558750:
    .incbin "graphics/animations/characters/animation09.seq"


    .global gUnknown_0855A0A8
gUnknown_0855A0A8:
    .incbin "graphics/animations/characters/animation10.pix"


    .global gUnknown_08560B7C
gUnknown_08560B7C:
    .incbin "graphics/animations/characters/animation10.seq"


    .global gUnknown_085615D4
gUnknown_085615D4:
    .incbin "graphics/animations/characters/animation11.pix"


    .global gUnknown_08565B00
gUnknown_08565B00:
    .incbin "graphics/animations/characters/animation11.seq"


    .global gUnknown_08565EAC
gUnknown_08565EAC:
    .incbin "graphics/animations/characters/animation12.pix"


    .global gUnknown_08589338
gUnknown_08589338:
    .incbin "graphics/animations/characters/animation12.seq"


    .global gUnknown_0858D9C8
gUnknown_0858D9C8:
    .incbin "graphics/animations/characters/animation13.pix"


    .global gUnknown_085A8FB8
gUnknown_085A8FB8:
    .incbin "graphics/animations/characters/animation13.seq"


    .global gUnknown_085AB9D4
gUnknown_085AB9D4:
    .incbin "graphics/animations/characters/animation14.pix"


    .global gUnknown_085B9DFC
gUnknown_085B9DFC:
    .incbin "graphics/animations/characters/animation14.seq"


    .global gUnknown_085BCBD0
gUnknown_085BCBD0:
    .incbin "graphics/animations/characters/animation15.pix"


    .global gUnknown_085C90E4
gUnknown_085C90E4:
    .incbin "graphics/animations/characters/animation15.seq"


    .global gUnknown_085CA858
gUnknown_085CA858:
    .incbin "graphics/animations/characters/animation16.pix"


    .global gUnknown_085D8B08
gUnknown_085D8B08:
    .incbin "graphics/animations/characters/animation16.seq"


    .global gUnknown_085DA150
gUnknown_085DA150:
    .incbin "graphics/animations/characters/animation17.pix"


    .global gUnknown_085E6A7C
gUnknown_085E6A7C:
    .incbin "graphics/animations/characters/animation17.seq"


    .global gUnknown_085E7AC8
gUnknown_085E7AC8:
    .incbin "graphics/animations/characters/animation18.pix"


    .global gUnknown_085F0DFC
gUnknown_085F0DFC:
    .incbin "graphics/animations/characters/animation18.seq"


    .global gUnknown_085F26B4
gUnknown_085F26B4:
    .incbin "graphics/animations/characters/animation19.pix"


    .global gUnknown_086030D4
gUnknown_086030D4:
    .incbin "graphics/animations/characters/animation19.seq"


    .global gUnknown_0860756C
gUnknown_0860756C:
    .incbin "graphics/animations/characters/animation20.pix"


    .global gUnknown_08617DCC
gUnknown_08617DCC:
    .incbin "graphics/animations/characters/animation20.seq"


    .global gUnknown_0861B3B8
gUnknown_0861B3B8:
    .incbin "graphics/animations/characters/animation21.pix"


    .global gUnknown_08627F28
gUnknown_08627F28:
    .incbin "graphics/animations/characters/animation21.seq"


    .global gUnknown_0862E164
gUnknown_0862E164:
    .incbin "graphics/animations/characters/animation22.pix"


    .global gUnknown_08643078
gUnknown_08643078:
    .incbin "graphics/animations/characters/animation22.seq"


    .global gUnknown_0864685C
gUnknown_0864685C:
    .incbin "graphics/animations/characters/animation23.pix"


    .global gUnknown_0865343C
gUnknown_0865343C:
    .incbin "graphics/animations/characters/animation23.seq"


    .global gUnknown_0865649C
gUnknown_0865649C:
    .incbin "graphics/animations/characters/animation24.pix"


    .global gUnknown_086786DC
gUnknown_086786DC:
    .incbin "graphics/animations/characters/animation24.seq"


    .global gUnknown_086800E8
gUnknown_086800E8:
    .incbin "graphics/animations/characters/animation25.pix"


    .global gUnknown_086949D0
gUnknown_086949D0:
    .incbin "graphics/animations/characters/animation25.seq"


    .global gUnknown_086993BC
gUnknown_086993BC:
    .incbin "graphics/animations/characters/animation26.pix"


    .global gUnknown_0869DE1C
gUnknown_0869DE1C:
    .incbin "graphics/animations/characters/animation26.seq"


    .global gUnknown_0869E36C
gUnknown_0869E36C:
    .incbin "graphics/animations/characters/animation27.pix"


    .global gUnknown_086AC8D8
gUnknown_086AC8D8:
    .incbin "graphics/animations/characters/animation27.seq"


    .global gUnknown_086AEF54
gUnknown_086AEF54:
    .incbin "graphics/animations/characters/animation28.pix"


    .global gUnknown_086BEC0C
gUnknown_086BEC0C:
    .incbin "graphics/animations/characters/animation28.seq"


    .global gUnknown_086C0428
gUnknown_086C0428:
    .incbin "graphics/animations/characters/animation29.pix"


    .global gUnknown_086CCE38
gUnknown_086CCE38:
    .incbin "graphics/animations/characters/animation29.seq"


    .global gUnknown_086CEB28
gUnknown_086CEB28:
    .incbin "graphics/animations/characters/animation30.pix"


    .global gUnknown_086D0A74
gUnknown_086D0A74:
    .incbin "graphics/animations/characters/animation30.seq"


    .global gUnknown_086D0CA4
gUnknown_086D0CA4:
    .incbin "graphics/animations/characters/animation31.pix"


    .global gUnknown_086D3000
gUnknown_086D3000:
    .incbin "graphics/animations/characters/animation31.seq"


    .global gUnknown_086D32A4
gUnknown_086D32A4:
    .incbin "graphics/animations/characters/animation32.pix"


    .global gUnknown_086D82BC
gUnknown_086D82BC:
    .incbin "graphics/animations/characters/animation32.seq"


    .global gUnknown_086D9D44
gUnknown_086D9D44:
    .incbin "graphics/animations/characters/animation33.pix"


    .global gUnknown_086DC8C4
gUnknown_086DC8C4:
    .incbin "graphics/animations/characters/animation33.seq"


    .global gUnknown_086DCAF4
gUnknown_086DCAF4:
    .incbin "graphics/animations/characters/animation34.pix"


    .global gUnknown_086DDE7C
gUnknown_086DDE7C:
    .incbin "graphics/animations/characters/animation34.seq"


    .global gUnknown_086DDEE0
gUnknown_086DDEE0:
    .incbin "graphics/animations/characters/animation35.pix"


    .global gUnknown_086DF280
gUnknown_086DF280:
    .incbin "graphics/animations/characters/animation35.seq"


    .global gUnknown_086DF2DC
gUnknown_086DF2DC:
    .incbin "graphics/animations/tileset01.pix"


    .global gUnknown_086E9858
gUnknown_086E9858:
    .incbin "graphics/animations/animation01.seq"


    .global gUnknown_086E987C
gUnknown_086E987C:
    .incbin "graphics/animations/animation02.seq"


    .global gUnknown_086E989C
gUnknown_086E989C:
    .incbin "graphics/animations/animation03.seq"


    .global gUnknown_086E98C0
gUnknown_086E98C0:
    .incbin "graphics/animations/animation04.seq"


    .global gUnknown_086E98E0
gUnknown_086E98E0:
    .incbin "graphics/animations/animation05.seq"


    .global gUnknown_086E9904
gUnknown_086E9904:
    .incbin "graphics/animations/animation06.seq"


    .global gUnknown_086E99A4
gUnknown_086E99A4:
    .incbin "graphics/animations/animation07.seq"


    .global gUnknown_086E9A5C
gUnknown_086E9A5C:
    .incbin "graphics/animations/animation08.seq"


    .global gUnknown_086E9AE4
gUnknown_086E9AE4:
    .incbin "graphics/animations/animation09.seq"


    .global gUnknown_086E9B5C
gUnknown_086E9B5C:
    .incbin "graphics/animations/animation10.seq"


    .global gUnknown_086E9C84
gUnknown_086E9C84:
    .incbin "graphics/animations/animation11.seq"


    .global gUnknown_086E9D8C
gUnknown_086E9D8C:
    .incbin "graphics/animations/animation12.seq"


    .global gUnknown_086E9F3C
gUnknown_086E9F3C:
    .incbin "graphics/animations/animation13.seq"


    .global gUnknown_086EA01C
gUnknown_086EA01C:
    .incbin "graphics/animations/animation14.seq"


    .global gUnknown_086EA0F8
gUnknown_086EA0F8:
    .incbin "graphics/animations/animation15.seq"


    .global gUnknown_086EA3C0
gUnknown_086EA3C0:
    .incbin "graphics/animations/animation16.seq"


    .global gUnknown_086EA6F8
gUnknown_086EA6F8:
    .incbin "graphics/animations/animation17.seq"


    .global gUnknown_086EA868
gUnknown_086EA868:
    .incbin "graphics/animations/animation18.seq"


    .global gUnknown_086EAA58
gUnknown_086EAA58:
    .incbin "graphics/animations/animation19.seq"


    .global gUnknown_086EADD0
gUnknown_086EADD0:
    .incbin "graphics/animations/animation20.seq"


    .global gUnknown_086EB16C
gUnknown_086EB16C:
    .incbin "graphics/animations/animation21.seq"


    .global gUnknown_086EB520
gUnknown_086EB520:
    .incbin "graphics/animations/animation22.seq"


    .global gUnknown_086EB540
gUnknown_086EB540:
    .incbin "graphics/animations/animation23.seq"


    .global gUnknown_086EB560
gUnknown_086EB560:
    .incbin "graphics/animations/animation24.seq"


    .global gUnknown_086EB580
gUnknown_086EB580:
    .incbin "graphics/animations/animation25.seq"


    .global gUnknown_086EB5A4
gUnknown_086EB5A4:
    .incbin "graphics/animations/animation26.seq"


    .global gUnknown_086EB5C8
gUnknown_086EB5C8:
    .incbin "graphics/animations/animation27.seq"


    .global gUnknown_086EB5E8
gUnknown_086EB5E8:
    .incbin "graphics/animations/animation28.seq"


    .global gUnknown_086EB608
gUnknown_086EB608:
    .incbin "graphics/animations/animation29.seq"


    .global gUnknown_086EB640
gUnknown_086EB640:
    .incbin "graphics/animations/animation30.seq"


    .global gUnknown_086EB66C
gUnknown_086EB66C:
    .incbin "graphics/animations/animation31.seq"


    .global gUnknown_086EB6C4
gUnknown_086EB6C4:
    .incbin "graphics/animations/animation32.seq"


    .global gUnknown_086EB72C
gUnknown_086EB72C:
    .incbin "graphics/animations/animation33.seq"


    .global gUnknown_086EB7BC
gUnknown_086EB7BC:
    .incbin "graphics/animations/animation34.seq"


    .global gUnknown_086EB860
gUnknown_086EB860:
    .incbin "graphics/animations/tileset02.pix"


    .global gUnknown_0872D184
gUnknown_0872D184:
    .incbin "graphics/animations/animation35.seq"


    .global gUnknown_0872D27C
gUnknown_0872D27C:
    .incbin "graphics/animations/animation36.seq"


    .global gUnknown_0872D3A4
gUnknown_0872D3A4:
    .incbin "graphics/animations/animation37.seq"


    .global gUnknown_0872D3C4
gUnknown_0872D3C4:
    .incbin "graphics/animations/animation38.seq"


    .global gUnknown_0872D3E4
gUnknown_0872D3E4:
    .incbin "graphics/animations/animation39.seq"


    .global gUnknown_0872D404
gUnknown_0872D404:
    .incbin "graphics/animations/animation40.seq"


    .global gUnknown_0872D424
gUnknown_0872D424:
    .incbin "graphics/animations/animation41.seq"


    .global gUnknown_0872D45C
gUnknown_0872D45C:
    .incbin "graphics/animations/animation42.seq"


    .global gUnknown_0872D494
gUnknown_0872D494:
    .incbin "graphics/animations/animation43.seq"


    .global gUnknown_0872D4CC
gUnknown_0872D4CC:
    .incbin "graphics/animations/animation44.seq"


    .global gUnknown_0872D4EC
gUnknown_0872D4EC:
    .incbin "graphics/animations/animation45.seq"


    .global gUnknown_0872D55C
gUnknown_0872D55C:
    .incbin "graphics/animations/animation46.seq"


    .global gUnknown_0872D74C
gUnknown_0872D74C:
    .incbin "graphics/animations/animation47.seq"


    .global gUnknown_0872D7DC
gUnknown_0872D7DC:
    .incbin "graphics/animations/animation48.seq"


    .global gUnknown_0872D914
gUnknown_0872D914:
    .incbin "graphics/animations/animation49.seq"


    .global gUnknown_0872D934
gUnknown_0872D934:
    .incbin "graphics/animations/animation50.seq"


    .global gUnknown_0872D954
gUnknown_0872D954:
    .incbin "graphics/animations/animation51.seq"


    .global gUnknown_0872DAB4
gUnknown_0872DAB4:
    .incbin "graphics/animations/animation52.seq"


    .global gUnknown_0872DCC8
gUnknown_0872DCC8:
    .incbin "graphics/animations/animation53.seq"


    .global gUnknown_0872DE7C
gUnknown_0872DE7C:
    .incbin "graphics/animations/animation54.seq"


    .global gUnknown_0872DEE8
gUnknown_0872DEE8:
    .incbin "graphics/animations/animation55.seq"


    .global gUnknown_0872E228
gUnknown_0872E228:
    .incbin "graphics/animations/animation56.seq"


    .global gUnknown_0872E2A4
gUnknown_0872E2A4:
    .incbin "graphics/animations/animation57.seq"


    .global gUnknown_0872E420
gUnknown_0872E420:
    .incbin "graphics/animations/animation58.seq"


    .global gUnknown_0872E5B0
gUnknown_0872E5B0:
    .incbin "graphics/animations/animation59.seq"


    .global gUnknown_0872E658
gUnknown_0872E658:
    .incbin "graphics/animations/animation60.seq"


    .global gUnknown_0872E82C
gUnknown_0872E82C:
    .incbin "graphics/animations/animation61.seq"


    .global gUnknown_0872E850
gUnknown_0872E850:
    .incbin "graphics/animations/animation62.seq"


    .global gUnknown_0872EAD8
gUnknown_0872EAD8:
    .incbin "graphics/animations/animation63.seq"


    .global gUnknown_0872EB48
gUnknown_0872EB48:
    .incbin "graphics/animations/animation64.seq"


    .global gUnknown_0872EB8C
gUnknown_0872EB8C:
    .incbin "graphics/animations/animation65.seq"


    .global gUnknown_0872EBF8
gUnknown_0872EBF8:
    .incbin "graphics/animations/animation66.seq"


    .global gUnknown_0872ED10
gUnknown_0872ED10:
    .incbin "graphics/animations/animation67.seq"


    .global gUnknown_0872EE64
gUnknown_0872EE64:
    .incbin "graphics/animations/animation68.seq"


    .global gUnknown_0872F164
gUnknown_0872F164:
    .incbin "graphics/animations/animation69.seq"


    .global gUnknown_0872F72C
gUnknown_0872F72C:
    .incbin "graphics/animations/animation70.seq"


    .global gUnknown_0872F86C
gUnknown_0872F86C:
    .incbin "graphics/animations/animation71.seq"


    .global gUnknown_0872F9F0
gUnknown_0872F9F0:
    .incbin "graphics/animations/animation72.seq"


    .global gUnknown_0872FB94
gUnknown_0872FB94:
    .incbin "graphics/animations/animation73.seq"


    .global gUnknown_0872FE68
gUnknown_0872FE68:
    .incbin "graphics/animations/animation74.seq"


    .global gUnknown_0872FF78
gUnknown_0872FF78:
    .incbin "graphics/animations/animation75.seq"


    .global gUnknown_08730088
gUnknown_08730088:
    .incbin "graphics/animations/animation76.seq"


    .global gUnknown_08730198
gUnknown_08730198:
    .incbin "graphics/animations/animation77.seq"


    .global gUnknown_087302A8
gUnknown_087302A8:
    .incbin "graphics/animations/animation78.seq"


    .global gUnknown_087302C8
gUnknown_087302C8:
    .incbin "graphics/animations/animation79.seq"


    .global gUnknown_087302E8
gUnknown_087302E8:
    .incbin "graphics/animations/animation80.seq"


    .global gUnknown_08730308
gUnknown_08730308:
    .incbin "graphics/animations/animation81.seq"


    .global gUnknown_08730328
gUnknown_08730328:
    .incbin "graphics/animations/animation82.seq"


    .global gUnknown_08730348
gUnknown_08730348:
    .incbin "graphics/animations/animation83.seq"


    .global gUnknown_08730368
gUnknown_08730368:
    .incbin "graphics/animations/animation84.seq"


    .global gUnknown_087305C4
gUnknown_087305C4:
    .incbin "graphics/animations/animation85.seq"


    .global gUnknown_08730600
gUnknown_08730600:
    .incbin "graphics/animations/animation86.seq"


    .global gUnknown_08730620
gUnknown_08730620:
    .incbin "graphics/animations/animation87.seq"


    .global gUnknown_08730650
gUnknown_08730650:
    .incbin "graphics/animations/animation88.seq"


    .global gUnknown_08730680
gUnknown_08730680:
    .incbin "graphics/animations/animation89.seq"


    .global gUnknown_087306A4
gUnknown_087306A4:
    .incbin "graphics/animations/animation90.seq"


    .global gUnknown_087306C8
gUnknown_087306C8:
    .incbin "graphics/animations/animation91.seq"


    .global gUnknown_08730700
gUnknown_08730700:
    .incbin "graphics/animations/animation92.seq"


    .global gUnknown_0873076C
gUnknown_0873076C:
    .incbin "graphics/animations/animation93.seq"


    .global gUnknown_087307D8
gUnknown_087307D8:
    .incbin "graphics/animations/animation94.seq"


    .global gUnknown_08730800
gUnknown_08730800:
    .incbin "graphics/animations/animation95.seq"


    .global gUnknown_08730824
gUnknown_08730824:
    .incbin "graphics/animations/animation96.seq"


    .global gUnknown_0873084C
gUnknown_0873084C:
    .incbin "graphics/animations/animation97.seq"


    .global gUnknown_08730870
gUnknown_08730870:
    .incbin "graphics/animations/animation98.seq"


    .global gUnknown_087308A0
gUnknown_087308A0:
    .incbin "graphics/animations/animation99.seq"


    .global gUnknown_087308C4
gUnknown_087308C4:
    .incbin "graphics/animations/animation100.seq"


    .global gUnknown_087308EC
gUnknown_087308EC:
    .incbin "graphics/animations/animation101.seq"


    .global gUnknown_08730910
gUnknown_08730910:
    .incbin "graphics/animations/animation102.seq"


    .global gUnknown_0873093C
gUnknown_0873093C:
    .incbin "graphics/animations/animation103.seq"


    .global gUnknown_08730980
gUnknown_08730980:
    .incbin "graphics/animations/animation104.seq"


    .global gUnknown_087309A4
gUnknown_087309A4:
    .incbin "graphics/animations/animation105.seq"


    .global gUnknown_087309D4
gUnknown_087309D4:
    .incbin "graphics/animations/animation106.seq"


    .global gUnknown_08730A00
gUnknown_08730A00:
    .incbin "graphics/animations/animation107.seq"


    .global gUnknown_08730A30
gUnknown_08730A30:
    .incbin "graphics/animations/animation108.seq"


    .global gUnknown_08730A54
gUnknown_08730A54:
    .incbin "graphics/animations/animation109.seq"


    .global gUnknown_08730A7C
gUnknown_08730A7C:
    .incbin "graphics/animations/animation110.seq"


    .global gUnknown_08730AA0
gUnknown_08730AA0:
    .incbin "graphics/animations/animation111.seq"


    .global gUnknown_08730AC8
gUnknown_08730AC8:
    .incbin "graphics/animations/tileset03.pix"



    .global std_scripts
std_scripts:
    .incbin "baserom.gba", 0x00730AEC, 0xCBA5C
