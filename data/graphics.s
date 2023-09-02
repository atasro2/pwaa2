    .section gfx_data, "aw", %progbits
    .include "asm/macros.inc"

    .global gGfxPalTitleScreen
gGfxPalTitleScreen:
    .incbin "graphics/title_screen.gbapal"

    .global gGfx8lzTitleScreen
gGfx8lzTitleScreen:
    .incbin "graphics/title_screen.8bpp.lz"

    .global gUnknown_081340E4
gUnknown_081340E4:
    .incbin "graphics/title_screen_demo.gbapal"

    .global gUnknown_081342E4
gUnknown_081342E4:
    .incbin "graphics/title_screen_demo.8bpp.lz"

    .global gUnusedAsciiCharSet
gUnusedAsciiCharSet:
    .incbin "graphics/unused_ascii_charset.4bpp"

    .global gGfxPalEvidenceProfileDesc
gGfxPalEvidenceProfileDesc:
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

    .global gGfx4bppTestimonyArrows
gGfx4bppTestimonyArrows:
    .incbin "graphics/ui/left_right_arrows.4bpp"

    .global gUnknown_0813DC7C
gUnknown_0813DC7C:
    .incbin "graphics/13DC7C.4bpp"

    .global gUnknown_0813E0FC
gUnknown_0813E0FC:
    .incbin "graphics/ui/trial/unused_testimony_characters.4bpp"

    .global gGfx4bppInvestigationActions
gGfx4bppInvestigationActions:
    .incbin "graphics/ui/investigation/action_buttons.4bpp"

    .global gGfx4bppControllerButtons
gGfx4bppControllerButtons:
    .incbin "graphics/ui/court_record/controller_buttons.4bpp"

    .global gGfx4bppInvestigationScrollButton
gGfx4bppInvestigationScrollButton:
    .incbin "graphics/ui/investigation/scroll_prompt.4bpp"

    .global gGfx4bppTestimonyTextTiles
gGfx4bppTestimonyTextTiles:
    .incbin "graphics/ui/trial/testimony_text_tiles.4bpp"

    .global gUnknown_08141CFC
gUnknown_08141CFC:
    .incbin "graphics/ui/trial/press_present_buttons.4bpp"

    .global gGfx4bppPresentBackTextTiles
gGfx4bppPresentBackTextTiles:
    .incbin "graphics/ui/court_record/present_back_text.4bpp"

    .global gGfx4bppProfileTextTiles
gGfx4bppProfileTextTiles:
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

    .global gGfxPalCrossExamUI
gGfxPalCrossExamUI:
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

    .global gGfxPalCourtRecordActionText
gGfxPalCourtRecordActionText:
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
    .incbin "graphics/ui/new_game_continue_1.gbapal"
    .incbin "graphics/ui/new_game_continue_2.gbapal"
    .incbin "graphics/ui/new_game_continue_3.gbapal"
    .incbin "graphics/ui/new_game_continue_4.gbapal"
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

    .global gGfxProfilesMaggeyByrde_description
gGfxProfilesMaggeyByrde_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/maggey_byrde.4bpp.lz"


    .global gGfxProfilesWinstonPayne_description
gGfxProfilesWinstonPayne_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/winston_payne.4bpp.lz"


    .global gGfxProfilesDickGumshoe_description
gGfxProfilesDickGumshoe_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/dick_gumshoe.4bpp.lz"


    .global gGfxProfilesDustinPrince_description
gGfxProfilesDustinPrince_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/dustin_prince.4bpp.lz"


    .global gGfxProfilesMayaFey0_description
gGfxProfilesMayaFey0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/maya_fey_0.4bpp.lz"


    .global gGfxEvidencePhoenixBadge_description
gGfxEvidencePhoenixBadge_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/phoenix_badge.4bpp.lz"


    .global gGfxEvidencePhoenixCellphone0_description
gGfxEvidencePhoenixCellphone0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/phoenix_cellphone_0.4bpp.lz"


    .global gGfxEvidenceGenericAutopsyReport0_description
gGfxEvidenceGenericAutopsyReport0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_autopsy_report_0.4bpp.lz"


    .global gGfxEvidenceGenericPhoto0_description
gGfxEvidenceGenericPhoto0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_0.4bpp.lz"


    .global gGfxEvidenceBrokenGlasses_description
gGfxEvidenceBrokenGlasses_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/broken_glasses.4bpp.lz"


    .global gGfxEvidenceGenericPhoto1_description
gGfxEvidenceGenericPhoto1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_1.4bpp.lz"


    .global gGfxEvidenceDustinsBaseballGlove_description
gGfxEvidenceDustinsBaseballGlove_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/dustins_baseball_glove.4bpp.lz"


    .global gGfxEvidenceGenericLetter0_description
gGfxEvidenceGenericLetter0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_letter_0.4bpp.lz"


    .global gGfxEvidenceGenericLetter1_description
gGfxEvidenceGenericLetter1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_letter_1.4bpp.lz"


    .global gGfxEvidencePhoenixCellphone1_description
gGfxEvidencePhoenixCellphone1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/phoenix_cellphone_1.4bpp.lz"


    .global gGfxEvidencePhoenixBusinessCard0_description
gGfxEvidencePhoenixBusinessCard0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/phoenix_business_card_0.4bpp.lz"


    .global gGfxEvidencePhoenixBusinessCard1_description
gGfxEvidencePhoenixBusinessCard1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/phoenix_business_card_1.4bpp.lz"


    .global gGfxEvidenceMayasCellphone_description
gGfxEvidenceMayasCellphone_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/mayas_cellphone.4bpp.lz"


    .global gGfxProfilesRichardWellington_description
gGfxProfilesRichardWellington_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/richard_wellington.4bpp.lz"


    .global gGfxProfilesTurnerGrey0_description
gGfxProfilesTurnerGrey0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/turner_grey_0.4bpp.lz"


    .global gGfxProfilesTurnerGrey1_description
gGfxProfilesTurnerGrey1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/turner_grey_1.4bpp.lz"


    .global gGfxProfilesPearlFey0_description
gGfxProfilesPearlFey0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/pearl_fey_0.4bpp.lz"


    .global gGfxProfilesPearlFey1_description
gGfxProfilesPearlFey1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/pearl_fey_1.4bpp.lz"


    .global gGfxProfilesMayaFey1_description
