    .section gfx_data, "aw", %progbits
    .include "asm/macros.inc"

    .global gPalTitleScreen
gPalTitleScreen:
    .incbin "graphics/title_screen.gbapal"

    .global gGfx8lzTitleScreen
gGfx8lzTitleScreen:
    .incbin "graphics/title_screen.8bpp.lz"

    .global gPalTitleScreenDemo
gPalTitleScreenDemo:
    .incbin "graphics/title_screen_demo.gbapal"

    .global gGfx8lzTitleScreenDemo
gGfx8lzTitleScreenDemo:
    .incbin "graphics/title_screen_demo.8bpp.lz"

    .global gUnusedAsciiCharSet
gUnusedAsciiCharSet:
    .incbin "graphics/unused_ascii_charset.4bpp"

    .global gPalEvidenceProfileDesc
gPalEvidenceProfileDesc:
    .incbin "graphics/evidence_profile_descriptions/evidence_profile_descriptions.gbapal"

    .global gGfxSaveGameTiles
gGfxSaveGameTiles:
    .incbin "graphics/ui/message_box/13791C.4bpp"

    .global gGfxNameTags
gGfxNameTags:
    .incbin "graphics/ui/message_box/nametags.4bpp"

    .global gGfxDetentionCenterBottomTiles
gGfxDetentionCenterBottomTiles:
    .incbin "graphics/detention_center_bottom_tiles.4bpp"

    .global gGfx4bppTestimonyArrows
gGfx4bppTestimonyArrows:
    .incbin "graphics/ui/left_right_arrows.4bpp"

    .global gUnknown_0813DC7C
gUnknown_0813DC7C:
    .incbin "graphics/13DC7C.4bpp"

    .global gGfxUnusedTestimonyCharacters
gGfxUnusedTestimonyCharacters:
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

    .global gGfxPressPresentButtons
gGfxPressPresentButtons:
    .incbin "graphics/ui/trial/press_present_buttons.4bpp"

    .global gGfx4bppPresentBackTextTiles
gGfx4bppPresentBackTextTiles:
    .incbin "graphics/ui/court_record/present_back_text.4bpp"

    .global gGfx4bppProfileTextTiles
gGfx4bppProfileTextTiles:
    .incbin "graphics/ui/court_record/profiles_text.4bpp"

    .global gGfxEvidenceText
gGfxEvidenceText:
    .incbin "graphics/ui/court_record/evidence_text.4bpp"

    .global gGfxExamineCursor
gGfxExamineCursor:
    .incbin "graphics/ui/investigation/examine_cursor.4bpp"

    .global gGfxCheckmark
gGfxCheckmark:
    .incbin "graphics/ui/investigation/checkmark.4bpp"

    .global gGfxGameOverDoors
gGfxGameOverDoors:
    .incbin "graphics/ui/trial/game_over_doors.4bpp"

    .global gGfxNotGuilty1
gGfxNotGuilty1:
    .incbin "graphics/ui/trial/not_guilty1.4bpp"

    .global gGfxGuilty1
gGfxGuilty1:
    .incbin "graphics/ui/trial/guilty1.4bpp"

    .global gGfxGuiltyNotGuilty2
gGfxGuiltyNotGuilty2:
    .incbin "graphics/ui/trial/guilty_not_guilty2.4bpp"

    .global gGfxGameOverText
gGfxGameOverText:
    .incbin "graphics/ui/trial/game_over_text.4bpp"

    .global gGfxNewGameContinue
gGfxNewGameContinue:
    .incbin "graphics/ui/new_game_continue.4bpp"

    .global gGfxConfetti
gGfxConfetti:
    .incbin "graphics/ui/trial/confetti.4bpp"

    .global gGfxWitnessBench1
gGfxWitnessBench1:
    .incbin "graphics/witness_bench_1.4bpp"

    .global gGfxWitnessBench2
gGfxWitnessBench2:
    .incbin "graphics/witness_bench_2.4bpp"

    .global gGfxCounselBench1
gGfxCounselBench1:
    .incbin "graphics/counsel_bench_1.4bpp"

    .global gGfxCounselBench2
gGfxCounselBench2:
    .incbin "graphics/counsel_bench_2.4bpp"

    .global gGfxCounselBench3
gGfxCounselBench3:
    .incbin "graphics/counsel_bench_3.4bpp"

    .global gGfxCounselBench4
gGfxCounselBench4:
    .incbin "graphics/counsel_bench_4.4bpp"

    .global gGfxInvestigationStopButton
gGfxInvestigationStopButton:
    .incbin "graphics/ui/investigation/stop_button.4bpp"

    .global gGfxInvestigationPsycheLock
gGfxInvestigationPsycheLock:
    .incbin "graphics/ui/investigation/psyche_lock.4bpp"

    .global gGfxHPBarFrame1
gGfxHPBarFrame1:
    .incbin "graphics/ui/healthbar_frame_1.4bpp"

    .global gGfxHPBarFrame2
gGfxHPBarFrame2:
    .incbin "graphics/ui/healthbar_frame_2.4bpp"

    .global gGfxHPBarFrame3
gGfxHPBarFrame3:
    .incbin "graphics/ui/healthbar_frame_3.4bpp"

    .global gGfxHPBarProgress
gGfxHPBarProgress:
    .incbin "graphics/ui/healthbar_progress.4bpp"

    .global gGfxPsycheLockChainsTiles
gGfxPsycheLockChainsTiles:
    .incbin "graphics/psyche_lock_chain_tileset.4bpp.lz"

    .global gMapPsycheLockChains01
gMapPsycheLockChains01:
    .incbin "graphics/psyche_lock_chain_animation_01.bin.lz"

    .global gMapPsycheLockChains02
gMapPsycheLockChains02:
    .incbin "graphics/psyche_lock_chain_animation_02.bin.lz"

    .global gMapPsycheLockChains03
gMapPsycheLockChains03:
    .incbin "graphics/psyche_lock_chain_animation_03.bin.lz"

    .global gMapPsycheLockChains04
gMapPsycheLockChains04:
    .incbin "graphics/psyche_lock_chain_animation_04.bin.lz"

    .global gMapPsycheLockChains05
gMapPsycheLockChains05:
    .incbin "graphics/psyche_lock_chain_animation_05.bin.lz"

    .global gMapPsycheLockChains06
gMapPsycheLockChains06:
    .incbin "graphics/psyche_lock_chain_animation_06.bin.lz"

    .global gMapPsycheLockChains07
gMapPsycheLockChains07:
    .incbin "graphics/psyche_lock_chain_animation_07.bin.lz"

    .global gMapPsycheLockChains08
gMapPsycheLockChains08:
    .incbin "graphics/psyche_lock_chain_animation_08.bin.lz"

    .global gMapPsycheLockChains09
gMapPsycheLockChains09:
    .incbin "graphics/psyche_lock_chain_animation_09.bin.lz"

    .global gMapPsycheLockChains10
gMapPsycheLockChains10:
    .incbin "graphics/psyche_lock_chain_animation_10.bin.lz"

    .global gMapPsycheLockChains11
gMapPsycheLockChains11:
    .incbin "graphics/psyche_lock_chain_animation_11.bin.lz"

    .global gMapPsycheLockChains12
gMapPsycheLockChains12:
    .incbin "graphics/psyche_lock_chain_animation_12.bin.lz"

    .global gMapPsycheLockChains13
gMapPsycheLockChains13:
    .incbin "graphics/psyche_lock_chain_animation_13.bin.lz"

    .global gMapPsycheLockChains14
gMapPsycheLockChains14:
    .incbin "graphics/psyche_lock_chain_animation_14.bin.lz"

    .global gMapPsycheLockChains15
gMapPsycheLockChains15:
    .incbin "graphics/psyche_lock_chain_animation_15.bin.lz"

    .global gMapPsycheLockChains16
gMapPsycheLockChains16:
    .incbin "graphics/psyche_lock_chain_animation_16.bin.lz"

    .global gMapPsycheLockChains17
gMapPsycheLockChains17:
    .incbin "graphics/psyche_lock_chain_animation_17.bin.lz"

    .global gMapPsycheLockChains18
gMapPsycheLockChains18:
    .incbin "graphics/psyche_lock_chain_animation_18.bin.lz"

    .global gMapPsycheLockChains19
gMapPsycheLockChains19:
    .incbin "graphics/psyche_lock_chain_animation_19.bin.lz"

    .global gMapPsycheLockChains20
gMapPsycheLockChains20:
    .incbin "graphics/psyche_lock_chain_animation_20.bin.lz"

    .global gUnknown_0814DA60
gUnknown_0814DA60:
    .incbin "graphics/unk_14DA60.gbapal"

    .global gPalCrossExamUI
gPalCrossExamUI:
    .incbin "graphics/unk_14DA80.gbapal"

    .global gUnknown_0814DAA0
gUnknown_0814DAA0:
    .incbin "graphics/unk_194100.gbapal"

    .global gPalActionButtons1
gPalActionButtons1:
    .incbin "graphics/ui/investigation/action_buttons_0.gbapal"

    .global gPalActionButtons2
gPalActionButtons2:
    .incbin "graphics/ui/investigation/action_buttons_1.gbapal"

    .global gPalCourtRecordActionText
gPalCourtRecordActionText:
    .incbin "graphics/ui/court_record/controls_blurb.gbapal"

    .global gPalInvestigationScrollPrompt
gPalInvestigationScrollPrompt:
    .incbin "graphics/ui/investigation/scroll_prompt.gbapal"

    .global gPalTestimonyTextTiles
gPalTestimonyTextTiles:
    .incbin "graphics/ui/trial/testimony_text_tiles.gbapal"

    .global gPalPressPresentButtons
gPalPressPresentButtons:
    .incbin "graphics/ui/trial/press_present_buttons.gbapal"

    .global gPalExamineCursors
gPalExamineCursors:
    .incbin "graphics/ui/investigation/examine_cursor_00.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_01.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_02.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_03.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_04.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_05.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_06.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_07.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_08.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_09.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_10.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_11.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_12.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_13.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_14.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_15.gbapal"

    .incbin "graphics/ui/investigation/examine_cursor_16.gbapal"

    .global gPalCheckmark
gPalCheckmark:
    .incbin "graphics/ui/investigation/checkmark.gbapal"

    .global gPalGameOverDoors
gPalGameOverDoors:
    .incbin "graphics/ui/trial/game_over_doors.gbapal"

    .global gPalGuilty
gPalGuilty:
    .incbin "graphics/ui/trial/guilty.gbapal"

    .global gPalNotGuilty
gPalNotGuilty:
    .incbin "graphics/ui/trial/not_guilty.gbapal"

    .global gPalGameOverText