gGfxProfilesMayaFey1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/maya_fey_1.4bpp.lz"


    .global gGfxProfilesMayaFey2_description
gGfxProfilesMayaFey2_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/maya_fey_2.4bpp.lz"


    .global gGfxProfilesMiaFey_description
gGfxProfilesMiaFey_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/mia_fey.4bpp.lz"


    .global gGfxProfilesLottaHart0_description
gGfxProfilesLottaHart0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/lotta_hart_0.4bpp.lz"


    .global gGfxProfilesMorganFey0_description
gGfxProfilesMorganFey0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/morgan_fey_0.4bpp.lz"


    .global gGfxProfilesMorganFey1_description
gGfxProfilesMorganFey1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/morgan_fey_1.4bpp.lz"


    .global gGfxProfilesMimiMiney_description
gGfxProfilesMimiMiney_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/mimi_miney.4bpp.lz"


    .global gGfxProfilesIniMiney0_description
gGfxProfilesIniMiney0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/ini_miney_0.4bpp.lz"


    .global gGfxProfilesIniMiney1_description
gGfxProfilesIniMiney1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/ini_miney_1.4bpp.lz"


    .global gGfxProfilesFranziskaVonKarma0_description
gGfxProfilesFranziskaVonKarma0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/franziska_von_karma_0.4bpp.lz"


    .global gGfxProfilesAmiFey_description
gGfxProfilesAmiFey_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/ami_fey.4bpp.lz"


    .global gGfxProfilesDrHotti_description
gGfxProfilesDrHotti_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/dr_hotti.4bpp.lz"


    .global gGfxEvidenceGenericPhoto2_description
gGfxEvidenceGenericPhoto2_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_2.4bpp.lz"


    .global gGfxEvidenceGenericPhoto3_description
gGfxEvidenceGenericPhoto3_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_3.4bpp.lz"


    .global gGfxEvidenceGenericAutopsyReport1_description
gGfxEvidenceGenericAutopsyReport1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_autopsy_report_1.4bpp.lz"


    .global gGfxEvidenceGenericAutopsyReport2_description
gGfxEvidenceGenericAutopsyReport2_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_autopsy_report_2.4bpp.lz"


    .global gGfxEvidenceNewspaperArticle_description
gGfxEvidenceNewspaperArticle_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/newspaper_article.4bpp.lz"


    .global gGfxEvidenceGenericNewspaperClipping0_description
gGfxEvidenceGenericNewspaperClipping0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_newspaper_clipping_0.4bpp.lz"


    .global gGfxEvidenceGenericNewspaperClipping1_description
gGfxEvidenceGenericNewspaperClipping1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_newspaper_clipping_1.4bpp.lz"


    .global gGfxEvidenceMagatamaDischarged_description
gGfxEvidenceMagatamaDischarged_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/magatama_discharged.4bpp.lz"


    .global gGfxEvidenceMagatamaCharged_description
gGfxEvidenceMagatamaCharged_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/magatama_charged.4bpp.lz"


    .global gGfxEvidenceMeetingRoomScreen_description
gGfxEvidenceMeetingRoomScreen_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/meeting_room_screen.4bpp.lz"


    .global gGfxEvidenceMeetingRoomKey_description
gGfxEvidenceMeetingRoomKey_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/meeting_room_key.4bpp.lz"


    .global gGfxEvidenceGreysGun_description
gGfxEvidenceGreysGun_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/greys_gun.4bpp.lz"


    .global gGfxEvidenceMayasKnife_description
gGfxEvidenceMayasKnife_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/mayas_knife.4bpp.lz"


    .global gGfxEvidenceMayasRobe0_description
gGfxEvidenceMayasRobe0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/mayas_robe_0.4bpp.lz"


    .global gGfxEvidenceMayasRobe1_description
gGfxEvidenceMayasRobe1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/mayas_robe_1.4bpp.lz"


    .global gGfxEvidence001828C80_description
gGfxEvidence001828C80_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/001828C8_0.4bpp.lz"


    .global gGfxEvidence001828C81_description
gGfxEvidence001828C81_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/001828C8_1.4bpp.lz"


    .global gGfxEvidence001828C82_description
gGfxEvidence001828C82_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/001828C8_2.4bpp.lz"


    .global gGfxEvidenceKurainSacredUrn0_description
gGfxEvidenceKurainSacredUrn0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/kurain_sacred_urn_0.4bpp.lz"


    .global gGfxEvidenceKurainSacredUrn1_description
gGfxEvidenceKurainSacredUrn1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/kurain_sacred_urn_1.4bpp.lz"


    .global gGfxEvidenceSwatchFromMayasRobe_description
gGfxEvidenceSwatchFromMayasRobe_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/swatch_from_mayas_robe.4bpp.lz"


    .global gGfxEvidencePearlsBall_description
gGfxEvidencePearlsBall_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/pearls_ball.4bpp.lz"


    .global gGfxEvidenceLargeBox_description
gGfxEvidenceLargeBox_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/large_box.4bpp.lz"


    .global gGfxProfilesIniMiney2_description
gGfxProfilesIniMiney2_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/ini_miney_2.4bpp.lz"


    .global gGfxEvidenceNoteFromTheSafe0_description
gGfxEvidenceNoteFromTheSafe0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/note_from_the_safe_0.4bpp.lz"


    .global gGfxProfilesMayaFey3_description
gGfxProfilesMayaFey3_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/maya_fey_3.4bpp.lz"


    .global gGfxProfilesMaximillionGalactica_description
gGfxProfilesMaximillionGalactica_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/maximillion_galactica.4bpp.lz"


    .global gGfxProfilesFranziskaVonKarma1_description
gGfxProfilesFranziskaVonKarma1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/franziska_von_karma_1.4bpp.lz"


    .global gGfxProfilesRussellBerry_description
gGfxProfilesRussellBerry_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/russell_berry.4bpp.lz"


    .global gGfxProfilesReginaBerry_description
gGfxProfilesReginaBerry_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/regina_berry.4bpp.lz"


    .global gGfxProfilesBen0_description
gGfxProfilesBen0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/ben_0.4bpp.lz"


    .global gGfxProfilesBen1_description