gPalGameOverText:
    .incbin "graphics/ui/trial/game_over_text.gbapal"

    .global gPalNewGameContinue
gPalNewGameContinue:
    .incbin "graphics/ui/new_game_continue_0.gbapal"
    .incbin "graphics/ui/new_game_continue_1.gbapal"
    .incbin "graphics/ui/new_game_continue_2.gbapal"
    .incbin "graphics/ui/new_game_continue_3.gbapal"
    .incbin "graphics/ui/new_game_continue_4.gbapal"
    .incbin "graphics/ui/new_game_continue_5.gbapal"

    .global gPalConfetti0
gPalConfetti0:
    .incbin "graphics/ui/trial/confetti_0.gbapal"

    .global gPalConfetti1
gPalConfetti1:
    .incbin "graphics/ui/trial/confetti_1.gbapal"

    .global gPalConfetti2
gPalConfetti2:
    .incbin "graphics/ui/trial/confetti_2.gbapal"

    .global gPalConfetti3
gPalConfetti3:
    .incbin "graphics/ui/trial/confetti_3.gbapal"

    .global gUnknown_0814E060
gUnknown_0814E060:
    .incbin "graphics/unk_14E060.gbapal"

    .global gPalWitnessBench
gPalWitnessBench:
    .incbin "graphics/witness_bench.gbapal"

    .global gPalCounselBench
gPalCounselBench:
    .incbin "graphics/counsel_bench.gbapal"

    .global gPalCase1OpeningPurpleClouds
gPalCase1OpeningPurpleClouds:
    .incbin "graphics/case1_opening_purple_cloud_palettes.gbapal"

    .global gPalInvestigationPsycheLock
gPalInvestigationPsycheLock:
    .incbin "graphics/ui/investigation/psyche_lock.gbapal"

    .global gPalHPBarFrame
gPalHPBarFrame:
    .incbin "graphics/ui/healthbar_frame.gbapal"

    .global gPalHPBarProgress
gPalHPBarProgress:
    .incbin "graphics/ui/healthbar_progress_1.gbapal"

    .incbin "graphics/ui/healthbar_progress_2.gbapal"
    .incbin "graphics/ui/healthbar_progress_3.gbapal"

    .incbin "graphics/ui/healthbar_progress_4.gbapal"

    .incbin "graphics/ui/healthbar_progress_5.gbapal"

    .incbin "graphics/ui/healthbar_progress_6.gbapal"

    .incbin "graphics/ui/healthbar_progress_7.gbapal"

    .incbin "graphics/ui/healthbar_progress_8.gbapal"

    .global gGfxEpisodeSelectOptions
gGfxEpisodeSelectOptions:
    .incbin "graphics/episode_select_options.4bpp.lz"

    .global gGfxFromSaveOrBeginningOptions
gGfxFromSaveOrBeginningOptions:
    .incbin "graphics/from_save_or_beginning_options.4bpp"

    .global gGfxSaveYesNo
gGfxSaveYesNo:
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

    .global gPalChoiceSelected
gPalChoiceSelected:
    .incbin "graphics/talk_location_choices/choice_selected.gbapal"

    .global gPalChoiceGreyedOut
gPalChoiceGreyedOut:
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

    .global gPalMapMarkers
gPalMapMarkers:
    .incbin "graphics/map_markers/palette.gbapal"

    .global gGfxMapMarkersKiller
gGfxMapMarkersKiller:
    .incbin "graphics/map_markers/killer.4bpp"

    .global gGfxMapMarkersVictim
gGfxMapMarkersVictim:
    .incbin "graphics/map_markers/victim.4bpp"

    .global gGfxMapMarkersGreen
gGfxMapMarkersGreen:
    .incbin "graphics/map_markers/green.4bpp"

    .global gGfxMapMarkersDoubleDoorDiagram
gGfxMapMarkersDoubleDoorDiagram:
    .incbin "graphics/map_markers/double_door_diagram.4bpp"

    .global gGfxMapMarkersFoldingScreen
gGfxMapMarkersFoldingScreen:
    .incbin "graphics/map_markers/folding_screen.4bpp"

    .global gGfxMapMarkersRedDot
gGfxMapMarkersRedDot:
    .incbin "graphics/map_markers/red_dot.4bpp"

    .global gGfxUnusedMapMarkersCase3MainGate
gGfxUnusedMapMarkersCase3MainGate:
    .incbin "graphics/map_markers/case3_main_gate.4bpp"

    .global gGfxUnusedMapMarkersGreen
gGfxUnusedMapMarkersGreen:
    .incbin "graphics/map_markers/green.4bpp"

    .global gGfxUnusedMapMarkersCase4BoatHorizontal
gGfxUnusedMapMarkersCase4BoatHorizontal:
    .incbin "graphics/map_markers/case4_boat_horizontal.4bpp"

    .global gGfxUnusedMapMarkersCase4BoatRentalShop
gGfxUnusedMapMarkersCase4BoatRentalShop:
    .incbin "graphics/map_markers/case4_boat_rental_shop.4bpp"

    .global gGfxUnusedMapMarkersCase4LottaSUV
gGfxUnusedMapMarkersCase4LottaSUV:
    .incbin "graphics/map_markers/case4_lotta_suv.4bpp"

    .global gGfxUnusedMapMarkersCase4BoatVertical
gGfxUnusedMapMarkersCase4BoatVertical:
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

    .global gPal_BG014_BustupPhoenix