gGfxProfilesBen1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/ben_1.4bpp.lz"


    .global gGfxProfilesMoe_description
gGfxProfilesMoe_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/moe.4bpp.lz"


    .global gGfxProfilesAcro0_description
gGfxProfilesAcro0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/acro_0.4bpp.lz"


    .global gGfxProfilesAcro1_description
gGfxProfilesAcro1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/acro_1.4bpp.lz"


    .global gGfxProfilesBat_description
gGfxProfilesBat_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/bat.4bpp.lz"


    .global gGfxEvidenceGenericPhoto4_description
gGfxEvidenceGenericPhoto4_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_4.4bpp.lz"


    .global gGfxEvidenceMaxSilkHat_description
gGfxEvidenceMaxSilkHat_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/max_silk_hat.4bpp.lz"


    .global gGfxEvidenceGenericPhoto5_description
gGfxEvidenceGenericPhoto5_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_5.4bpp.lz"


    .global gGfxEvidenceGenericLetter2_description
gGfxEvidenceGenericLetter2_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_letter_2.4bpp.lz"


    .global gGfxEvidenceMaxPoster_description
gGfxEvidenceMaxPoster_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/max_poster.4bpp.lz"


    .global gGfxEvidenceBrokenBottle_description
gGfxEvidenceBrokenBottle_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/broken_bottle.4bpp.lz"


    .global gGfxEvidenceTrilo_description
gGfxEvidenceTrilo_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/trilo.4bpp.lz"


    .global gGfxEvidenceMoney_description
gGfxEvidenceMoney_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/money.4bpp.lz"


    .global gGfxEvidenceGenericAutopsyReport3_description
gGfxEvidenceGenericAutopsyReport3_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_autopsy_report_3.4bpp.lz"


    .global gGfxEvidenceLargeChest_description
gGfxEvidenceLargeChest_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/large_chest.4bpp.lz"


    .global gGfxEvidencePepper_description
gGfxEvidencePepper_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/pepper.4bpp.lz"


    .global gGfxEvidenceEngagementRing_description
gGfxEvidenceEngagementRing_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/engagement_ring.4bpp.lz"


    .global gGfxEvidenceGenericPhoto6_description
gGfxEvidenceGenericPhoto6_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_6.4bpp.lz"


    .global gGfxEvidenceGenericPhoto7_description
gGfxEvidenceGenericPhoto7_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_7.4bpp.lz"


    .global gGfxEvidenceThreateningNoteTorn_description
gGfxEvidenceThreateningNoteTorn_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/threatening_note_torn.4bpp.lz"


    .global gGfxEvidenceThreateningNoteFull0_description
gGfxEvidenceThreateningNoteFull0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/threatening_note_full_0.4bpp.lz"


    .global gGfxEvidenceThreateningNoteFull1_description
gGfxEvidenceThreateningNoteFull1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/threatening_note_full_1.4bpp.lz"


    .global gGfxEvidenceThreateningNoteFull2_description
gGfxEvidenceThreateningNoteFull2_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/threatening_note_full_2.4bpp.lz"


    .global gGfxEvidenceLeon_description
gGfxEvidenceLeon_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/leon.4bpp.lz"


    .global gGfxEvidenceReginasWest_description
gGfxEvidenceReginasWest_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/reginas_west.4bpp.lz"


    .global gGfxEvidenceBloodyScarf_description
gGfxEvidenceBloodyScarf_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/bloody_scarf.4bpp.lz"


    .global gGfxEvidenceRegent_description
gGfxEvidenceRegent_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/regent.4bpp.lz"


    .global gGfxEvidenceThreateningNoteFull3_description
gGfxEvidenceThreateningNoteFull3_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/threatening_note_full_3.4bpp.lz"


    .global gGfxEvidenceMilk_description
gGfxEvidenceMilk_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/milk.4bpp.lz"


    .global gGfxEvidencePlayingCard_description
gGfxEvidencePlayingCard_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/playing_card.4bpp.lz"


    .global gGfxEvidencePlayingCards_description
gGfxEvidencePlayingCards_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/playing_cards.4bpp.lz"


    .global gGfxEvidenceMoesGrapes_description
gGfxEvidenceMoesGrapes_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/moes_grapes.4bpp.lz"


    .global gGfxProfilesWillPowers_description
gGfxProfilesWillPowers_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/will_powers.4bpp.lz"


    .global gGfxProfilesWendyOldbag_description
gGfxProfilesWendyOldbag_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/wendy_oldbag.4bpp.lz"


    .global gGfxProfilesLottaHart1_description
gGfxProfilesLottaHart1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/lotta_hart_1.4bpp.lz"


    .global gGfxProfilesJuanCorrida_description
gGfxProfilesJuanCorrida_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/juan_corrida.4bpp.lz"


    .global gGfxProfilesMattEngarde0_description
gGfxProfilesMattEngarde0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/matt_engarde_0.4bpp.lz"


    .global gGfxProfilesMattEngarde1_description
gGfxProfilesMattEngarde1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/matt_engarde_1.4bpp.lz"


    .global gGfxProfilesAdrianAndrews_description
gGfxProfilesAdrianAndrews_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/adrian_andrews.4bpp.lz"


    .global gGfxProfilesCelesteInpax0_description
gGfxProfilesCelesteInpax0_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/celeste_inpax_0.4bpp.lz"


    .global gGfxProfilesCelesteInpax1_description
gGfxProfilesCelesteInpax1_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/celeste_inpax_1.4bpp.lz"


    .global gGfxProfilesDisguisedShellyDeKiller_description
gGfxProfilesDisguisedShellyDeKiller_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/disguised_shelly_de_killer.4bpp.lz"


    .global gGfxProfilesShellyDeKiller_description
gGfxProfilesShellyDeKiller_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/shelly_de_killer.4bpp.lz"


    .global gGfxProfilesMilesEdgeworth_description
gGfxProfilesMilesEdgeworth_description:
    .incbin "graphics/evidence_profile_descriptions/profiles/miles_edgeworth.4bpp.lz"


    .global gGfxEvidenceAdmissionTicket_description
gGfxEvidenceAdmissionTicket_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/admission_ticket.4bpp.lz"


    .global gGfxEvidenceTransceiver0_description
gGfxEvidenceTransceiver0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/transceiver_0.4bpp.lz"


    .global gGfxEvidenceTransceiver1_description