gPal_BG014_BustupPhoenix:
    .incbin "graphics/bustup_phoenix.gbapal"

    .global gMap_BG014_BustupPhoenix
gMap_BG014_BustupPhoenix:
    .incbin "graphics/bustup_phoenix.bin"

    .global gGfx_BG014_BustupPhoenix
gGfx_BG014_BustupPhoenix:
    .incbin "graphics/bustup_phoenix.4bpp"

    .global gPal_BG015_BustupEdgeworth
gPal_BG015_BustupEdgeworth:
    .incbin "graphics/bustup_edgeworth.gbapal"

    .global gMap_BG015_BustupEdgeworth
gMap_BG015_BustupEdgeworth:
    .incbin "graphics/bustup_edgeworth.bin"

    .global gGfx_BG015_BustupEdgeworth
gGfx_BG015_BustupEdgeworth:
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

    .global gPal_BG020_BustupFranziska
gPal_BG020_BustupFranziska:
    .incbin "graphics/bustup_franziska.gbapal"

    .global gMap_BG020_BustupFranziska
gMap_BG020_BustupFranziska:
    .incbin "graphics/bustup_franziska.bin"

    .global gGfx_BG020_BustupFranziska
gGfx_BG020_BustupFranziska:
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

    .global gGfxCase3NickelSamuraiZoomin
gGfxCase3NickelSamuraiZoomin:
    .incbin "graphics/nickel_samurai_case3_op_zoomin.8bpp.lz"

    .global gMapCase3NickelSamuraiZoomin
gMapCase3NickelSamuraiZoomin:
    .incbin "graphics/nickel_samurai_case3_op_zoomin.bin.lz"

    .global gPalCase3NickelSamuraiZoomin
gPalCase3NickelSamuraiZoomin:
    .incbin "graphics/nickel_samurai_case3_op_zoomin.gbapal.lz"

    .global gGfxSpeedlinesFirstAndLastColumns
gGfxSpeedlinesFirstAndLastColumns:
    .incbin "graphics/speedlines_first_and_last_columns.4bpp"

    .global gPalCourtScroll
gPalCourtScroll:
    .incbin "graphics/court_scrolls/court_scroll.gbapal"

    .global gGfxCourtScroll
gGfxCourtScroll:
    .incbin "graphics/court_scrolls/court_scroll.4bpp"

    .global gGfxPixAnimationChar01
gGfxPixAnimationChar01:
    .incbin "graphics/animations/characters/animation01.pix"

    .global gGfxSeqAnimationChar01
gGfxSeqAnimationChar01:
    .incbin "graphics/animations/characters/animation01.seq"

    .global gGfxPixAnimationChar02
gGfxPixAnimationChar02:
    .incbin "graphics/animations/characters/animation02.pix"

    .global gGfxSeqAnimationChar02
gGfxSeqAnimationChar02:
    .incbin "graphics/animations/characters/animation02.seq"

    .global gGfxPixAnimationChar03
gGfxPixAnimationChar03:
    .incbin "graphics/animations/characters/animation03.pix"

    .global gGfxSeqAnimationChar03
gGfxSeqAnimationChar03:
    .incbin "graphics/animations/characters/animation03.seq"

    .global gGfxPixAnimationChar04
gGfxPixAnimationChar04:
    .incbin "graphics/animations/characters/animation04.pix"

    .global gGfxSeqAnimationChar04
gGfxSeqAnimationChar04:
    .incbin "graphics/animations/characters/animation04.seq"

    .global gGfxPixAnimationChar05
gGfxPixAnimationChar05:
    .incbin "graphics/animations/characters/animation05.pix"

    .global gGfxSeqAnimationChar05
gGfxSeqAnimationChar05:
    .incbin "graphics/animations/characters/animation05.seq"

    .global gGfxPixAnimationChar06
gGfxPixAnimationChar06:
    .incbin "graphics/animations/characters/animation06.pix"

    .global gGfxSeqAnimationChar06
gGfxSeqAnimationChar06:
    .incbin "graphics/animations/characters/animation06.seq"

    .global gGfxPixAnimationChar07
gGfxPixAnimationChar07:
    .incbin "graphics/animations/characters/animation07.pix"

    .global gGfxSeqAnimationChar07
gGfxSeqAnimationChar07:
    .incbin "graphics/animations/characters/animation07.seq"

    .global gGfxPixAnimationChar08
gGfxPixAnimationChar08:
    .incbin "graphics/animations/characters/animation08.pix"

    .global gGfxSeqAnimationChar08
gGfxSeqAnimationChar08:
    .incbin "graphics/animations/characters/animation08.seq"

    .global gGfxPixAnimationChar09
gGfxPixAnimationChar09:
    .incbin "graphics/animations/characters/animation09.pix"

    .global gGfxSeqAnimationChar09
gGfxSeqAnimationChar09:
    .incbin "graphics/animations/characters/animation09.seq"

    .global gGfxPixAnimationChar10
gGfxPixAnimationChar10:
    .incbin "graphics/animations/characters/animation10.pix"

    .global gGfxSeqAnimationChar10
gGfxSeqAnimationChar10:
    .incbin "graphics/animations/characters/animation10.seq"

    .global gGfxPixAnimationChar11
gGfxPixAnimationChar11:
    .incbin "graphics/animations/characters/animation11.pix"

    .global gGfxSeqAnimationChar11