gGfxEvidenceTransceiver1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/transceiver_1.4bpp.lz"


    .global gGfxEvidenceLottasCameraCase0_description
gGfxEvidenceLottasCameraCase0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/lottas_camera_case_0.4bpp.lz"


    .global gGfxEvidenceLottasCameraCase1_description
gGfxEvidenceLottasCameraCase1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/lottas_camera_case_1.4bpp.lz"


    .global gGfxEvidenceGenericPhoto8_description
gGfxEvidenceGenericPhoto8_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_8.4bpp.lz"


    .global gGfxEvidenceGuitarCase0_description
gGfxEvidenceGuitarCase0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/guitar_case_0.4bpp.lz"


    .global gGfxEvidenceGuitarCase1_description
gGfxEvidenceGuitarCase1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/guitar_case_1.4bpp.lz"


    .global gGfxEvidenceTomatoJuice0_description
gGfxEvidenceTomatoJuice0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/tomato_juice_0.4bpp.lz"


    .global gGfxEvidenceBloodyButton_description
gGfxEvidenceBloodyButton_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/bloody_button.4bpp.lz"


    .global gGfxEvidenceGenericPhoto9_description
gGfxEvidenceGenericPhoto9_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_9.4bpp.lz"


    .global gGfxEvidenceGenericEnvelope0_description
gGfxEvidenceGenericEnvelope0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_envelope_0.4bpp.lz"


    .global gGfxEvidenceGenericEnvelope1_description
gGfxEvidenceGenericEnvelope1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_envelope_1.4bpp.lz"


    .global gGfxEvidenceJuansAutograph_description
gGfxEvidenceJuansAutograph_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/juans_autograph.4bpp.lz"


    .global gGfxEvidenceGossipColumn_description
gGfxEvidenceGossipColumn_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/gossip_column.4bpp.lz"


    .global gGfxEvidenceGenericAutopsyReport4_description
gGfxEvidenceGenericAutopsyReport4_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_autopsy_report_4.4bpp.lz"


    .global gGfxEvidenceBloodyKnife_description
gGfxEvidenceBloodyKnife_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/bloody_knife.4bpp.lz"


    .global gGfxEvidenceGenericPhoto10_description
gGfxEvidenceGenericPhoto10_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_10.4bpp.lz"


    .global gGfxEvidenceShellysCallingCard_description
gGfxEvidenceShellysCallingCard_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/shellys_calling_card.4bpp.lz"


    .global gGfxEvidenceNoteFromTheSafe1_description
gGfxEvidenceNoteFromTheSafe1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/note_from_the_safe_1.4bpp.lz"


    .global gGfxEvidenceVideoCamera_description
gGfxEvidenceVideoCamera_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/video_camera.4bpp.lz"


    .global gGfxEvidenceVideoTransmitter_description
gGfxEvidenceVideoTransmitter_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/video_transmitter.4bpp.lz"


    .global gGfxEvidenceImportedBear_description
gGfxEvidenceImportedBear_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/imported_bear.4bpp.lz"


    .global gGfxEvidenceReceipt_description
gGfxEvidenceReceipt_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/receipt.4bpp.lz"


    .global gGfxEvidenceBearPuzzle0_description
gGfxEvidenceBearPuzzle0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/bear_puzzle_0.4bpp.lz"


    .global gGfxEvidenceBearPuzzle1_description
gGfxEvidenceBearPuzzle1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/bear_puzzle_1.4bpp.lz"


    .global gGfxEvidencePhotoOfCeleste_description
gGfxEvidencePhotoOfCeleste_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/photo_of_celeste.4bpp.lz"


    .global gGfxEvidenceNoteFromTheSafe2_description
gGfxEvidenceNoteFromTheSafe2_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/note_from_the_safe_2.4bpp.lz"


    .global gGfxEvidenceNoteFromTheSafe3_description
gGfxEvidenceNoteFromTheSafe3_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/note_from_the_safe_3.4bpp.lz"


    .global gGfxEvidenceGenericAffidavit0_description
gGfxEvidenceGenericAffidavit0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_affidavit_0.4bpp.lz"


    .global gGfxEvidenceGenericAffidavit1_description
gGfxEvidenceGenericAffidavit1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_affidavit_1.4bpp.lz"


    .global gGfxEvidenceBearClock_description
gGfxEvidenceBearClock_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/bear_clock.4bpp.lz"


    .global gGfxEvidenceFrequencyDetector_description
gGfxEvidenceFrequencyDetector_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/frequency_detector.4bpp.lz"


    .global gGfxEvidenceShoe_description
gGfxEvidenceShoe_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/shoe.4bpp.lz"


    .global gGfxEvidenceBellboyUniform0_description
gGfxEvidenceBellboyUniform0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/bellboy_uniform_0.4bpp.lz"


    .global gGfxEvidenceBellboyUniform1_description
gGfxEvidenceBellboyUniform1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/bellboy_uniform_1.4bpp.lz"


    .global gGfxEvidenceGenericVideo0_description
gGfxEvidenceGenericVideo0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_video_0.4bpp.lz"


    .global gGfxEvidenceGenericVideo1_description
gGfxEvidenceGenericVideo1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_video_1.4bpp.lz"


    .global gGfxEvidenceShellyPistol0_description
gGfxEvidenceShellyPistol0_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/shelly_pistol_0.4bpp.lz"


    .global gGfxEvidenceShellyPistol1_description
gGfxEvidenceShellyPistol1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/shelly_pistol_1.4bpp.lz"


    .global gGfxEvidenceFranziskasWhip_description
gGfxEvidenceFranziskasWhip_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/franziskas_whip.4bpp.lz"


    .global gGfxEvidenceTrackingDevice_description
gGfxEvidenceTrackingDevice_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/tracking_device.4bpp.lz"


    .global gGfxEvidenceGumshoesCoat_description
gGfxEvidenceGumshoesCoat_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/gumshoes_coat.4bpp.lz"


    .global gGfxEvidenceGatewaterHotelButton_description
gGfxEvidenceGatewaterHotelButton_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/gatewater_hotel_button.4bpp.lz"


    .global gGfxEvidenceGenericPhoto11_description