gGfxSeqAnimationChar11:
    .incbin "graphics/animations/characters/animation11.seq"

    .global gGfxPixAnimationChar12
gGfxPixAnimationChar12:
    .incbin "graphics/animations/characters/animation12.pix"

    .global gGfxSeqAnimationChar12
gGfxSeqAnimationChar12:
    .incbin "graphics/animations/characters/animation12.seq"

    .global gGfxPixAnimationChar13
gGfxPixAnimationChar13:
    .incbin "graphics/animations/characters/animation13.pix"

    .global gGfxSeqAnimationChar13
gGfxSeqAnimationChar13:
    .incbin "graphics/animations/characters/animation13.seq"

    .global gGfxPixAnimationChar14
gGfxPixAnimationChar14:
    .incbin "graphics/animations/characters/animation14.pix"

    .global gGfxSeqAnimationChar14
gGfxSeqAnimationChar14:
    .incbin "graphics/animations/characters/animation14.seq"

    .global gGfxPixAnimationChar15
gGfxPixAnimationChar15:
    .incbin "graphics/animations/characters/animation15.pix"

    .global gGfxSeqAnimationChar15
gGfxSeqAnimationChar15:
    .incbin "graphics/animations/characters/animation15.seq"

    .global gGfxPixAnimationChar16
gGfxPixAnimationChar16:
    .incbin "graphics/animations/characters/animation16.pix"

    .global gGfxSeqAnimationChar16
gGfxSeqAnimationChar16:
    .incbin "graphics/animations/characters/animation16.seq"

    .global gGfxPixAnimationChar17
gGfxPixAnimationChar17:
    .incbin "graphics/animations/characters/animation17.pix"

    .global gGfxSeqAnimationChar17
gGfxSeqAnimationChar17:
    .incbin "graphics/animations/characters/animation17.seq"

    .global gGfxPixAnimationChar18
gGfxPixAnimationChar18:
    .incbin "graphics/animations/characters/animation18.pix"

    .global gGfxSeqAnimationChar18
gGfxSeqAnimationChar18:
    .incbin "graphics/animations/characters/animation18.seq"

    .global gGfxPixAnimationChar19
gGfxPixAnimationChar19:
    .incbin "graphics/animations/characters/animation19.pix"

    .global gGfxSeqAnimationChar19
gGfxSeqAnimationChar19:
    .incbin "graphics/animations/characters/animation19.seq"

    .global gGfxPixAnimationChar20
gGfxPixAnimationChar20:
    .incbin "graphics/animations/characters/animation20.pix"

    .global gGfxSeqAnimationChar20
gGfxSeqAnimationChar20:
    .incbin "graphics/animations/characters/animation20.seq"

    .global gGfxPixAnimationChar21
gGfxPixAnimationChar21:
    .incbin "graphics/animations/characters/animation21.pix"

    .global gGfxSeqAnimationChar21
gGfxSeqAnimationChar21:
    .incbin "graphics/animations/characters/animation21.seq"

    .global gGfxPixAnimationChar22
gGfxPixAnimationChar22:
    .incbin "graphics/animations/characters/animation22.pix"

    .global gGfxSeqAnimationChar22
gGfxSeqAnimationChar22:
    .incbin "graphics/animations/characters/animation22.seq"

    .global gGfxPixAnimationChar23
gGfxPixAnimationChar23:
    .incbin "graphics/animations/characters/animation23.pix"

    .global gGfxSeqAnimationChar23
gGfxSeqAnimationChar23:
    .incbin "graphics/animations/characters/animation23.seq"

    .global gGfxPixAnimationChar24
gGfxPixAnimationChar24:
    .incbin "graphics/animations/characters/animation24.pix"

    .global gGfxSeqAnimationChar24
gGfxSeqAnimationChar24:
    .incbin "graphics/animations/characters/animation24.seq"

    .global gGfxPixAnimationChar25
gGfxPixAnimationChar25:
    .incbin "graphics/animations/characters/animation25.pix"

    .global gGfxSeqAnimationChar25
gGfxSeqAnimationChar25:
    .incbin "graphics/animations/characters/animation25.seq"

    .global gGfxPixAnimationChar26
gGfxPixAnimationChar26:
    .incbin "graphics/animations/characters/animation26.pix"

    .global gGfxSeqAnimationChar26
gGfxSeqAnimationChar26:
    .incbin "graphics/animations/characters/animation26.seq"

    .global gGfxPixAnimationChar27
gGfxPixAnimationChar27:
    .incbin "graphics/animations/characters/animation27.pix"

    .global gGfxSeqAnimationChar27
gGfxSeqAnimationChar27:
    .incbin "graphics/animations/characters/animation27.seq"

    .global gGfxPixAnimationChar28
gGfxPixAnimationChar28:
    .incbin "graphics/animations/characters/animation28.pix"

    .global gGfxSeqAnimationChar28
gGfxSeqAnimationChar28:
    .incbin "graphics/animations/characters/animation28.seq"

    .global gGfxPixAnimationChar29
gGfxPixAnimationChar29:
    .incbin "graphics/animations/characters/animation29.pix"

    .global gGfxSeqAnimationChar29
gGfxSeqAnimationChar29:
    .incbin "graphics/animations/characters/animation29.seq"

    .global gGfxPixAnimationChar30
gGfxPixAnimationChar30:
    .incbin "graphics/animations/characters/animation30.pix"

    .global gGfxSeqAnimationChar30
gGfxSeqAnimationChar30:
    .incbin "graphics/animations/characters/animation30.seq"

    .global gGfxPixAnimationChar31
gGfxPixAnimationChar31:
    .incbin "graphics/animations/characters/animation31.pix"

    .global gGfxSeqAnimationChar31
gGfxSeqAnimationChar31:
    .incbin "graphics/animations/characters/animation31.seq"

    .global gGfxPixAnimationChar32
gGfxPixAnimationChar32:
    .incbin "graphics/animations/characters/animation32.pix"

    .global gGfxSeqAnimationChar32
gGfxSeqAnimationChar32:
    .incbin "graphics/animations/characters/animation32.seq"

    .global gGfxPixAnimationChar33
gGfxPixAnimationChar33:
    .incbin "graphics/animations/characters/animation33.pix"

    .global gGfxSeqAnimationChar33
gGfxSeqAnimationChar33:
    .incbin "graphics/animations/characters/animation33.seq"

    .global gGfxPixAnimationChar34
gGfxPixAnimationChar34:
    .incbin "graphics/animations/characters/animation34.pix"

    .global gGfxSeqAnimationChar34
gGfxSeqAnimationChar34:
    .incbin "graphics/animations/characters/animation34.seq"

    .global gGfxPixAnimationChar35
gGfxPixAnimationChar35:
    .incbin "graphics/animations/characters/animation35.pix"

    .global gGfxSeqAnimationChar35
gGfxSeqAnimationChar35:
    .incbin "graphics/animations/characters/animation35.seq"

    .global gGfxPixAnimationTileset01
gGfxPixAnimationTileset01:
    .incbin "graphics/animations/tileset01.pix"

    .global gGfxSeqAnimation01
gGfxSeqAnimation01:
    .incbin "graphics/animations/animation01.seq"

    .global gGfxSeqAnimation02
gGfxSeqAnimation02:
    .incbin "graphics/animations/animation02.seq"

    .global gGfxSeqAnimation03
gGfxSeqAnimation03:
    .incbin "graphics/animations/animation03.seq"

    .global gGfxSeqAnimation04
gGfxSeqAnimation04:
    .incbin "graphics/animations/animation04.seq"

    .global gGfxSeqAnimation05
gGfxSeqAnimation05:
    .incbin "graphics/animations/animation05.seq"

    .global gGfxSeqAnimation06
gGfxSeqAnimation06:
    .incbin "graphics/animations/animation06.seq"

    .global gGfxSeqAnimation07
gGfxSeqAnimation07:
    .incbin "graphics/animations/animation07.seq"

    .global gGfxSeqAnimation08
gGfxSeqAnimation08:
    .incbin "graphics/animations/animation08.seq"

    .global gGfxSeqAnimation09
gGfxSeqAnimation09:
    .incbin "graphics/animations/animation09.seq"

    .global gGfxSeqAnimation10
gGfxSeqAnimation10:
    .incbin "graphics/animations/animation10.seq"

    .global gGfxSeqAnimation11
gGfxSeqAnimation11:
    .incbin "graphics/animations/animation11.seq"

    .global gGfxSeqAnimation12
gGfxSeqAnimation12:
    .incbin "graphics/animations/animation12.seq"

    .global gGfxSeqAnimation13
gGfxSeqAnimation13:
    .incbin "graphics/animations/animation13.seq"

    .global gGfxSeqAnimation14
gGfxSeqAnimation14:
    .incbin "graphics/animations/animation14.seq"

    .global gGfxSeqAnimation15
gGfxSeqAnimation15:
    .incbin "graphics/animations/animation15.seq"

    .global gGfxSeqAnimation16
gGfxSeqAnimation16:
    .incbin "graphics/animations/animation16.seq"

    .global gGfxSeqAnimation17
gGfxSeqAnimation17:
    .incbin "graphics/animations/animation17.seq"

    .global gGfxSeqAnimation18
gGfxSeqAnimation18:
    .incbin "graphics/animations/animation18.seq"

    .global gGfxSeqAnimation19
gGfxSeqAnimation19:
    .incbin "graphics/animations/animation19.seq"

    .global gGfxSeqAnimation20
gGfxSeqAnimation20:
    .incbin "graphics/animations/animation20.seq"

    .global gGfxSeqAnimation21
gGfxSeqAnimation21:
    .incbin "graphics/animations/animation21.seq"

    .global gGfxSeqAnimation22
gGfxSeqAnimation22:
    .incbin "graphics/animations/animation22.seq"

    .global gGfxSeqAnimation23
gGfxSeqAnimation23:
    .incbin "graphics/animations/animation23.seq"

    .global gGfxSeqAnimation24
gGfxSeqAnimation24:
    .incbin "graphics/animations/animation24.seq"

    .global gGfxSeqAnimation25
gGfxSeqAnimation25:
    .incbin "graphics/animations/animation25.seq"

    .global gGfxSeqAnimation26
gGfxSeqAnimation26:
    .incbin "graphics/animations/animation26.seq"

    .global gGfxSeqAnimation27
gGfxSeqAnimation27:
    .incbin "graphics/animations/animation27.seq"

    .global gGfxSeqAnimation28
gGfxSeqAnimation28:
    .incbin "graphics/animations/animation28.seq"

    .global gGfxSeqAnimation29