gGfxEvidenceGenericPhoto11_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/generic_photo_11.4bpp.lz"


    .global gGfxEvidenceTomatoJuice1_description
gGfxEvidenceTomatoJuice1_description:
    .incbin "graphics/evidence_profile_descriptions/evidence/tomato_juice_1.4bpp.lz"

@ END EVIDENCE PROFILE DESCRIPTIONS

@ BEGIN EVIDENCE PROFILE PICTURES
    .global gGfxEvidenceProfilePictures
gGfxEvidenceProfilePictures:

    .incbin "graphics/evidence_profile_pictures/evidence/generic_autopsy_report.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_autopsy_report.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_photo.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_photo.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/broken_glasses.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/broken_glasses.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/dustins_baseball_glove.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/dustins_baseball_glove.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_letter.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_letter.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/phoenix_cellphone.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/phoenix_cellphone.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/mayas_cellphone.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/mayas_cellphone.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/maya_fey.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/maya_fey.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/maggey_byrde.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/maggey_byrde.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/richard_wellington.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/richard_wellington.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/winston_payne.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/winston_payne.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/dick_gumshoe.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/dick_gumshoe.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/dustin_prince.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/dustin_prince.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/phoenix_business_card.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/phoenix_business_card.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_newspaper_clipping.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_newspaper_clipping.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/meeting_room_screen.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/meeting_room_screen.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/meeting_room_key.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/meeting_room_key.4bpp"

    .incbin "graphics/evidence_profile_pictures/dummy_00180848.gbapal"

    .incbin "graphics/evidence_profile_pictures/dummy_00180848.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/greys_gun.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/greys_gun.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/mayas_knife.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/mayas_knife.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/mayas_robe.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/mayas_robe.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/001828C8.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/001828C8.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/kurain_sacred_urn.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/kurain_sacred_urn.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/swatch_from_mayas_robe.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/swatch_from_mayas_robe.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/pearls_ball.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/pearls_ball.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/large_box.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/large_box.4bpp"

    .incbin "graphics/evidence_profile_pictures/dummy_00185168.gbapal"

    .incbin "graphics/evidence_profile_pictures/dummy_00185168.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/magatama_discharged.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/magatama_discharged.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/magatama_charged.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/magatama_charged.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/newspaper_article.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/newspaper_article.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/turner_grey.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/turner_grey.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/pearl_fey.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/pearl_fey.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/lotta_hart.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/lotta_hart.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/morgan_fey.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/morgan_fey.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/mimi_miney.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/mimi_miney.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/ini_miney.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/ini_miney.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/manfred_von_karma.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/manfred_von_karma.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/mia_fey.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/mia_fey.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/note_from_the_safe.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/note_from_the_safe.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/dr_hotti.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/dr_hotti.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/franziska_von_karma.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/franziska_von_karma.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/ami_fey.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/ami_fey.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/max_silk_hat.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/max_silk_hat.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/max_poster.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/max_poster.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/broken_bottle.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/broken_bottle.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/trilo.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/trilo.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/money.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/money.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/engagement_ring.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/engagement_ring.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/large_chest.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/large_chest.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/pepper.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/pepper.4bpp"

    .incbin "graphics/evidence_profile_pictures/dummy_00191468.gbapal"

    .incbin "graphics/evidence_profile_pictures/dummy_00191468.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/threatening_note_torn.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/threatening_note_torn.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/threatening_note_full.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/threatening_note_full.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/reginas_west.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/reginas_west.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/leon.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/leon.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/bloody_scarf.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/bloody_scarf.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/playing_cards.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/playing_cards.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/playing_card.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/playing_card.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/regent.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/regent.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/milk.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/milk.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/moes_grapes.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/moes_grapes.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/maximillion_galactica.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/maximillion_galactica.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/regina_berry.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/regina_berry.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/phoenix_badge.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/phoenix_badge.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/ben.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/ben.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/moe.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/moe.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/acro.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/acro.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/russell_berry.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/russell_berry.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/bat.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/bat.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/will_powers.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/will_powers.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/wendy_oldbag.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/wendy_oldbag.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/juan_corrida.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/juan_corrida.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/matt_engarde.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/matt_engarde.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/adrian_andrews.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/adrian_andrews.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/celeste_inpax.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/celeste_inpax.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/disguised_shelly_de_killer.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/disguised_shelly_de_killer.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/shelly_de_killer.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/shelly_de_killer.4bpp"

    .incbin "graphics/evidence_profile_pictures/profiles/miles_edgeworth.gbapal"

    .incbin "graphics/evidence_profile_pictures/profiles/miles_edgeworth.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/admission_ticket.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/admission_ticket.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/transceiver.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/transceiver.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/guitar_case.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/guitar_case.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/tomato_juice.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/tomato_juice.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/juans_autograph.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/juans_autograph.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/gossip_column.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/gossip_column.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_envelope.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_envelope.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/shellys_calling_card.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/shellys_calling_card.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/video_camera.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/video_camera.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/imported_bear.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/imported_bear.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/receipt.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/receipt.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/bear_puzzle.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/bear_puzzle.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/photo_of_celeste.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/photo_of_celeste.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/001A6188.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/001A6188.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/video_transmitter.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/video_transmitter.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/shoe.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/shoe.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/lottas_camera_case.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/lottas_camera_case.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/frequency_detector.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/frequency_detector.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/tracking_device.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/tracking_device.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/gumshoes_coat.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/gumshoes_coat.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/bellboy_uniform.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/bellboy_uniform.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/gatewater_hotel_button.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/gatewater_hotel_button.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_video.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_video.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/shelly_pistol.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/shelly_pistol.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/franziskas_whip.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/franziskas_whip.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/bloody_button.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/bloody_button.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_affidavit.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/generic_affidavit.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/bloody_knife.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/bloody_knife.4bpp"

    .incbin "graphics/evidence_profile_pictures/evidence/bear_clock.gbapal"

    .incbin "graphics/evidence_profile_pictures/evidence/bear_clock.4bpp"

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

    .global gGfxPalChoiceSelected
gGfxPalChoiceSelected:
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

    .global gGfx_BG000
gGfx_BG000:
    .incbin "graphics/striped_images/capcom_screen.4bpp.striped"

    .global gGfx_BG001
gGfx_BG001:
    .incbin "graphics/striped_images/case1_intro_nightmare_1.4bpp.striped"


    .global gGfx_BG002
gGfx_BG002:
    .incbin "graphics/striped_images/capcom_screen_bw.4bpp.striped"

    .global gGfx_BG003
gGfx_BG003:
    .incbin "graphics/striped_images/backgrounds/court/defendant_lobby.8bpp.striped"
    
    .global gGfx_BG004
gGfx_BG004:
    .incbin "graphics/striped_images/backgrounds/court/defense_side.4bpp.striped"


    .global gGfx_BG005
gGfx_BG005:
    .incbin "graphics/striped_images/backgrounds/court/prosecution_side.4bpp.striped"


    .global gGfx_BG006
gGfx_BG006:
    .incbin "graphics/striped_images/backgrounds/court/witness_backdrop.4bpp.striped"


    .global gGfx_BG007
gGfx_BG007:
    .incbin "graphics/striped_images/backgrounds/court/judge_seat.8bpp.striped"


    .global gGfx_BG008
gGfx_BG008:
    .incbin "graphics/striped_images/backgrounds/court/co_counsel.8bpp.striped"


    .global gGfx_BG009
gGfx_BG009:
    .incbin "graphics/striped_images/backgrounds/court/court_room.8bpp.striped"


    .global gGfx_BG010
gGfx_BG010:
    .incbin "graphics/striped_images/court_room_blue.4bpp.striped"

    .global gGfx_BG011
gGfx_BG011:
    .incbin "graphics/striped_images/backgrounds/gavel/1.8bpp.striped"

    .global gGfx_BG012
gGfx_BG012:
    .incbin "graphics/striped_images/backgrounds/gavel/2.8bpp.striped"

    .global gGfx_BG013
gGfx_BG013:
    .incbin "graphics/striped_images/backgrounds/gavel/3.8bpp.striped"

    .global gGfx_BG014
gGfx_BG014:
    .incbin "graphics/bustup_phoenix.gbapal"

    .global gUnknown_08263FF4
gUnknown_08263FF4:
    .incbin "graphics/bustup_phoenix.bin"

    .global gUnknown_082644A4
gUnknown_082644A4:
    .incbin "graphics/bustup_phoenix.4bpp"

    .global gGfx_BG015
gGfx_BG015:
    .incbin "graphics/bustup_edgeworth.gbapal"

    .global gUnknown_08265CE4
gUnknown_08265CE4:
    .incbin "graphics/bustup_edgeworth.bin"

    .global gUnknown_08266194
gUnknown_08266194:
    .incbin "graphics/bustup_edgeworth.4bpp"

    .global gGfx_BG016
gGfx_BG016:
    .incbin "graphics/striped_images/speedlines.4bpp.striped"

    .global gGfx_BG017
gGfx_BG017:
    .incbin "graphics/striped_images/detention_center.8bpp.striped"

    .global gGfx_BG018
gGfx_BG018:
    .incbin "graphics/striped_images/backgrounds/wright_co_law_offices_day.8bpp.striped"

    .global gGfx_BG019
gGfx_BG019:
    .incbin "graphics/striped_images/police_station_lobby.8bpp.striped"

    .global gGfx_BG020
gGfx_BG020:
    .incbin "graphics/bustup_franziska.gbapal"

    .global gUnknown_08277AB8
gUnknown_08277AB8:
    .incbin "graphics/bustup_franziska.bin"

    .global gUnknown_08277F68
gUnknown_08277F68:
    .incbin "graphics/bustup_franziska.4bpp"

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

    .global gGfx_BG021
gGfx_BG021:
    .incbin "graphics/striped_images/case1_photo_of_dustin_dead.4bpp.striped"


    .global gGfx_BG022
gGfx_BG022:
    .incbin "graphics/striped_images/case1_photo_of_maggeys_name.4bpp.striped"


    .global gGfx_BG023
gGfx_BG023:
    .incbin "graphics/striped_images/case1_maggey_with_dustin.4bpp.striped"


    .global gGfx_BG024
gGfx_BG024:
    .incbin "graphics/striped_images/case1_maggey_spotting_richard.4bpp.striped"


    .global gGfx_BG025
gGfx_BG025:
    .incbin "graphics/striped_images/case1_intro_richard_with_fire_extinguisher.8bpp.striped"


    .global gGfx_BG026
gGfx_BG026:
    .incbin "graphics/striped_images/case1_intro_nightmare_2.4bpp.striped"


    .global gGfx_BG027
gGfx_BG027:
    .incbin "graphics/striped_images/case1_intro_richard_looking.8bpp.striped"


    .global gGfx_BG028
gGfx_BG028:
    .incbin "graphics/striped_images/kurain_village.8bpp.striped"


    .global gGfx_BG029
gGfx_BG029:
    .incbin "graphics/striped_images/backgrounds/kurain_main_hall.8bpp.striped"


    .global gGfx_BG030
gGfx_BG030:
    .incbin "graphics/striped_images/backgrounds/meeting_room.8bpp.striped"


    .global gGfx_BG031
gGfx_BG031:
    .incbin "graphics/striped_images/backgrounds/winding_way.8bpp.striped"


    .global gGfx_BG032
gGfx_BG032:
    .incbin "graphics/striped_images/backgrounds/kurain_spare_room_with_box.8bpp.striped"


    .global gGfx_BG033
gGfx_BG033:
    .incbin "graphics/striped_images/backgrounds/kurain_spare_room.8bpp.striped"


    .global gGfx_BG034
gGfx_BG034:
    .incbin "graphics/striped_images/backgrounds/hotti_clinic.8bpp.striped"


    .global gGfx_BG035
gGfx_BG035:
    .incbin "graphics/striped_images/case2_intro_car.8bpp.striped"


    .global gGfx_BG036
gGfx_BG036:
    .incbin "graphics/striped_images/case2_intro_car_crash.8bpp.striped"


    .global gGfx_BG037
gGfx_BG037:
    .incbin "graphics/striped_images/case2_intro_phoenix_with_maya.8bpp.striped"


    .global gGfx_BG038
gGfx_BG038:
    .incbin "graphics/striped_images/dummy_background_1.4bpp.striped"


    .global gGfx_BG039
gGfx_BG039:
    .incbin "graphics/striped_images/case2_newspaper_car_crash_page_1.4bpp.striped"


    .global gGfx_BG040