gGfxSeqAnimation29:
    .incbin "graphics/animations/animation29.seq"

    .global gGfxSeqAnimation30
gGfxSeqAnimation30:
    .incbin "graphics/animations/animation30.seq"

    .global gGfxSeqAnimation31
gGfxSeqAnimation31:
    .incbin "graphics/animations/animation31.seq"

    .global gGfxSeqAnimation32
gGfxSeqAnimation32:
    .incbin "graphics/animations/animation32.seq"

    .global gGfxSeqAnimation33
gGfxSeqAnimation33:
    .incbin "graphics/animations/animation33.seq"

    .global gGfxSeqAnimation34
gGfxSeqAnimation34:
    .incbin "graphics/animations/animation34.seq"

    .global gGfxPixAnimationTileset02
gGfxPixAnimationTileset02:
    .incbin "graphics/animations/tileset02.pix"

    .global gGfxSeqAnimation35
gGfxSeqAnimation35:
    .incbin "graphics/animations/animation35.seq"

    .global gGfxSeqAnimation36
gGfxSeqAnimation36:
    .incbin "graphics/animations/animation36.seq"

    .global gGfxSeqAnimation37
gGfxSeqAnimation37:
    .incbin "graphics/animations/animation37.seq"

    .global gGfxSeqAnimation38
gGfxSeqAnimation38:
    .incbin "graphics/animations/animation38.seq"

    .global gGfxSeqAnimation39
gGfxSeqAnimation39:
    .incbin "graphics/animations/animation39.seq"

    .global gGfxSeqAnimation40
gGfxSeqAnimation40:
    .incbin "graphics/animations/animation40.seq"

    .global gGfxSeqAnimation41
gGfxSeqAnimation41:
    .incbin "graphics/animations/animation41.seq"

    .global gGfxSeqAnimation42
gGfxSeqAnimation42:
    .incbin "graphics/animations/animation42.seq"

    .global gGfxSeqAnimation43
gGfxSeqAnimation43:
    .incbin "graphics/animations/animation43.seq"

    .global gGfxSeqAnimation44
gGfxSeqAnimation44:
    .incbin "graphics/animations/animation44.seq"

    .global gGfxSeqAnimation45
gGfxSeqAnimation45:
    .incbin "graphics/animations/animation45.seq"

    .global gGfxSeqAnimation46
gGfxSeqAnimation46:
    .incbin "graphics/animations/animation46.seq"

    .global gGfxSeqAnimation47
gGfxSeqAnimation47:
    .incbin "graphics/animations/animation47.seq"

    .global gGfxSeqAnimation48
gGfxSeqAnimation48:
    .incbin "graphics/animations/animation48.seq"

    .global gGfxSeqAnimation49
gGfxSeqAnimation49:
    .incbin "graphics/animations/animation49.seq"

    .global gGfxSeqAnimation50
gGfxSeqAnimation50:
    .incbin "graphics/animations/animation50.seq"

    .global gGfxSeqAnimation51
gGfxSeqAnimation51:
    .incbin "graphics/animations/animation51.seq"

    .global gGfxSeqAnimation52
gGfxSeqAnimation52:
    .incbin "graphics/animations/animation52.seq"

    .global gGfxSeqAnimation53
gGfxSeqAnimation53:
    .incbin "graphics/animations/animation53.seq"

    .global gGfxSeqAnimation54
gGfxSeqAnimation54:
    .incbin "graphics/animations/animation54.seq"

    .global gGfxSeqAnimation55
gGfxSeqAnimation55:
    .incbin "graphics/animations/animation55.seq"

    .global gGfxSeqAnimation56
gGfxSeqAnimation56:
    .incbin "graphics/animations/animation56.seq"

    .global gGfxSeqAnimation57
gGfxSeqAnimation57:
    .incbin "graphics/animations/animation57.seq"

    .global gGfxSeqAnimation58
gGfxSeqAnimation58:
    .incbin "graphics/animations/animation58.seq"

    .global gGfxSeqAnimation59
gGfxSeqAnimation59:
    .incbin "graphics/animations/animation59.seq"

    .global gGfxSeqAnimation60
gGfxSeqAnimation60:
    .incbin "graphics/animations/animation60.seq"

    .global gGfxSeqAnimation61
gGfxSeqAnimation61:
    .incbin "graphics/animations/animation61.seq"

    .global gGfxSeqAnimation62
gGfxSeqAnimation62:
    .incbin "graphics/animations/animation62.seq"

    .global gGfxSeqAnimation63
gGfxSeqAnimation63:
    .incbin "graphics/animations/animation63.seq"

    .global gGfxSeqAnimation64
gGfxSeqAnimation64:
    .incbin "graphics/animations/animation64.seq"

    .global gGfxSeqAnimation65
gGfxSeqAnimation65:
    .incbin "graphics/animations/animation65.seq"

    .global gGfxSeqAnimation66
gGfxSeqAnimation66:
    .incbin "graphics/animations/animation66.seq"

    .global gGfxSeqAnimation67
gGfxSeqAnimation67:
    .incbin "graphics/animations/animation67.seq"

    .global gGfxSeqAnimation68
gGfxSeqAnimation68:
    .incbin "graphics/animations/animation68.seq"

    .global gGfxSeqAnimation69
gGfxSeqAnimation69:
    .incbin "graphics/animations/animation69.seq"

    .global gGfxSeqAnimation70
gGfxSeqAnimation70:
    .incbin "graphics/animations/animation70.seq"

    .global gGfxSeqAnimation71