gGfx_BG040:
    .incbin "graphics/striped_images/case2_newspaper_car_crash_page_2.4bpp.striped"


    .global gGfx_BG041
gGfx_BG041:
    .incbin "graphics/striped_images/case2_newspaper_car_crash_page_3.4bpp.striped"


    .global gGfx_BG042
gGfx_BG042:
    .incbin "graphics/striped_images/case2_diagram_of_meeting_room.4bpp.striped"


    .global gGfx_BG043
gGfx_BG043:
    .incbin "graphics/striped_images/case2_diagram_of_fey_manor.4bpp.striped"


    .global gGfx_BG044
gGfx_BG044:
    .incbin "graphics/striped_images/case2_into_car_lights.4bpp.striped"

    .global gGfx_BG045
gGfx_BG045:
    .incbin "graphics/striped_images/pwaa1_dead_mia_in_office.4bpp.striped"


    .global gGfx_BG046
gGfx_BG046:
    .incbin "graphics/striped_images/case2_maya_with_turner.4bpp.striped"


    .global gGfx_BG047
gGfx_BG047:
    .incbin "graphics/striped_images/case2_mimi_in_hospital.4bpp.striped"


    .global gGfx_BG048
gGfx_BG048:
    .incbin "graphics/striped_images/case2_mayas_robe.4bpp.striped"


    .global gGfx_BG049
gGfx_BG049:
    .incbin "graphics/striped_images/case2_photo_of_incident.4bpp.striped"


    .global gGfx_BG050
gGfx_BG050:
    .incbin "graphics/striped_images/case2_photo_of_attacker.4bpp.striped"


    .global gGfx_BG051
gGfx_BG051:
    .incbin "graphics/striped_images/case2_photo_of_summoned_mia.8bpp.striped"


    .global gGfx_BG052
gGfx_BG052:
    .incbin "graphics/striped_images/case2_pearl_fixing_urn.4bpp.striped"


    .global gGfx_BG053
gGfx_BG053:
    .incbin "graphics/striped_images/case2_morgan_fey.8bpp.striped"


    .global gGfx_BG054
gGfx_BG054:
    .incbin "graphics/striped_images/case2_ini_with_summoned_mimi.4bpp.striped"


    .global gGfx_BG055
gGfx_BG055:
    .incbin "graphics/striped_images/case2_ini_with_sleeping_maya.4bpp.striped"


    .global gGfx_BG056
gGfx_BG056:
    .incbin "graphics/striped_images/case2_box_behind_screen.4bpp.striped"


    .global gGfx_BG057
gGfx_BG057:
    .incbin "graphics/striped_images/case2_turner_with_gun.4bpp.striped"


    .global gGfx_BG058
gGfx_BG058:
    .incbin "graphics/striped_images/case2_maya_with_summoned_mia.8bpp.striped"


    .global gGfx_BG059
gGfx_BG059:
    .incbin "graphics/striped_images/backgrounds/circus_tent.8bpp.striped"


    .global gGfx_BG060
gGfx_BG060:
    .incbin "graphics/striped_images/backgrounds/circus_cafeteria.8bpp.striped"


    .global gGfx_BG061
gGfx_BG061:
    .incbin "graphics/striped_images/backgrounds/mr_berrys_office.8bpp.striped"


    .global gGfx_BG062
gGfx_BG062:
    .incbin "graphics/striped_images/backgrounds/berry_big_circus_entrance_day.8bpp.striped"


    .global gGfx_BG063
gGfx_BG063:
    .incbin "graphics/striped_images/backgrounds/berry_big_circus_entrance_night.8bpp.striped"


    .global gGfx_BG064
gGfx_BG064:
    .incbin "graphics/striped_images/backgrounds/circus_courtyard.8bpp.striped"


    .global gGfx_BG065
gGfx_BG065:
    .incbin "graphics/striped_images/backgrounds/moes_room.8bpp.striped"


    .global gGfx_BG066
gGfx_BG066:
    .incbin "graphics/striped_images/backgrounds/acros_room.8bpp.striped"


    .global gGfx_BG067
gGfx_BG067:
    .incbin "graphics/striped_images/case3_intro_lion_blue_yellow.4bpp.striped"


    .global gGfx_BG068
gGfx_BG068:
    .incbin "graphics/striped_images/case3_intro_lion_green_red.4bpp.striped"


    .global gGfx_BG069
gGfx_BG069:
    .incbin "graphics/striped_images/case2_into_circus.8bpp.striped"


    .global gGfx_BG070
gGfx_BG070:
    .incbin "graphics/striped_images/case3_intro_maximillion.8bpp.striped"


    .global gGfx_BG071
gGfx_BG071:
    .incbin "graphics/striped_images/case3_threatening_note_text.4bpp.striped"


    .global gGfx_BG072
gGfx_BG072:
    .incbin "graphics/striped_images/case3_poster_of_maximillion.8bpp.striped"


    .global gGfx_BG073
gGfx_BG073:
    .incbin "graphics/striped_images/case3_photo_of_maximillion_with_trophy.8bpp.striped"


    .global gGfx_BG074
gGfx_BG074:
    .incbin "graphics/striped_images/case3_maximillion_with_contract.4bpp.striped"


    .global gGfx_BG075
gGfx_BG075:
    .incbin "graphics/striped_images/case3_diagram_circus.4bpp.striped"


    .global gGfx_BG076
gGfx_BG076:
    .incbin "graphics/striped_images/case3_photo_of_russell.4bpp.striped"


    .global gGfx_BG077
gGfx_BG077:
    .incbin "graphics/striped_images/case3_dead_russell_outside.4bpp.striped"


    .global gGfx_BG078
gGfx_BG078:
    .incbin "graphics/striped_images/case3_russell_about_to_get_hit.4bpp.striped"


    .global gGfx_BG079
gGfx_BG079:
    .incbin "graphics/striped_images/case3_russell_getting_hit.4bpp.striped"


    .global gGfx_BG080
gGfx_BG080:
    .incbin "graphics/striped_images/case3_bat_with_lion.4bpp.striped"


    .global gGfx_BG081
gGfx_BG081:
    .incbin "graphics/striped_images/case3_ben_spotting_max.4bpp.striped"


    .global gGfx_BG082
gGfx_BG082:
    .incbin "graphics/striped_images/case3_acro_spotting_statue.4bpp.striped"


    .global gGfx_BG083
gGfx_BG083:
    .incbin "graphics/striped_images/case3_bust_of_maximillion.8bpp.striped"


    .global gGfx_BG084
gGfx_BG084:
    .incbin "graphics/striped_images/case3_acro_dropping_statue.4bpp.striped"


    .global gGfx_BG085
gGfx_BG085:
    .incbin "graphics/striped_images/case3_max_grabbing_bottle.4bpp.striped"


    .global gGfx_BG086
gGfx_BG086:
    .incbin "graphics/striped_images/case3_acros_bottom_half_in_wheelchair.4bpp.striped"


    .global gGfx_BG087
gGfx_BG087:
    .incbin "graphics/striped_images/case3_edgeworth_at_airport.8bpp.striped"


    .global gGfx_BG088
gGfx_BG088:
    .incbin "graphics/striped_images/backgrounds/gatewater_hotel_ballroom.8bpp.striped"


    .global gGfx_BG089
gGfx_BG089:
    .incbin "graphics/striped_images/backgrounds/gatewater_hotel_hallway.8bpp.striped"


    .global gGfx_BG090
gGfx_BG090:
    .incbin "graphics/striped_images/backgrounds/matt_engardes_hotel_room.8bpp.striped"


    .global gGfx_BG091
gGfx_BG091:
    .incbin "graphics/striped_images/backgrounds/juan_corridas_hotel_room.8bpp.striped"


    .global gGfx_BG092
gGfx_BG092:
    .incbin "graphics/striped_images/dummy_background_2.4bpp.striped"


    .global gGfx_BG093
gGfx_BG093:
    .incbin "graphics/striped_images/backgrounds/gatewater_hotel_lobby.8bpp.striped"


    .global gGfx_BG094
gGfx_BG094:
    .incbin "graphics/striped_images/backgrounds/matt_engardes_house.8bpp.striped"


    .global gGfx_BG095
gGfx_BG095:
    .incbin "graphics/striped_images/backgrounds/secret_room.8bpp.striped"


    .global gGfx_BG096
gGfx_BG096:
    .incbin "graphics/striped_images/backgrounds/wine_cellar.8bpp.striped"


    .global gGfx_BG120
gGfx_BG120:
    .incbin "graphics/striped_images/case4_intro_heroes_lined_up.8bpp.striped"


    .global gGfx_BG121
gGfx_BG121:
    .incbin "graphics/striped_images/case4_intro_nickel_samurai_appears.4bpp.striped"


    .global gGfx_BG122
gGfx_BG122:
    .incbin "graphics/striped_images/case4_intro_nickel_samurai_with_fan.8bpp.striped"


    .global gGfx_BG097
gGfx_BG097:
    .incbin "graphics/striped_images/case4_over_the_clouds.8bpp.striped"


    .global gGfx_BG098
gGfx_BG098:
    .incbin "graphics/striped_images/case4_jammin_ninja_poster.8bpp.striped"


    .global gGfx_BG099
gGfx_BG099:
    .incbin "graphics/striped_images/backgrounds/airport.8bpp.striped"


    .global gGfx_BG100
gGfx_BG100:
    .incbin "graphics/striped_images/case4_photo_of_juan_dead.4bpp.striped"


    .global gGfx_BG101
gGfx_BG101:
    .incbin "graphics/striped_images/case4_diagram_hotel.4bpp.striped"


    .global gGfx_BG102
gGfx_BG102:
    .incbin "graphics/striped_images/case4_photo_of_nickel_samurai_in_hall.4bpp.striped"


    .global gGfx_BG103
gGfx_BG103:
    .incbin "graphics/striped_images/case4_nickel_samurai_poster.8bpp.striped"


    .global gGfx_BG104
gGfx_BG104:
    .incbin "graphics/striped_images/case4_juan_finding_dead_celeste.4bpp.striped"


    .global gGfx_BG105
gGfx_BG105:
    .incbin "graphics/striped_images/case4_adrian_puttin_on_costume.4bpp.striped"


    .global gGfx_BG106
gGfx_BG106:
    .incbin "graphics/striped_images/case4_adrian_with_sleeping_matt.4bpp.striped"


    .global gGfx_BG107
gGfx_BG107:
    .incbin "graphics/striped_images/case4_backdrop_of_matt_with_partner.4bpp.striped"


    .global gGfx_BG108
gGfx_BG108:
    .incbin "graphics/striped_images/pwaa1_edgeworth_picking_up_gun.4bpp.striped"


    .global gGfx_BG109
gGfx_BG109:
    .incbin "graphics/striped_images/case4_matt_getting_juice_from_shelly.4bpp.striped"


    .global gGfx_BG110
gGfx_BG110:
    .incbin "graphics/striped_images/case4_franziska_entering.8bpp.striped"


    .global gGfx_BG111
gGfx_BG111:
    .incbin "graphics/striped_images/case4_shelly_handing_over_bear.4bpp.striped"


    .global gGfx_BG112
gGfx_BG112:
    .incbin "graphics/striped_images/case4_phoenix_with_maya_and_pearl.8bpp.striped"


    .global gGfx_BG113
gGfx_BG113:
    .incbin "graphics/striped_images/case4_calling_card_with_drawing.8bpp.striped"


    .global gGfx_BG114
gGfx_BG114:
    .incbin "graphics/striped_images/case4_phoenix_leaving_bad_end.4bpp.striped"


    .global gGfx_BG115
gGfx_BG115:
    .incbin "graphics/striped_images/case4_adrian_finding_juan_with_juice.4bpp.striped"


    .global gGfx_BG116
gGfx_BG116:
    .incbin "graphics/striped_images/case4_calling_card.4bpp.striped"

    .global gGfx_BG117
gGfx_BG117:
    .incbin "graphics/striped_images/backgrounds/steel_samurai.8bpp.striped"

    .global gGfx_BG118
gGfx_BG118:
    .incbin "graphics/striped_images/case4_tabloid_article.4bpp.striped"


    .global gGfx_BG119
gGfx_BG119:
    .incbin "graphics/striped_images/pwaa1_class_trial_edgeworth.4bpp.striped"

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