gGfxSeqAnimation71:
    .incbin "graphics/animations/animation71.seq"

    .global gGfxSeqAnimation72
gGfxSeqAnimation72:
    .incbin "graphics/animations/animation72.seq"

    .global gGfxSeqAnimation73
gGfxSeqAnimation73:
    .incbin "graphics/animations/animation73.seq"

    .global gGfxSeqAnimation74
gGfxSeqAnimation74:
    .incbin "graphics/animations/animation74.seq"

    .global gGfxSeqAnimation75
gGfxSeqAnimation75:
    .incbin "graphics/animations/animation75.seq"

    .global gGfxSeqAnimation76
gGfxSeqAnimation76:
    .incbin "graphics/animations/animation76.seq"

    .global gGfxSeqAnimation77
gGfxSeqAnimation77:
    .incbin "graphics/animations/animation77.seq"

    .global gGfxSeqAnimation78
gGfxSeqAnimation78:
    .incbin "graphics/animations/animation78.seq"

    .global gGfxSeqAnimation79
gGfxSeqAnimation79:
    .incbin "graphics/animations/animation79.seq"

    .global gGfxSeqAnimation80
gGfxSeqAnimation80:
    .incbin "graphics/animations/animation80.seq"

    .global gGfxSeqAnimation81
gGfxSeqAnimation81:
    .incbin "graphics/animations/animation81.seq"

    .global gGfxSeqAnimation82
gGfxSeqAnimation82:
    .incbin "graphics/animations/animation82.seq"

    .global gGfxSeqAnimation83
gGfxSeqAnimation83:
    .incbin "graphics/animations/animation83.seq"

    .global gGfxSeqAnimation84
gGfxSeqAnimation84:
    .incbin "graphics/animations/animation84.seq"

    .global gGfxSeqAnimation85
gGfxSeqAnimation85:
    .incbin "graphics/animations/animation85.seq"

    .global gGfxSeqAnimation86
gGfxSeqAnimation86:
    .incbin "graphics/animations/animation86.seq"

    .global gGfxSeqAnimation87
gGfxSeqAnimation87:
    .incbin "graphics/animations/animation87.seq"

    .global gGfxSeqAnimation88
gGfxSeqAnimation88:
    .incbin "graphics/animations/animation88.seq"

    .global gGfxSeqAnimation89
gGfxSeqAnimation89:
    .incbin "graphics/animations/animation89.seq"

    .global gGfxSeqAnimation90
gGfxSeqAnimation90:
    .incbin "graphics/animations/animation90.seq"

    .global gGfxSeqAnimation91
gGfxSeqAnimation91:
    .incbin "graphics/animations/animation91.seq"

    .global gGfxSeqAnimation92
gGfxSeqAnimation92:
    .incbin "graphics/animations/animation92.seq"

    .global gGfxSeqAnimation93
gGfxSeqAnimation93:
    .incbin "graphics/animations/animation93.seq"

    .global gGfxSeqAnimation94
gGfxSeqAnimation94:
    .incbin "graphics/animations/animation94.seq"

    .global gGfxSeqAnimation95
gGfxSeqAnimation95:
    .incbin "graphics/animations/animation95.seq"

    .global gGfxSeqAnimation96
gGfxSeqAnimation96:
    .incbin "graphics/animations/animation96.seq"

    .global gGfxSeqAnimation97
gGfxSeqAnimation97:
    .incbin "graphics/animations/animation97.seq"

    .global gGfxSeqAnimation98
gGfxSeqAnimation98:
    .incbin "graphics/animations/animation98.seq"

    .global gGfxSeqAnimation99
gGfxSeqAnimation99:
    .incbin "graphics/animations/animation99.seq"

    .global gGfxSeqAnimation100
gGfxSeqAnimation100:
    .incbin "graphics/animations/animation100.seq"

    .global gGfxSeqAnimation101
gGfxSeqAnimation101:
    .incbin "graphics/animations/animation101.seq"

    .global gGfxSeqAnimation102
gGfxSeqAnimation102:
    .incbin "graphics/animations/animation102.seq"

    .global gGfxSeqAnimation103
gGfxSeqAnimation103:
    .incbin "graphics/animations/animation103.seq"

    .global gGfxSeqAnimation104
gGfxSeqAnimation104:
    .incbin "graphics/animations/animation104.seq"

    .global gGfxSeqAnimation105
gGfxSeqAnimation105:
    .incbin "graphics/animations/animation105.seq"

    .global gGfxSeqAnimation106
gGfxSeqAnimation106:
    .incbin "graphics/animations/animation106.seq"

    .global gGfxSeqAnimation107
gGfxSeqAnimation107:
    .incbin "graphics/animations/animation107.seq"

    .global gGfxSeqAnimation108
gGfxSeqAnimation108:
    .incbin "graphics/animations/animation108.seq"

    .global gGfxSeqAnimation109
gGfxSeqAnimation109:
    .incbin "graphics/animations/animation109.seq"

    .global gGfxSeqAnimation110
gGfxSeqAnimation110:
    .incbin "graphics/animations/animation110.seq"

    .global gGfxSeqAnimation111
gGfxSeqAnimation111:
    .incbin "graphics/animations/animation111.seq"

    .global gGfxPixAnimationTileset03
gGfxPixAnimationTileset03:
    .incbin "graphics/animations/tileset03.pix"
