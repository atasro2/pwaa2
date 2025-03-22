#ifndef GUARD_GRAPHICS_H
#define GUARD_GRAPHICS_H

#define GFX_BASE_ADDR 0X8130000

#define GFX_PALETTE_title_screen ((u8*)(GFX_BASE_ADDR + 0X0))
#define superblah ((u8*)(GFX_BASE_ADDR + 0X0))

#define GFX_IMG_title_screen ((u8*)(GFX_BASE_ADDR + 0X200))

#define GFX_PALETTE_title_screen_demo ((u8*)(GFX_BASE_ADDR + 0X40E4))

#define GFX_IMG_title_screen_demo ((u8*)(GFX_BASE_ADDR + 0X42E4))

#define GFX_IMG_unused_ascii_charset ((u8*)(GFX_BASE_ADDR + 0X70FC))

#define GFX_PALETTE_evidence_profile_descriptions ((u8*)(GFX_BASE_ADDR + 0X78FC))

#define GFX_IMG_save_game_tiles ((u8*)(GFX_BASE_ADDR + 0X791C))

#define GFX_IMG_nametags ((u8*)(GFX_BASE_ADDR + 0X891C))

#define GFX_IMG_detention_center_bottom_tiles ((u8*)(GFX_BASE_ADDR + 0XD91C))

#define GFX_IMG_left_right_arrows ((u8*)(GFX_BASE_ADDR + 0XD97C))

#define GFX_IMG_unk_13DC7C ((u8*)(GFX_BASE_ADDR + 0XDC7C))

#define GFX_IMG_unused_testimony_characters ((u8*)(GFX_BASE_ADDR + 0XE0FC))

#define GFX_IMG_action_buttons ((u8*)(GFX_BASE_ADDR + 0X100FC))

#define GFX_IMG_controller_buttons ((u8*)(GFX_BASE_ADDR + 0X110FC))

#define GFX_IMG_scroll_prompt ((u8*)(GFX_BASE_ADDR + 0X112FC))

#define GFX_IMG_testimony_text_tiles ((u8*)(GFX_BASE_ADDR + 0X114FC))

#define GFX_IMG_press_present_buttons ((u8*)(GFX_BASE_ADDR + 0X11CFC))

#define GFX_IMG_present_back_text ((u8*)(GFX_BASE_ADDR + 0X120FC))

#define GFX_IMG_profiles_text ((u8*)(GFX_BASE_ADDR + 0X122FC))

#define GFX_IMG_evidence_text ((u8*)(GFX_BASE_ADDR + 0X124FC))

#define GFX_IMG_examine_cursor ((u8*)(GFX_BASE_ADDR + 0X126FC))

#define GFX_IMG_checkmark ((u8*)(GFX_BASE_ADDR + 0X12BFC))

#define GFX_IMG_game_over_doors ((u8*)(GFX_BASE_ADDR + 0X12DFC))

#define GFX_IMG_not_guilty1 ((u8*)(GFX_BASE_ADDR + 0X130DC))

#define GFX_IMG_guilty1 ((u8*)(GFX_BASE_ADDR + 0X138DC))

#define GFX_IMG_guilty_not_guilty2 ((u8*)(GFX_BASE_ADDR + 0X140DC))

#define GFX_IMG_game_over_text ((u8*)(GFX_BASE_ADDR + 0X148DC))

#define GFX_IMG_new_game_continue ((u8*)(GFX_BASE_ADDR + 0X158DC))

#define GFX_IMG_confetti ((u8*)(GFX_BASE_ADDR + 0X15CDC))

#define GFX_IMG_witness_bench_1 ((u8*)(GFX_BASE_ADDR + 0X15CFC))

#define GFX_IMG_witness_bench_2 ((u8*)(GFX_BASE_ADDR + 0X160FC))

#define GFX_IMG_counsel_bench_1 ((u8*)(GFX_BASE_ADDR + 0X162FC))

#define GFX_IMG_counsel_bench_2 ((u8*)(GFX_BASE_ADDR + 0X166FC))

#define GFX_IMG_counsel_bench_3 ((u8*)(GFX_BASE_ADDR + 0X16AFC))

#define GFX_IMG_counsel_bench_4 ((u8*)(GFX_BASE_ADDR + 0X16EFC))

#define GFX_IMG_stop_button ((u8*)(GFX_BASE_ADDR + 0X16FFC))

#define GFX_IMG_psyche_lock ((u8*)(GFX_BASE_ADDR + 0X171FC))

#define GFX_IMG_healthbar_frame_1 ((u8*)(GFX_BASE_ADDR + 0X173FC))

#define GFX_IMG_healthbar_frame_2 ((u8*)(GFX_BASE_ADDR + 0X1747C))

#define GFX_IMG_healthbar_frame_3 ((u8*)(GFX_BASE_ADDR + 0X1757C))

#define GFX_IMG_healthbar_progress ((u8*)(GFX_BASE_ADDR + 0X175FC))

#define GFX_IMG_psyche_lock_chain_tileset ((u8*)(GFX_BASE_ADDR + 0X1777C))

#define GFX_TILEMAP_psyche_lock_chain_animation_01 ((u8*)(GFX_BASE_ADDR + 0X189E8))

#define GFX_TILEMAP_psyche_lock_chain_animation_02 ((u8*)(GFX_BASE_ADDR + 0X18C20))

#define GFX_TILEMAP_psyche_lock_chain_animation_03 ((u8*)(GFX_BASE_ADDR + 0X19010))

#define GFX_TILEMAP_psyche_lock_chain_animation_04 ((u8*)(GFX_BASE_ADDR + 0X19444))

#define GFX_TILEMAP_psyche_lock_chain_animation_05 ((u8*)(GFX_BASE_ADDR + 0X19AB0))

#define GFX_TILEMAP_psyche_lock_chain_animation_06 ((u8*)(GFX_BASE_ADDR + 0X1A224))

#define GFX_TILEMAP_psyche_lock_chain_animation_07 ((u8*)(GFX_BASE_ADDR + 0X1A3A8))

#define GFX_TILEMAP_psyche_lock_chain_animation_08 ((u8*)(GFX_BASE_ADDR + 0X1A610))

#define GFX_TILEMAP_psyche_lock_chain_animation_09 ((u8*)(GFX_BASE_ADDR + 0X1AA70))

#define GFX_TILEMAP_psyche_lock_chain_animation_10 ((u8*)(GFX_BASE_ADDR + 0X1AED0))

#define GFX_TILEMAP_psyche_lock_chain_animation_11 ((u8*)(GFX_BASE_ADDR + 0X1B6E4))

#define GFX_TILEMAP_psyche_lock_chain_animation_12 ((u8*)(GFX_BASE_ADDR + 0X1B944))

#define GFX_TILEMAP_psyche_lock_chain_animation_13 ((u8*)(GFX_BASE_ADDR + 0X1BCE4))

#define GFX_TILEMAP_psyche_lock_chain_animation_14 ((u8*)(GFX_BASE_ADDR + 0X1C094))

#define GFX_TILEMAP_psyche_lock_chain_animation_15 ((u8*)(GFX_BASE_ADDR + 0X1C58C))

#define GFX_TILEMAP_psyche_lock_chain_animation_16 ((u8*)(GFX_BASE_ADDR + 0X1CAA0))

#define GFX_TILEMAP_psyche_lock_chain_animation_17 ((u8*)(GFX_BASE_ADDR + 0X1CC38))

#define GFX_TILEMAP_psyche_lock_chain_animation_18 ((u8*)(GFX_BASE_ADDR + 0X1CEE4))

#define GFX_TILEMAP_psyche_lock_chain_animation_19 ((u8*)(GFX_BASE_ADDR + 0X1D218))

#define GFX_TILEMAP_psyche_lock_chain_animation_20 ((u8*)(GFX_BASE_ADDR + 0X1D5A4))

#define GFX_PALETTE_unk_14DA60 ((u8*)(GFX_BASE_ADDR + 0X1DA60))

#define GFX_PALETTE_unk_14DA80 ((u8*)(GFX_BASE_ADDR + 0X1DA80))

#define GFX_PALETTE_unk_194100 ((u8*)(GFX_BASE_ADDR + 0X1DAA0))

#define GFX_PALETTE_action_buttons_0 ((u8*)(GFX_BASE_ADDR + 0X1DBA0))

#define GFX_PALETTE_action_buttons_1 ((u8*)(GFX_BASE_ADDR + 0X1DBC0))

#define GFX_PALETTE_controls_blurb ((u8*)(GFX_BASE_ADDR + 0X1DBE0))

#define GFX_PALETTE_scroll_prompt ((u8*)(GFX_BASE_ADDR + 0X1DC00))

#define GFX_PALETTE_testimony_text_tiles ((u8*)(GFX_BASE_ADDR + 0X1DC20))

#define GFX_PALETTE_press_present_buttons ((u8*)(GFX_BASE_ADDR + 0X1DC40))

#define GFX_PALETTE_examine_cursor_00 ((u8*)(GFX_BASE_ADDR + 0X1DC60))

#define GFX_PALETTE_examine_cursor_01 ((u8*)(GFX_BASE_ADDR + 0X1DC80))

#define GFX_PALETTE_examine_cursor_02 ((u8*)(GFX_BASE_ADDR + 0X1DCA0))

#define GFX_PALETTE_examine_cursor_03 ((u8*)(GFX_BASE_ADDR + 0X1DCC0))

#define GFX_PALETTE_examine_cursor_04 ((u8*)(GFX_BASE_ADDR + 0X1DCE0))

#define GFX_PALETTE_examine_cursor_05 ((u8*)(GFX_BASE_ADDR + 0X1DD00))

#define GFX_PALETTE_examine_cursor_06 ((u8*)(GFX_BASE_ADDR + 0X1DD20))

#define GFX_PALETTE_examine_cursor_07 ((u8*)(GFX_BASE_ADDR + 0X1DD40))

#define GFX_PALETTE_examine_cursor_08 ((u8*)(GFX_BASE_ADDR + 0X1DD60))

#define GFX_PALETTE_examine_cursor_09 ((u8*)(GFX_BASE_ADDR + 0X1DD80))

#define GFX_PALETTE_examine_cursor_10 ((u8*)(GFX_BASE_ADDR + 0X1DDA0))

#define GFX_PALETTE_examine_cursor_11 ((u8*)(GFX_BASE_ADDR + 0X1DDC0))

#define GFX_PALETTE_examine_cursor_12 ((u8*)(GFX_BASE_ADDR + 0X1DDE0))

#define GFX_PALETTE_examine_cursor_13 ((u8*)(GFX_BASE_ADDR + 0X1DE00))

#define GFX_PALETTE_examine_cursor_14 ((u8*)(GFX_BASE_ADDR + 0X1DE20))

#define GFX_PALETTE_examine_cursor_15 ((u8*)(GFX_BASE_ADDR + 0X1DE40))

#define GFX_PALETTE_examine_cursor_16 ((u8*)(GFX_BASE_ADDR + 0X1DE60))

#define GFX_PALETTE_checkmark ((u8*)(GFX_BASE_ADDR + 0X1DE80))

#define GFX_PALETTE_game_over_doors ((u8*)(GFX_BASE_ADDR + 0X1DEA0))

#define GFX_PALETTE_guilty ((u8*)(GFX_BASE_ADDR + 0X1DEC0))

#define GFX_PALETTE_not_guilty ((u8*)(GFX_BASE_ADDR + 0X1DEE0))

#define GFX_PALETTE_game_over_text ((u8*)(GFX_BASE_ADDR + 0X1DF00))

#define GFX_PALETTE_new_game_continue_0 ((u8*)(GFX_BASE_ADDR + 0X1DF20))

#define GFX_PALETTE_new_game_continue_1 ((u8*)(GFX_BASE_ADDR + 0X1DF40))

#define GFX_PALETTE_new_game_continue_2 ((u8*)(GFX_BASE_ADDR + 0X1DF60))

#define GFX_PALETTE_new_game_continue_3 ((u8*)(GFX_BASE_ADDR + 0X1DF80))

#define GFX_PALETTE_new_game_continue_4 ((u8*)(GFX_BASE_ADDR + 0X1DFA0))

#define GFX_PALETTE_new_game_continue_5 ((u8*)(GFX_BASE_ADDR + 0X1DFC0))

#define GFX_PALETTE_confetti_0 ((u8*)(GFX_BASE_ADDR + 0X1DFE0))

#define GFX_PALETTE_confetti_1 ((u8*)(GFX_BASE_ADDR + 0X1E000))

#define GFX_PALETTE_confetti_2 ((u8*)(GFX_BASE_ADDR + 0X1E020))

#define GFX_PALETTE_confetti_3 ((u8*)(GFX_BASE_ADDR + 0X1E040))

#define GFX_PALETTE_unk_14E060 ((u8*)(GFX_BASE_ADDR + 0X1E060))

#define GFX_PALETTE_witness_bench ((u8*)(GFX_BASE_ADDR + 0X1E0E0))

#define GFX_PALETTE_counsel_bench ((u8*)(GFX_BASE_ADDR + 0X1E100))

#define GFX_PALETTE_case1_opening_purple_cloud_palettes ((u8*)(GFX_BASE_ADDR + 0X1E120))

#define GFX_PALETTE_psyche_lock ((u8*)(GFX_BASE_ADDR + 0X1E320))

#define GFX_PALETTE_healthbar_frame ((u8*)(GFX_BASE_ADDR + 0X1E340))

#define GFX_PALETTE_healthbar_progress_1 ((u8*)(GFX_BASE_ADDR + 0X1E360))

#define GFX_PALETTE_healthbar_progress_2 ((u8*)(GFX_BASE_ADDR + 0X1E380))

#define GFX_PALETTE_healthbar_progress_3 ((u8*)(GFX_BASE_ADDR + 0X1E3A0))

#define GFX_PALETTE_healthbar_progress_4 ((u8*)(GFX_BASE_ADDR + 0X1E3C0))

#define GFX_PALETTE_healthbar_progress_5 ((u8*)(GFX_BASE_ADDR + 0X1E3E0))

#define GFX_PALETTE_healthbar_progress_6 ((u8*)(GFX_BASE_ADDR + 0X1E400))

#define GFX_PALETTE_healthbar_progress_7 ((u8*)(GFX_BASE_ADDR + 0X1E420))

#define GFX_PALETTE_healthbar_progress_8 ((u8*)(GFX_BASE_ADDR + 0X1E440))

#define GFX_IMG_episode_select_options ((u8*)(GFX_BASE_ADDR + 0X1E460))

#define GFX_IMG_from_save_or_beginning_options ((u8*)(GFX_BASE_ADDR + 0X1F0C4))

#define GFX_IMG_save_yes_no ((u8*)(GFX_BASE_ADDR + 0X200C4))

#define GFX_IMG_desc_maggey_byrde ((u8*)(GFX_BASE_ADDR + 0X208C4))

#define GFX_IMG_desc_winston_payne ((u8*)(GFX_BASE_ADDR + 0X20CCC))

#define GFX_IMG_desc_dick_gumshoe ((u8*)(GFX_BASE_ADDR + 0X21104))

#define GFX_IMG_desc_dustin_prince ((u8*)(GFX_BASE_ADDR + 0X21568))

#define GFX_IMG_desc_maya_fey_0 ((u8*)(GFX_BASE_ADDR + 0X219B8))

#define GFX_IMG_desc_phoenix_badge ((u8*)(GFX_BASE_ADDR + 0X21D54))

#define GFX_IMG_desc_phoenix_cellphone_0 ((u8*)(GFX_BASE_ADDR + 0X22124))

#define GFX_IMG_desc_generic_autopsy_report_0 ((u8*)(GFX_BASE_ADDR + 0X224CC))

#define GFX_IMG_desc_generic_photo_0 ((u8*)(GFX_BASE_ADDR + 0X22970))

#define GFX_IMG_desc_broken_glasses ((u8*)(GFX_BASE_ADDR + 0X22DBC))

#define GFX_IMG_desc_generic_photo_1 ((u8*)(GFX_BASE_ADDR + 0X231C8))

#define GFX_IMG_desc_dustins_baseball_glove ((u8*)(GFX_BASE_ADDR + 0X235F8))

#define GFX_IMG_desc_generic_letter_0 ((u8*)(GFX_BASE_ADDR + 0X239C8))

#define GFX_IMG_desc_generic_letter_1 ((u8*)(GFX_BASE_ADDR + 0X23DE8))

#define GFX_IMG_desc_phoenix_cellphone_1 ((u8*)(GFX_BASE_ADDR + 0X2421C))

#define GFX_IMG_desc_phoenix_business_card_0 ((u8*)(GFX_BASE_ADDR + 0X2464C))

#define GFX_IMG_desc_phoenix_business_card_1 ((u8*)(GFX_BASE_ADDR + 0X24AD0))

#define GFX_IMG_desc_mayas_cellphone ((u8*)(GFX_BASE_ADDR + 0X24F20))

#define GFX_IMG_desc_richard_wellington ((u8*)(GFX_BASE_ADDR + 0X2523C))

#define GFX_IMG_desc_turner_grey_0 ((u8*)(GFX_BASE_ADDR + 0X2566C))

#define GFX_IMG_desc_turner_grey_1 ((u8*)(GFX_BASE_ADDR + 0X25AE4))

#define GFX_IMG_desc_pearl_fey_0 ((u8*)(GFX_BASE_ADDR + 0X25FBC))

#define GFX_IMG_desc_pearl_fey_1 ((u8*)(GFX_BASE_ADDR + 0X263D0))

#define GFX_IMG_desc_maya_fey_1 ((u8*)(GFX_BASE_ADDR + 0X2680C))

#define GFX_IMG_desc_maya_fey_2 ((u8*)(GFX_BASE_ADDR + 0X26C20))

#define GFX_IMG_desc_mia_fey ((u8*)(GFX_BASE_ADDR + 0X270B8))

#define GFX_IMG_desc_lotta_hart_0 ((u8*)(GFX_BASE_ADDR + 0X27500))

#define GFX_IMG_desc_morgan_fey_0 ((u8*)(GFX_BASE_ADDR + 0X27904))

#define GFX_IMG_desc_morgan_fey_1 ((u8*)(GFX_BASE_ADDR + 0X27D08))

#define GFX_IMG_desc_mimi_miney ((u8*)(GFX_BASE_ADDR + 0X28134))

#define GFX_IMG_desc_ini_miney_0 ((u8*)(GFX_BASE_ADDR + 0X285C4))

#define GFX_IMG_desc_ini_miney_1 ((u8*)(GFX_BASE_ADDR + 0X289AC))

#define GFX_IMG_desc_franziska_von_karma_0 ((u8*)(GFX_BASE_ADDR + 0X28E10))

#define GFX_IMG_desc_ami_fey ((u8*)(GFX_BASE_ADDR + 0X29200))

#define GFX_IMG_desc_dr_hotti ((u8*)(GFX_BASE_ADDR + 0X2965C))

#define GFX_IMG_desc_generic_photo_2 ((u8*)(GFX_BASE_ADDR + 0X29AA4))

#define GFX_IMG_desc_generic_photo_3 ((u8*)(GFX_BASE_ADDR + 0X29EEC))

#define GFX_IMG_desc_generic_autopsy_report_1 ((u8*)(GFX_BASE_ADDR + 0X2A350))

#define GFX_IMG_desc_generic_autopsy_report_2 ((u8*)(GFX_BASE_ADDR + 0X2A7F4))

#define GFX_IMG_desc_newspaper_article ((u8*)(GFX_BASE_ADDR + 0X2ACC8))

#define GFX_IMG_desc_generic_newspaper_clipping_0 ((u8*)(GFX_BASE_ADDR + 0X2B100))

#define GFX_IMG_desc_generic_newspaper_clipping_1 ((u8*)(GFX_BASE_ADDR + 0X2B5CC))

#define GFX_IMG_desc_magatama_discharged ((u8*)(GFX_BASE_ADDR + 0X2B9F0))

#define GFX_IMG_desc_magatama_charged ((u8*)(GFX_BASE_ADDR + 0X2BDE0))

#define GFX_IMG_desc_meeting_room_screen ((u8*)(GFX_BASE_ADDR + 0X2C1C0))

#define GFX_IMG_desc_meeting_room_key ((u8*)(GFX_BASE_ADDR + 0X2C590))

#define GFX_IMG_desc_greys_gun ((u8*)(GFX_BASE_ADDR + 0X2C9A0))

#define GFX_IMG_desc_mayas_knife ((u8*)(GFX_BASE_ADDR + 0X2CE18))

#define GFX_IMG_desc_mayas_robe_0 ((u8*)(GFX_BASE_ADDR + 0X2D230))

#define GFX_IMG_desc_mayas_robe_1 ((u8*)(GFX_BASE_ADDR + 0X2D668))

#define GFX_IMG_desc_001828C8_0 ((u8*)(GFX_BASE_ADDR + 0X2DA90))

#define GFX_IMG_desc_001828C8_1 ((u8*)(GFX_BASE_ADDR + 0X2DEB4))

#define GFX_IMG_desc_001828C8_2 ((u8*)(GFX_BASE_ADDR + 0X2E2E4))

#define GFX_IMG_desc_kurain_sacred_urn_0 ((u8*)(GFX_BASE_ADDR + 0X2E73C))

#define GFX_IMG_desc_kurain_sacred_urn_1 ((u8*)(GFX_BASE_ADDR + 0X2EB38))

#define GFX_IMG_desc_swatch_from_mayas_robe ((u8*)(GFX_BASE_ADDR + 0X2EFC0))

#define GFX_IMG_desc_pearls_ball ((u8*)(GFX_BASE_ADDR + 0X2F3CC))

#define GFX_IMG_desc_large_box ((u8*)(GFX_BASE_ADDR + 0X2F7C8))

#define GFX_IMG_desc_ini_miney_2 ((u8*)(GFX_BASE_ADDR + 0X2FBC4))

#define GFX_IMG_desc_note_from_the_safe_0 ((u8*)(GFX_BASE_ADDR + 0X3000C))

#define GFX_IMG_desc_maya_fey_3 ((u8*)(GFX_BASE_ADDR + 0X30318))

#define GFX_IMG_desc_maximillion_galactica ((u8*)(GFX_BASE_ADDR + 0X30758))

#define GFX_IMG_desc_franziska_von_karma_1 ((u8*)(GFX_BASE_ADDR + 0X30B6C))

#define GFX_IMG_desc_russell_berry ((u8*)(GFX_BASE_ADDR + 0X30F68))

#define GFX_IMG_desc_regina_berry ((u8*)(GFX_BASE_ADDR + 0X31378))

#define GFX_IMG_desc_ben_0 ((u8*)(GFX_BASE_ADDR + 0X31764))

#define GFX_IMG_desc_ben_1 ((u8*)(GFX_BASE_ADDR + 0X31B40))

#define GFX_IMG_desc_moe ((u8*)(GFX_BASE_ADDR + 0X31EF8))

#define GFX_IMG_desc_acro_0 ((u8*)(GFX_BASE_ADDR + 0X322C4))

#define GFX_IMG_desc_acro_1 ((u8*)(GFX_BASE_ADDR + 0X3264C))

#define GFX_IMG_desc_bat ((u8*)(GFX_BASE_ADDR + 0X32A54))

#define GFX_IMG_desc_generic_photo_4 ((u8*)(GFX_BASE_ADDR + 0X32E54))

#define GFX_IMG_desc_max_silk_hat ((u8*)(GFX_BASE_ADDR + 0X33274))

#define GFX_IMG_desc_generic_photo_5 ((u8*)(GFX_BASE_ADDR + 0X3365C))

#define GFX_IMG_desc_generic_letter_2 ((u8*)(GFX_BASE_ADDR + 0X33A80))

#define GFX_IMG_desc_max_poster ((u8*)(GFX_BASE_ADDR + 0X33EB8))

#define GFX_IMG_desc_broken_bottle ((u8*)(GFX_BASE_ADDR + 0X342BC))

#define GFX_IMG_desc_trilo ((u8*)(GFX_BASE_ADDR + 0X34670))

#define GFX_IMG_desc_money ((u8*)(GFX_BASE_ADDR + 0X34A14))

#define GFX_IMG_desc_generic_autopsy_report_3 ((u8*)(GFX_BASE_ADDR + 0X34DD4))

#define GFX_IMG_desc_large_chest ((u8*)(GFX_BASE_ADDR + 0X35280))

#define GFX_IMG_desc_pepper ((u8*)(GFX_BASE_ADDR + 0X35670))

#define GFX_IMG_desc_engagement_ring ((u8*)(GFX_BASE_ADDR + 0X35AA0))

#define GFX_IMG_desc_generic_photo_6 ((u8*)(GFX_BASE_ADDR + 0X35EA4))

#define GFX_IMG_desc_generic_photo_7 ((u8*)(GFX_BASE_ADDR + 0X362C0))

#define GFX_IMG_desc_threatening_note_torn ((u8*)(GFX_BASE_ADDR + 0X3670C))

#define GFX_IMG_desc_threatening_note_full_0 ((u8*)(GFX_BASE_ADDR + 0X36B4C))

#define GFX_IMG_desc_threatening_note_full_1 ((u8*)(GFX_BASE_ADDR + 0X36F74))

#define GFX_IMG_desc_threatening_note_full_2 ((u8*)(GFX_BASE_ADDR + 0X37370))

#define GFX_IMG_desc_leon ((u8*)(GFX_BASE_ADDR + 0X3777C))

#define GFX_IMG_desc_reginas_west ((u8*)(GFX_BASE_ADDR + 0X37B98))

#define GFX_IMG_desc_bloody_scarf ((u8*)(GFX_BASE_ADDR + 0X37F64))

#define GFX_IMG_desc_regent ((u8*)(GFX_BASE_ADDR + 0X38378))

#define GFX_IMG_desc_threatening_note_full_3 ((u8*)(GFX_BASE_ADDR + 0X38650))

#define GFX_IMG_desc_milk ((u8*)(GFX_BASE_ADDR + 0X38994))

#define GFX_IMG_desc_playing_card ((u8*)(GFX_BASE_ADDR + 0X38C6C))

#define GFX_IMG_desc_playing_cards ((u8*)(GFX_BASE_ADDR + 0X38F38))

#define GFX_IMG_desc_moes_grapes ((u8*)(GFX_BASE_ADDR + 0X39228))

#define GFX_IMG_desc_will_powers ((u8*)(GFX_BASE_ADDR + 0X39504))

#define GFX_IMG_desc_wendy_oldbag ((u8*)(GFX_BASE_ADDR + 0X398E4))

#define GFX_IMG_desc_lotta_hart_1 ((u8*)(GFX_BASE_ADDR + 0X39CC8))

#define GFX_IMG_desc_juan_corrida ((u8*)(GFX_BASE_ADDR + 0X3A0C0))

#define GFX_IMG_desc_matt_engarde_0 ((u8*)(GFX_BASE_ADDR + 0X3A528))

#define GFX_IMG_desc_matt_engarde_1 ((u8*)(GFX_BASE_ADDR + 0X3A92C))

#define GFX_IMG_desc_adrian_andrews ((u8*)(GFX_BASE_ADDR + 0X3AD64))

#define GFX_IMG_desc_celeste_inpax_0 ((u8*)(GFX_BASE_ADDR + 0X3B188))

#define GFX_IMG_desc_celeste_inpax_1 ((u8*)(GFX_BASE_ADDR + 0X3B5E4))

#define GFX_IMG_desc_disguised_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0X3BA60))

#define GFX_IMG_desc_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0X3BEC8))

#define GFX_IMG_desc_miles_edgeworth ((u8*)(GFX_BASE_ADDR + 0X3C304))

#define GFX_IMG_desc_admission_ticket ((u8*)(GFX_BASE_ADDR + 0X3C748))

#define GFX_IMG_desc_transceiver_0 ((u8*)(GFX_BASE_ADDR + 0X3CB90))

#define GFX_IMG_desc_transceiver_1 ((u8*)(GFX_BASE_ADDR + 0X3CF80))

#define GFX_IMG_desc_lottas_camera_case_0 ((u8*)(GFX_BASE_ADDR + 0X3D35C))

#define GFX_IMG_desc_lottas_camera_case_1 ((u8*)(GFX_BASE_ADDR + 0X3D774))

#define GFX_IMG_desc_generic_photo_8 ((u8*)(GFX_BASE_ADDR + 0X3DB84))

#define GFX_IMG_desc_guitar_case_0 ((u8*)(GFX_BASE_ADDR + 0X3DFC4))

#define GFX_IMG_desc_guitar_case_1 ((u8*)(GFX_BASE_ADDR + 0X3E3E8))

#define GFX_IMG_desc_tomato_juice_0 ((u8*)(GFX_BASE_ADDR + 0X3E810))

#define GFX_IMG_desc_bloody_button ((u8*)(GFX_BASE_ADDR + 0X3EC1C))

#define GFX_IMG_desc_generic_photo_9 ((u8*)(GFX_BASE_ADDR + 0X3F0A4))

#define GFX_IMG_desc_generic_envelope_0 ((u8*)(GFX_BASE_ADDR + 0X3F4FC))

#define GFX_IMG_desc_generic_envelope_1 ((u8*)(GFX_BASE_ADDR + 0X3F998))

#define GFX_IMG_desc_juans_autograph ((u8*)(GFX_BASE_ADDR + 0X3FE30))

#define GFX_IMG_desc_gossip_column ((u8*)(GFX_BASE_ADDR + 0X40210))

#define GFX_IMG_desc_generic_autopsy_report_4 ((u8*)(GFX_BASE_ADDR + 0X40678))

#define GFX_IMG_desc_bloody_knife ((u8*)(GFX_BASE_ADDR + 0X40B20))

#define GFX_IMG_desc_generic_photo_10 ((u8*)(GFX_BASE_ADDR + 0X40F70))

#define GFX_IMG_desc_shellys_calling_card ((u8*)(GFX_BASE_ADDR + 0X413B4))

#define GFX_IMG_desc_note_from_the_safe_1 ((u8*)(GFX_BASE_ADDR + 0X417BC))

#define GFX_IMG_desc_video_camera ((u8*)(GFX_BASE_ADDR + 0X41BC4))

#define GFX_IMG_desc_video_transmitter ((u8*)(GFX_BASE_ADDR + 0X42060))

#define GFX_IMG_desc_imported_bear ((u8*)(GFX_BASE_ADDR + 0X42478))

#define GFX_IMG_desc_receipt ((u8*)(GFX_BASE_ADDR + 0X4288C))

#define GFX_IMG_desc_bear_puzzle_0 ((u8*)(GFX_BASE_ADDR + 0X42D00))

#define GFX_IMG_desc_bear_puzzle_1 ((u8*)(GFX_BASE_ADDR + 0X4311C))

#define GFX_IMG_desc_photo_of_celeste ((u8*)(GFX_BASE_ADDR + 0X43544))

#define GFX_IMG_desc_note_from_the_safe_2 ((u8*)(GFX_BASE_ADDR + 0X4399C))

#define GFX_IMG_desc_note_from_the_safe_3 ((u8*)(GFX_BASE_ADDR + 0X43DE8))

#define GFX_IMG_desc_generic_affidavit_0 ((u8*)(GFX_BASE_ADDR + 0X440C8))

#define GFX_IMG_desc_generic_affidavit_1 ((u8*)(GFX_BASE_ADDR + 0X443A0))

#define GFX_IMG_desc_bear_clock ((u8*)(GFX_BASE_ADDR + 0X447CC))

#define GFX_IMG_desc_frequency_detector ((u8*)(GFX_BASE_ADDR + 0X44AA8))

#define GFX_IMG_desc_shoe ((u8*)(GFX_BASE_ADDR + 0X44D74))

#define GFX_IMG_desc_bellboy_uniform_0 ((u8*)(GFX_BASE_ADDR + 0X45034))

#define GFX_IMG_desc_bellboy_uniform_1 ((u8*)(GFX_BASE_ADDR + 0X45484))

#define GFX_IMG_desc_generic_video_0 ((u8*)(GFX_BASE_ADDR + 0X458CC))

#define GFX_IMG_desc_generic_video_1 ((u8*)(GFX_BASE_ADDR + 0X45CD4))

#define GFX_IMG_desc_shelly_pistol_0 ((u8*)(GFX_BASE_ADDR + 0X460F0))

#define GFX_IMG_desc_shelly_pistol_1 ((u8*)(GFX_BASE_ADDR + 0X4651C))

#define GFX_IMG_desc_franziskas_whip ((u8*)(GFX_BASE_ADDR + 0X46920))

#define GFX_IMG_desc_tracking_device ((u8*)(GFX_BASE_ADDR + 0X46CF0))

#define GFX_IMG_desc_gumshoes_coat ((u8*)(GFX_BASE_ADDR + 0X4701C))

#define GFX_IMG_desc_gatewater_hotel_button ((u8*)(GFX_BASE_ADDR + 0X472D4))

#define GFX_IMG_desc_generic_photo_11 ((u8*)(GFX_BASE_ADDR + 0X475FC))

#define GFX_IMG_desc_tomato_juice_1 ((u8*)(GFX_BASE_ADDR + 0X479E4))

#define GFX_PALETTE_generic_autopsy_report ((u8*)(GFX_BASE_ADDR + 0X47E28))

#define GFX_IMG_generic_autopsy_report ((u8*)(GFX_BASE_ADDR + 0X47E48))

#define GFX_PALETTE_generic_photo ((u8*)(GFX_BASE_ADDR + 0X48648))

#define GFX_IMG_generic_photo ((u8*)(GFX_BASE_ADDR + 0X48668))

#define GFX_PALETTE_broken_glasses ((u8*)(GFX_BASE_ADDR + 0X48E68))

#define GFX_IMG_broken_glasses ((u8*)(GFX_BASE_ADDR + 0X48E88))

#define GFX_PALETTE_dustins_baseball_glove ((u8*)(GFX_BASE_ADDR + 0X49688))

#define GFX_IMG_dustins_baseball_glove ((u8*)(GFX_BASE_ADDR + 0X496A8))

#define GFX_PALETTE_generic_letter ((u8*)(GFX_BASE_ADDR + 0X49EA8))

#define GFX_IMG_generic_letter ((u8*)(GFX_BASE_ADDR + 0X49EC8))

#define GFX_PALETTE_phoenix_cellphone ((u8*)(GFX_BASE_ADDR + 0X4A6C8))

#define GFX_IMG_phoenix_cellphone ((u8*)(GFX_BASE_ADDR + 0X4A6E8))

#define GFX_PALETTE_mayas_cellphone ((u8*)(GFX_BASE_ADDR + 0X4AEE8))

#define GFX_IMG_mayas_cellphone ((u8*)(GFX_BASE_ADDR + 0X4AF08))

#define GFX_PALETTE_maya_fey ((u8*)(GFX_BASE_ADDR + 0X4B708))

#define GFX_IMG_maya_fey ((u8*)(GFX_BASE_ADDR + 0X4B728))

#define GFX_PALETTE_maggey_byrde ((u8*)(GFX_BASE_ADDR + 0X4BF28))

#define GFX_IMG_maggey_byrde ((u8*)(GFX_BASE_ADDR + 0X4BF48))

#define GFX_PALETTE_richard_wellington ((u8*)(GFX_BASE_ADDR + 0X4C748))

#define GFX_IMG_richard_wellington ((u8*)(GFX_BASE_ADDR + 0X4C768))

#define GFX_PALETTE_winston_payne ((u8*)(GFX_BASE_ADDR + 0X4CF68))

#define GFX_IMG_winston_payne ((u8*)(GFX_BASE_ADDR + 0X4CF88))

#define GFX_PALETTE_dick_gumshoe ((u8*)(GFX_BASE_ADDR + 0X4D788))

#define GFX_IMG_dick_gumshoe ((u8*)(GFX_BASE_ADDR + 0X4D7A8))

#define GFX_PALETTE_dustin_prince ((u8*)(GFX_BASE_ADDR + 0X4DFA8))

#define GFX_IMG_dustin_prince ((u8*)(GFX_BASE_ADDR + 0X4DFC8))

#define GFX_PALETTE_phoenix_business_card ((u8*)(GFX_BASE_ADDR + 0X4E7C8))

#define GFX_IMG_phoenix_business_card ((u8*)(GFX_BASE_ADDR + 0X4E7E8))

#define GFX_PALETTE_generic_newspaper_clipping ((u8*)(GFX_BASE_ADDR + 0X4EFE8))

#define GFX_IMG_generic_newspaper_clipping ((u8*)(GFX_BASE_ADDR + 0X4F008))

#define GFX_PALETTE_meeting_room_screen ((u8*)(GFX_BASE_ADDR + 0X4F808))

#define GFX_IMG_meeting_room_screen ((u8*)(GFX_BASE_ADDR + 0X4F828))

#define GFX_PALETTE_meeting_room_key ((u8*)(GFX_BASE_ADDR + 0X50028))

#define GFX_IMG_meeting_room_key ((u8*)(GFX_BASE_ADDR + 0X50048))

#define GFX_PALETTE_dummy_00180848 ((u8*)(GFX_BASE_ADDR + 0X50848))

#define GFX_IMG_dummy_00180848 ((u8*)(GFX_BASE_ADDR + 0X50868))

#define GFX_PALETTE_greys_gun ((u8*)(GFX_BASE_ADDR + 0X51068))

#define GFX_IMG_greys_gun ((u8*)(GFX_BASE_ADDR + 0X51088))

#define GFX_PALETTE_mayas_knife ((u8*)(GFX_BASE_ADDR + 0X51888))

#define GFX_IMG_mayas_knife ((u8*)(GFX_BASE_ADDR + 0X518A8))

#define GFX_PALETTE_mayas_robe ((u8*)(GFX_BASE_ADDR + 0X520A8))

#define GFX_IMG_mayas_robe ((u8*)(GFX_BASE_ADDR + 0X520C8))

#define GFX_PALETTE_001828C8 ((u8*)(GFX_BASE_ADDR + 0X528C8))

#define GFX_IMG_001828C8 ((u8*)(GFX_BASE_ADDR + 0X528E8))

#define GFX_PALETTE_kurain_sacred_urn ((u8*)(GFX_BASE_ADDR + 0X530E8))

#define GFX_IMG_kurain_sacred_urn ((u8*)(GFX_BASE_ADDR + 0X53108))

#define GFX_PALETTE_swatch_from_mayas_robe ((u8*)(GFX_BASE_ADDR + 0X53908))

#define GFX_IMG_swatch_from_mayas_robe ((u8*)(GFX_BASE_ADDR + 0X53928))

#define GFX_PALETTE_pearls_ball ((u8*)(GFX_BASE_ADDR + 0X54128))

#define GFX_IMG_pearls_ball ((u8*)(GFX_BASE_ADDR + 0X54148))

#define GFX_PALETTE_large_box ((u8*)(GFX_BASE_ADDR + 0X54948))

#define GFX_IMG_large_box ((u8*)(GFX_BASE_ADDR + 0X54968))

#define GFX_PALETTE_dummy_00185168 ((u8*)(GFX_BASE_ADDR + 0X55168))

#define GFX_IMG_dummy_00185168 ((u8*)(GFX_BASE_ADDR + 0X55188))

#define GFX_PALETTE_magatama_discharged ((u8*)(GFX_BASE_ADDR + 0X55988))

#define GFX_IMG_magatama_discharged ((u8*)(GFX_BASE_ADDR + 0X559A8))

#define GFX_PALETTE_magatama_charged ((u8*)(GFX_BASE_ADDR + 0X561A8))

#define GFX_IMG_magatama_charged ((u8*)(GFX_BASE_ADDR + 0X561C8))

#define GFX_PALETTE_newspaper_article ((u8*)(GFX_BASE_ADDR + 0X569C8))

#define GFX_IMG_newspaper_article ((u8*)(GFX_BASE_ADDR + 0X569E8))

#define GFX_PALETTE_turner_grey ((u8*)(GFX_BASE_ADDR + 0X571E8))

#define GFX_IMG_turner_grey ((u8*)(GFX_BASE_ADDR + 0X57208))

#define GFX_PALETTE_pearl_fey ((u8*)(GFX_BASE_ADDR + 0X57A08))

#define GFX_IMG_pearl_fey ((u8*)(GFX_BASE_ADDR + 0X57A28))

#define GFX_PALETTE_lotta_hart ((u8*)(GFX_BASE_ADDR + 0X58228))

#define GFX_IMG_lotta_hart ((u8*)(GFX_BASE_ADDR + 0X58248))

#define GFX_PALETTE_morgan_fey ((u8*)(GFX_BASE_ADDR + 0X58A48))

#define GFX_IMG_morgan_fey ((u8*)(GFX_BASE_ADDR + 0X58A68))

#define GFX_PALETTE_mimi_miney ((u8*)(GFX_BASE_ADDR + 0X59268))

#define GFX_IMG_mimi_miney ((u8*)(GFX_BASE_ADDR + 0X59288))

#define GFX_PALETTE_ini_miney ((u8*)(GFX_BASE_ADDR + 0X59A88))

#define GFX_IMG_ini_miney ((u8*)(GFX_BASE_ADDR + 0X59AA8))

#define GFX_PALETTE_manfred_von_karma ((u8*)(GFX_BASE_ADDR + 0X5A2A8))

#define GFX_IMG_manfred_von_karma ((u8*)(GFX_BASE_ADDR + 0X5A2C8))

#define GFX_PALETTE_mia_fey ((u8*)(GFX_BASE_ADDR + 0X5AAC8))

#define GFX_IMG_mia_fey ((u8*)(GFX_BASE_ADDR + 0X5AAE8))

#define GFX_PALETTE_note_from_the_safe ((u8*)(GFX_BASE_ADDR + 0X5B2E8))

#define GFX_IMG_note_from_the_safe ((u8*)(GFX_BASE_ADDR + 0X5B308))

#define GFX_PALETTE_dr_hotti ((u8*)(GFX_BASE_ADDR + 0X5BB08))

#define GFX_IMG_dr_hotti ((u8*)(GFX_BASE_ADDR + 0X5BB28))

#define GFX_PALETTE_franziska_von_karma ((u8*)(GFX_BASE_ADDR + 0X5C328))

#define GFX_IMG_franziska_von_karma ((u8*)(GFX_BASE_ADDR + 0X5C348))

#define GFX_PALETTE_ami_fey ((u8*)(GFX_BASE_ADDR + 0X5CB48))

#define GFX_IMG_ami_fey ((u8*)(GFX_BASE_ADDR + 0X5CB68))

#define GFX_PALETTE_max_silk_hat ((u8*)(GFX_BASE_ADDR + 0X5D368))

#define GFX_IMG_max_silk_hat ((u8*)(GFX_BASE_ADDR + 0X5D388))

#define GFX_PALETTE_max_poster ((u8*)(GFX_BASE_ADDR + 0X5DB88))

#define GFX_IMG_max_poster ((u8*)(GFX_BASE_ADDR + 0X5DBA8))

#define GFX_PALETTE_broken_bottle ((u8*)(GFX_BASE_ADDR + 0X5E3A8))

#define GFX_IMG_broken_bottle ((u8*)(GFX_BASE_ADDR + 0X5E3C8))

#define GFX_PALETTE_trilo ((u8*)(GFX_BASE_ADDR + 0X5EBC8))

#define GFX_IMG_trilo ((u8*)(GFX_BASE_ADDR + 0X5EBE8))

#define GFX_PALETTE_money ((u8*)(GFX_BASE_ADDR + 0X5F3E8))

#define GFX_IMG_money ((u8*)(GFX_BASE_ADDR + 0X5F408))

#define GFX_PALETTE_engagement_ring ((u8*)(GFX_BASE_ADDR + 0X5FC08))

#define GFX_IMG_engagement_ring ((u8*)(GFX_BASE_ADDR + 0X5FC28))

#define GFX_PALETTE_large_chest ((u8*)(GFX_BASE_ADDR + 0X60428))

#define GFX_IMG_large_chest ((u8*)(GFX_BASE_ADDR + 0X60448))

#define GFX_PALETTE_pepper ((u8*)(GFX_BASE_ADDR + 0X60C48))

#define GFX_IMG_pepper ((u8*)(GFX_BASE_ADDR + 0X60C68))

#define GFX_PALETTE_dummy_00191468 ((u8*)(GFX_BASE_ADDR + 0X61468))

#define GFX_IMG_dummy_00191468 ((u8*)(GFX_BASE_ADDR + 0X61488))

#define GFX_PALETTE_threatening_note_torn ((u8*)(GFX_BASE_ADDR + 0X61C88))

#define GFX_IMG_threatening_note_torn ((u8*)(GFX_BASE_ADDR + 0X61CA8))

#define GFX_PALETTE_threatening_note_full ((u8*)(GFX_BASE_ADDR + 0X624A8))

#define GFX_IMG_threatening_note_full ((u8*)(GFX_BASE_ADDR + 0X624C8))

#define GFX_PALETTE_reginas_west ((u8*)(GFX_BASE_ADDR + 0X62CC8))

#define GFX_IMG_reginas_west ((u8*)(GFX_BASE_ADDR + 0X62CE8))

#define GFX_PALETTE_leon ((u8*)(GFX_BASE_ADDR + 0X634E8))

#define GFX_IMG_leon ((u8*)(GFX_BASE_ADDR + 0X63508))

#define GFX_PALETTE_bloody_scarf ((u8*)(GFX_BASE_ADDR + 0X63D08))

#define GFX_IMG_bloody_scarf ((u8*)(GFX_BASE_ADDR + 0X63D28))

#define GFX_PALETTE_playing_cards ((u8*)(GFX_BASE_ADDR + 0X64528))

#define GFX_IMG_playing_cards ((u8*)(GFX_BASE_ADDR + 0X64548))

#define GFX_PALETTE_playing_card ((u8*)(GFX_BASE_ADDR + 0X64D48))

#define GFX_IMG_playing_card ((u8*)(GFX_BASE_ADDR + 0X64D68))

#define GFX_PALETTE_regent ((u8*)(GFX_BASE_ADDR + 0X65568))

#define GFX_IMG_regent ((u8*)(GFX_BASE_ADDR + 0X65588))

#define GFX_PALETTE_milk ((u8*)(GFX_BASE_ADDR + 0X65D88))

#define GFX_IMG_milk ((u8*)(GFX_BASE_ADDR + 0X65DA8))

#define GFX_PALETTE_moes_grapes ((u8*)(GFX_BASE_ADDR + 0X665A8))

#define GFX_IMG_moes_grapes ((u8*)(GFX_BASE_ADDR + 0X665C8))

#define GFX_PALETTE_maximillion_galactica ((u8*)(GFX_BASE_ADDR + 0X66DC8))

#define GFX_IMG_maximillion_galactica ((u8*)(GFX_BASE_ADDR + 0X66DE8))

#define GFX_PALETTE_regina_berry ((u8*)(GFX_BASE_ADDR + 0X675E8))

#define GFX_IMG_regina_berry ((u8*)(GFX_BASE_ADDR + 0X67608))

#define GFX_PALETTE_phoenix_badge ((u8*)(GFX_BASE_ADDR + 0X67E08))

#define GFX_IMG_phoenix_badge ((u8*)(GFX_BASE_ADDR + 0X67E28))

#define GFX_PALETTE_ben ((u8*)(GFX_BASE_ADDR + 0X68628))

#define GFX_IMG_ben ((u8*)(GFX_BASE_ADDR + 0X68648))

#define GFX_PALETTE_moe ((u8*)(GFX_BASE_ADDR + 0X68E48))

#define GFX_IMG_moe ((u8*)(GFX_BASE_ADDR + 0X68E68))

#define GFX_PALETTE_acro ((u8*)(GFX_BASE_ADDR + 0X69668))

#define GFX_IMG_acro ((u8*)(GFX_BASE_ADDR + 0X69688))

#define GFX_PALETTE_russell_berry ((u8*)(GFX_BASE_ADDR + 0X69E88))

#define GFX_IMG_russell_berry ((u8*)(GFX_BASE_ADDR + 0X69EA8))

#define GFX_PALETTE_bat ((u8*)(GFX_BASE_ADDR + 0X6A6A8))

#define GFX_IMG_bat ((u8*)(GFX_BASE_ADDR + 0X6A6C8))

#define GFX_PALETTE_will_powers ((u8*)(GFX_BASE_ADDR + 0X6AEC8))

#define GFX_IMG_will_powers ((u8*)(GFX_BASE_ADDR + 0X6AEE8))

#define GFX_PALETTE_wendy_oldbag ((u8*)(GFX_BASE_ADDR + 0X6B6E8))

#define GFX_IMG_wendy_oldbag ((u8*)(GFX_BASE_ADDR + 0X6B708))

#define GFX_PALETTE_juan_corrida ((u8*)(GFX_BASE_ADDR + 0X6BF08))

#define GFX_IMG_juan_corrida ((u8*)(GFX_BASE_ADDR + 0X6BF28))

#define GFX_PALETTE_matt_engarde ((u8*)(GFX_BASE_ADDR + 0X6C728))

#define GFX_IMG_matt_engarde ((u8*)(GFX_BASE_ADDR + 0X6C748))

#define GFX_PALETTE_adrian_andrews ((u8*)(GFX_BASE_ADDR + 0X6CF48))

#define GFX_IMG_adrian_andrews ((u8*)(GFX_BASE_ADDR + 0X6CF68))

#define GFX_PALETTE_celeste_inpax ((u8*)(GFX_BASE_ADDR + 0X6D768))

#define GFX_IMG_celeste_inpax ((u8*)(GFX_BASE_ADDR + 0X6D788))

#define GFX_PALETTE_disguised_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0X6DF88))

#define GFX_IMG_disguised_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0X6DFA8))

#define GFX_PALETTE_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0X6E7A8))

#define GFX_IMG_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0X6E7C8))

#define GFX_PALETTE_miles_edgeworth ((u8*)(GFX_BASE_ADDR + 0X6EFC8))

#define GFX_IMG_miles_edgeworth ((u8*)(GFX_BASE_ADDR + 0X6EFE8))

#define GFX_PALETTE_admission_ticket ((u8*)(GFX_BASE_ADDR + 0X6F7E8))

#define GFX_IMG_admission_ticket ((u8*)(GFX_BASE_ADDR + 0X6F808))

#define GFX_PALETTE_transceiver ((u8*)(GFX_BASE_ADDR + 0X70008))

#define GFX_IMG_transceiver ((u8*)(GFX_BASE_ADDR + 0X70028))

#define GFX_PALETTE_guitar_case ((u8*)(GFX_BASE_ADDR + 0X70828))

#define GFX_IMG_guitar_case ((u8*)(GFX_BASE_ADDR + 0X70848))

#define GFX_PALETTE_tomato_juice ((u8*)(GFX_BASE_ADDR + 0X71048))

#define GFX_IMG_tomato_juice ((u8*)(GFX_BASE_ADDR + 0X71068))

#define GFX_PALETTE_juans_autograph ((u8*)(GFX_BASE_ADDR + 0X71868))

#define GFX_IMG_juans_autograph ((u8*)(GFX_BASE_ADDR + 0X71888))

#define GFX_PALETTE_gossip_column ((u8*)(GFX_BASE_ADDR + 0X72088))

#define GFX_IMG_gossip_column ((u8*)(GFX_BASE_ADDR + 0X720A8))

#define GFX_PALETTE_generic_envelope ((u8*)(GFX_BASE_ADDR + 0X728A8))

#define GFX_IMG_generic_envelope ((u8*)(GFX_BASE_ADDR + 0X728C8))

#define GFX_PALETTE_shellys_calling_card ((u8*)(GFX_BASE_ADDR + 0X730C8))

#define GFX_IMG_shellys_calling_card ((u8*)(GFX_BASE_ADDR + 0X730E8))

#define GFX_PALETTE_video_camera ((u8*)(GFX_BASE_ADDR + 0X738E8))

#define GFX_IMG_video_camera ((u8*)(GFX_BASE_ADDR + 0X73908))

#define GFX_PALETTE_imported_bear ((u8*)(GFX_BASE_ADDR + 0X74108))

#define GFX_IMG_imported_bear ((u8*)(GFX_BASE_ADDR + 0X74128))

#define GFX_PALETTE_receipt ((u8*)(GFX_BASE_ADDR + 0X74928))

#define GFX_IMG_receipt ((u8*)(GFX_BASE_ADDR + 0X74948))

#define GFX_PALETTE_bear_puzzle ((u8*)(GFX_BASE_ADDR + 0X75148))

#define GFX_IMG_bear_puzzle ((u8*)(GFX_BASE_ADDR + 0X75168))

#define GFX_PALETTE_photo_of_celeste ((u8*)(GFX_BASE_ADDR + 0X75968))

#define GFX_IMG_photo_of_celeste ((u8*)(GFX_BASE_ADDR + 0X75988))

#define GFX_PALETTE_001A6188 ((u8*)(GFX_BASE_ADDR + 0X76188))

#define GFX_IMG_001A6188 ((u8*)(GFX_BASE_ADDR + 0X761A8))

#define GFX_PALETTE_video_transmitter ((u8*)(GFX_BASE_ADDR + 0X769A8))

#define GFX_IMG_video_transmitter ((u8*)(GFX_BASE_ADDR + 0X769C8))

#define GFX_PALETTE_shoe ((u8*)(GFX_BASE_ADDR + 0X771C8))

#define GFX_IMG_shoe ((u8*)(GFX_BASE_ADDR + 0X771E8))

#define GFX_PALETTE_lottas_camera_case ((u8*)(GFX_BASE_ADDR + 0X779E8))

#define GFX_IMG_lottas_camera_case ((u8*)(GFX_BASE_ADDR + 0X77A08))

#define GFX_PALETTE_frequency_detector ((u8*)(GFX_BASE_ADDR + 0X78208))

#define GFX_IMG_frequency_detector ((u8*)(GFX_BASE_ADDR + 0X78228))

#define GFX_PALETTE_tracking_device ((u8*)(GFX_BASE_ADDR + 0X78A28))

#define GFX_IMG_tracking_device ((u8*)(GFX_BASE_ADDR + 0X78A48))

#define GFX_PALETTE_gumshoes_coat ((u8*)(GFX_BASE_ADDR + 0X79248))

#define GFX_IMG_gumshoes_coat ((u8*)(GFX_BASE_ADDR + 0X79268))

#define GFX_PALETTE_bellboy_uniform ((u8*)(GFX_BASE_ADDR + 0X79A68))

#define GFX_IMG_bellboy_uniform ((u8*)(GFX_BASE_ADDR + 0X79A88))

#define GFX_PALETTE_gatewater_hotel_button ((u8*)(GFX_BASE_ADDR + 0X7A288))

#define GFX_IMG_gatewater_hotel_button ((u8*)(GFX_BASE_ADDR + 0X7A2A8))

#define GFX_PALETTE_generic_video ((u8*)(GFX_BASE_ADDR + 0X7AAA8))

#define GFX_IMG_generic_video ((u8*)(GFX_BASE_ADDR + 0X7AAC8))

#define GFX_PALETTE_shelly_pistol ((u8*)(GFX_BASE_ADDR + 0X7B2C8))

#define GFX_IMG_shelly_pistol ((u8*)(GFX_BASE_ADDR + 0X7B2E8))

#define GFX_PALETTE_franziskas_whip ((u8*)(GFX_BASE_ADDR + 0X7BAE8))

#define GFX_IMG_franziskas_whip ((u8*)(GFX_BASE_ADDR + 0X7BB08))

#define GFX_PALETTE_bloody_button ((u8*)(GFX_BASE_ADDR + 0X7C308))

#define GFX_IMG_bloody_button ((u8*)(GFX_BASE_ADDR + 0X7C328))

#define GFX_PALETTE_generic_affidavit ((u8*)(GFX_BASE_ADDR + 0X7CB28))

#define GFX_IMG_generic_affidavit ((u8*)(GFX_BASE_ADDR + 0X7CB48))

#define GFX_PALETTE_bloody_knife ((u8*)(GFX_BASE_ADDR + 0X7D348))

#define GFX_IMG_bloody_knife ((u8*)(GFX_BASE_ADDR + 0X7D368))

#define GFX_PALETTE_bear_clock ((u8*)(GFX_BASE_ADDR + 0X7DB68))

#define GFX_IMG_bear_clock ((u8*)(GFX_BASE_ADDR + 0X7DB88))

#define GFX_PALETTE_charset ((u8*)(GFX_BASE_ADDR + 0X7E388))

#define GFX_IMG_charset ((u8*)(GFX_BASE_ADDR + 0X7E3A8))

#define GFX_PALETTE_choice_selected ((u8*)(GFX_BASE_ADDR + 0XAE3A8))

#define GFX_PALETTE_choice_greyed_out ((u8*)(GFX_BASE_ADDR + 0XAE3C8))

#define GFX_IMG_001DE3E8 ((u8*)(GFX_BASE_ADDR + 0XAE3E8))

#define GFX_IMG_001DEBE8 ((u8*)(GFX_BASE_ADDR + 0XAEBE8))

#define GFX_IMG_001DF3E8 ((u8*)(GFX_BASE_ADDR + 0XAF3E8))

#define GFX_IMG_001DFBE8 ((u8*)(GFX_BASE_ADDR + 0XAFBE8))

#define GFX_IMG_001E03E8 ((u8*)(GFX_BASE_ADDR + 0XB03E8))

#define GFX_IMG_001E0BE8 ((u8*)(GFX_BASE_ADDR + 0XB0BE8))

#define GFX_IMG_001E13E8 ((u8*)(GFX_BASE_ADDR + 0XB13E8))

#define GFX_IMG_001E1BE8 ((u8*)(GFX_BASE_ADDR + 0XB1BE8))

#define GFX_IMG_001E23E8 ((u8*)(GFX_BASE_ADDR + 0XB23E8))

#define GFX_IMG_001E2BE8 ((u8*)(GFX_BASE_ADDR + 0XB2BE8))

#define GFX_IMG_001E33E8 ((u8*)(GFX_BASE_ADDR + 0XB33E8))

#define GFX_IMG_001E3BE8 ((u8*)(GFX_BASE_ADDR + 0XB3BE8))

#define GFX_IMG_001E43E8 ((u8*)(GFX_BASE_ADDR + 0XB43E8))

#define GFX_IMG_001E4BE8 ((u8*)(GFX_BASE_ADDR + 0XB4BE8))

#define GFX_IMG_001E53E8 ((u8*)(GFX_BASE_ADDR + 0XB53E8))

#define GFX_IMG_001E5BE8 ((u8*)(GFX_BASE_ADDR + 0XB5BE8))

#define GFX_IMG_001E63E8 ((u8*)(GFX_BASE_ADDR + 0XB63E8))

#define GFX_IMG_001E6BE8 ((u8*)(GFX_BASE_ADDR + 0XB6BE8))

#define GFX_IMG_001E73E8 ((u8*)(GFX_BASE_ADDR + 0XB73E8))

#define GFX_IMG_001E7BE8 ((u8*)(GFX_BASE_ADDR + 0XB7BE8))

#define GFX_IMG_001E83E8 ((u8*)(GFX_BASE_ADDR + 0XB83E8))

#define GFX_IMG_001E8BE8 ((u8*)(GFX_BASE_ADDR + 0XB8BE8))

#define GFX_IMG_001E93E8 ((u8*)(GFX_BASE_ADDR + 0XB93E8))

#define GFX_IMG_001E9BE8 ((u8*)(GFX_BASE_ADDR + 0XB9BE8))

#define GFX_IMG_001EA3E8 ((u8*)(GFX_BASE_ADDR + 0XBA3E8))

#define GFX_IMG_001EABE8 ((u8*)(GFX_BASE_ADDR + 0XBABE8))

#define GFX_IMG_001EB3E8 ((u8*)(GFX_BASE_ADDR + 0XBB3E8))

#define GFX_IMG_001EBBE8 ((u8*)(GFX_BASE_ADDR + 0XBBBE8))

#define GFX_IMG_001EC3E8 ((u8*)(GFX_BASE_ADDR + 0XBC3E8))

#define GFX_IMG_001ECBE8 ((u8*)(GFX_BASE_ADDR + 0XBCBE8))

#define GFX_IMG_001ED3E8 ((u8*)(GFX_BASE_ADDR + 0XBD3E8))

#define GFX_IMG_001EDBE8 ((u8*)(GFX_BASE_ADDR + 0XBDBE8))

#define GFX_IMG_001EE3E8 ((u8*)(GFX_BASE_ADDR + 0XBE3E8))

#define GFX_IMG_001EEBE8 ((u8*)(GFX_BASE_ADDR + 0XBEBE8))

#define GFX_IMG_001EF3E8 ((u8*)(GFX_BASE_ADDR + 0XBF3E8))

#define GFX_IMG_001EFBE8 ((u8*)(GFX_BASE_ADDR + 0XBFBE8))

#define GFX_IMG_001F03E8 ((u8*)(GFX_BASE_ADDR + 0XC03E8))

#define GFX_IMG_001F0BE8 ((u8*)(GFX_BASE_ADDR + 0XC0BE8))

#define GFX_IMG_001F13E8 ((u8*)(GFX_BASE_ADDR + 0XC13E8))

#define GFX_IMG_001F1BE8 ((u8*)(GFX_BASE_ADDR + 0XC1BE8))

#define GFX_IMG_001F23E8 ((u8*)(GFX_BASE_ADDR + 0XC23E8))

#define GFX_IMG_001F2BE8 ((u8*)(GFX_BASE_ADDR + 0XC2BE8))

#define GFX_IMG_001F33E8 ((u8*)(GFX_BASE_ADDR + 0XC33E8))

#define GFX_IMG_001F3BE8 ((u8*)(GFX_BASE_ADDR + 0XC3BE8))

#define GFX_IMG_001F43E8 ((u8*)(GFX_BASE_ADDR + 0XC43E8))

#define GFX_IMG_001F4BE8 ((u8*)(GFX_BASE_ADDR + 0XC4BE8))

#define GFX_IMG_001F53E8 ((u8*)(GFX_BASE_ADDR + 0XC53E8))

#define GFX_IMG_001F5BE8 ((u8*)(GFX_BASE_ADDR + 0XC5BE8))

#define GFX_IMG_001F63E8 ((u8*)(GFX_BASE_ADDR + 0XC63E8))

#define GFX_IMG_001F6BE8 ((u8*)(GFX_BASE_ADDR + 0XC6BE8))

#define GFX_IMG_001F73E8 ((u8*)(GFX_BASE_ADDR + 0XC73E8))

#define GFX_IMG_001F7BE8 ((u8*)(GFX_BASE_ADDR + 0XC7BE8))

#define GFX_IMG_001F83E8 ((u8*)(GFX_BASE_ADDR + 0XC83E8))

#define GFX_IMG_001F8BE8 ((u8*)(GFX_BASE_ADDR + 0XC8BE8))

#define GFX_IMG_001F93E8 ((u8*)(GFX_BASE_ADDR + 0XC93E8))

#define GFX_IMG_001F9BE8 ((u8*)(GFX_BASE_ADDR + 0XC9BE8))

#define GFX_IMG_001FA3E8 ((u8*)(GFX_BASE_ADDR + 0XCA3E8))

#define GFX_IMG_001FABE8 ((u8*)(GFX_BASE_ADDR + 0XCABE8))

#define GFX_IMG_001FB3E8 ((u8*)(GFX_BASE_ADDR + 0XCB3E8))

#define GFX_IMG_001FBBE8 ((u8*)(GFX_BASE_ADDR + 0XCBBE8))

#define GFX_IMG_001FC3E8 ((u8*)(GFX_BASE_ADDR + 0XCC3E8))

#define GFX_IMG_001FCBE8 ((u8*)(GFX_BASE_ADDR + 0XCCBE8))

#define GFX_IMG_001FD3E8 ((u8*)(GFX_BASE_ADDR + 0XCD3E8))

#define GFX_IMG_001FDBE8 ((u8*)(GFX_BASE_ADDR + 0XCDBE8))

#define GFX_IMG_001FE3E8 ((u8*)(GFX_BASE_ADDR + 0XCE3E8))

#define GFX_IMG_001FEBE8 ((u8*)(GFX_BASE_ADDR + 0XCEBE8))

#define GFX_IMG_001FF3E8 ((u8*)(GFX_BASE_ADDR + 0XCF3E8))

#define GFX_IMG_001FFBE8 ((u8*)(GFX_BASE_ADDR + 0XCFBE8))

#define GFX_IMG_002003E8 ((u8*)(GFX_BASE_ADDR + 0XD03E8))

#define GFX_IMG_00200BE8 ((u8*)(GFX_BASE_ADDR + 0XD0BE8))

#define GFX_IMG_002013E8 ((u8*)(GFX_BASE_ADDR + 0XD13E8))

#define GFX_IMG_00201BE8 ((u8*)(GFX_BASE_ADDR + 0XD1BE8))

#define GFX_IMG_002023E8 ((u8*)(GFX_BASE_ADDR + 0XD23E8))

#define GFX_IMG_00202BE8 ((u8*)(GFX_BASE_ADDR + 0XD2BE8))

#define GFX_IMG_002033E8 ((u8*)(GFX_BASE_ADDR + 0XD33E8))

#define GFX_IMG_00203BE8 ((u8*)(GFX_BASE_ADDR + 0XD3BE8))

#define GFX_IMG_002043E8 ((u8*)(GFX_BASE_ADDR + 0XD43E8))

#define GFX_IMG_00204BE8 ((u8*)(GFX_BASE_ADDR + 0XD4BE8))

#define GFX_IMG_002053E8 ((u8*)(GFX_BASE_ADDR + 0XD53E8))

#define GFX_IMG_00205BE8 ((u8*)(GFX_BASE_ADDR + 0XD5BE8))

#define GFX_IMG_002063E8 ((u8*)(GFX_BASE_ADDR + 0XD63E8))

#define GFX_IMG_00206BE8 ((u8*)(GFX_BASE_ADDR + 0XD6BE8))

#define GFX_IMG_002073E8 ((u8*)(GFX_BASE_ADDR + 0XD73E8))

#define GFX_IMG_00207BE8 ((u8*)(GFX_BASE_ADDR + 0XD7BE8))

#define GFX_IMG_002083E8 ((u8*)(GFX_BASE_ADDR + 0XD83E8))

#define GFX_IMG_00208BE8 ((u8*)(GFX_BASE_ADDR + 0XD8BE8))

#define GFX_IMG_002093E8 ((u8*)(GFX_BASE_ADDR + 0XD93E8))

#define GFX_IMG_00209BE8 ((u8*)(GFX_BASE_ADDR + 0XD9BE8))

#define GFX_IMG_0020A3E8 ((u8*)(GFX_BASE_ADDR + 0XDA3E8))

#define GFX_IMG_0020ABE8 ((u8*)(GFX_BASE_ADDR + 0XDABE8))

#define GFX_IMG_0020B3E8 ((u8*)(GFX_BASE_ADDR + 0XDB3E8))

#define GFX_IMG_0020BBE8 ((u8*)(GFX_BASE_ADDR + 0XDBBE8))

#define GFX_IMG_0020C3E8 ((u8*)(GFX_BASE_ADDR + 0XDC3E8))

#define GFX_IMG_0020CBE8 ((u8*)(GFX_BASE_ADDR + 0XDCBE8))

#define GFX_IMG_0020D3E8 ((u8*)(GFX_BASE_ADDR + 0XDD3E8))

#define GFX_IMG_0020DBE8 ((u8*)(GFX_BASE_ADDR + 0XDDBE8))

#define GFX_IMG_0020E3E8 ((u8*)(GFX_BASE_ADDR + 0XDE3E8))

#define GFX_IMG_0020EBE8 ((u8*)(GFX_BASE_ADDR + 0XDEBE8))

#define GFX_IMG_0020F3E8 ((u8*)(GFX_BASE_ADDR + 0XDF3E8))

#define GFX_IMG_0020FBE8 ((u8*)(GFX_BASE_ADDR + 0XDFBE8))

#define GFX_IMG_002103E8 ((u8*)(GFX_BASE_ADDR + 0XE03E8))

#define GFX_IMG_00210BE8 ((u8*)(GFX_BASE_ADDR + 0XE0BE8))

#define GFX_IMG_002113E8 ((u8*)(GFX_BASE_ADDR + 0XE13E8))

#define GFX_IMG_00211BE8 ((u8*)(GFX_BASE_ADDR + 0XE1BE8))

#define GFX_IMG_002123E8 ((u8*)(GFX_BASE_ADDR + 0XE23E8))

#define GFX_IMG_00212BE8 ((u8*)(GFX_BASE_ADDR + 0XE2BE8))

#define GFX_IMG_002133E8 ((u8*)(GFX_BASE_ADDR + 0XE33E8))

#define GFX_IMG_00213BE8 ((u8*)(GFX_BASE_ADDR + 0XE3BE8))

#define GFX_IMG_002143E8 ((u8*)(GFX_BASE_ADDR + 0XE43E8))

#define GFX_IMG_00214BE8 ((u8*)(GFX_BASE_ADDR + 0XE4BE8))

#define GFX_IMG_002153E8 ((u8*)(GFX_BASE_ADDR + 0XE53E8))

#define GFX_IMG_00215BE8 ((u8*)(GFX_BASE_ADDR + 0XE5BE8))

#define GFX_IMG_002163E8 ((u8*)(GFX_BASE_ADDR + 0XE63E8))

#define GFX_IMG_00216BE8 ((u8*)(GFX_BASE_ADDR + 0XE6BE8))

#define GFX_IMG_002173E8 ((u8*)(GFX_BASE_ADDR + 0XE73E8))

#define GFX_IMG_00217BE8 ((u8*)(GFX_BASE_ADDR + 0XE7BE8))

#define GFX_IMG_002183E8 ((u8*)(GFX_BASE_ADDR + 0XE83E8))

#define GFX_IMG_00218BE8 ((u8*)(GFX_BASE_ADDR + 0XE8BE8))

#define GFX_IMG_002193E8 ((u8*)(GFX_BASE_ADDR + 0XE93E8))

#define GFX_IMG_00219BE8 ((u8*)(GFX_BASE_ADDR + 0XE9BE8))

#define GFX_IMG_0021A3E8 ((u8*)(GFX_BASE_ADDR + 0XEA3E8))

#define GFX_IMG_0021ABE8 ((u8*)(GFX_BASE_ADDR + 0XEABE8))

#define GFX_IMG_0021B3E8 ((u8*)(GFX_BASE_ADDR + 0XEB3E8))

#define GFX_IMG_0021BBE8 ((u8*)(GFX_BASE_ADDR + 0XEBBE8))

#define GFX_IMG_0021C3E8 ((u8*)(GFX_BASE_ADDR + 0XEC3E8))

#define GFX_IMG_0021CBE8 ((u8*)(GFX_BASE_ADDR + 0XECBE8))

#define GFX_IMG_0021D3E8 ((u8*)(GFX_BASE_ADDR + 0XED3E8))

#define GFX_IMG_0021DBE8 ((u8*)(GFX_BASE_ADDR + 0XEDBE8))

#define GFX_IMG_0021E3E8 ((u8*)(GFX_BASE_ADDR + 0XEE3E8))

#define GFX_IMG_0021EBE8 ((u8*)(GFX_BASE_ADDR + 0XEEBE8))

#define GFX_IMG_0021F3E8 ((u8*)(GFX_BASE_ADDR + 0XEF3E8))

#define GFX_IMG_0021FBE8 ((u8*)(GFX_BASE_ADDR + 0XEFBE8))

#define GFX_IMG_002203E8 ((u8*)(GFX_BASE_ADDR + 0XF03E8))

#define GFX_IMG_00220BE8 ((u8*)(GFX_BASE_ADDR + 0XF0BE8))

#define GFX_IMG_002213E8 ((u8*)(GFX_BASE_ADDR + 0XF13E8))

#define GFX_IMG_00221BE8 ((u8*)(GFX_BASE_ADDR + 0XF1BE8))

#define GFX_IMG_002223E8 ((u8*)(GFX_BASE_ADDR + 0XF23E8))

#define GFX_IMG_00222BE8 ((u8*)(GFX_BASE_ADDR + 0XF2BE8))

#define GFX_IMG_002233E8 ((u8*)(GFX_BASE_ADDR + 0XF33E8))

#define GFX_IMG_00223BE8 ((u8*)(GFX_BASE_ADDR + 0XF3BE8))

#define GFX_IMG_002243E8 ((u8*)(GFX_BASE_ADDR + 0XF43E8))

#define GFX_IMG_00224BE8 ((u8*)(GFX_BASE_ADDR + 0XF4BE8))

#define GFX_IMG_002253E8 ((u8*)(GFX_BASE_ADDR + 0XF53E8))

#define GFX_IMG_00225BE8 ((u8*)(GFX_BASE_ADDR + 0XF5BE8))

#define GFX_IMG_002263E8 ((u8*)(GFX_BASE_ADDR + 0XF63E8))

#define GFX_IMG_00226BE8 ((u8*)(GFX_BASE_ADDR + 0XF6BE8))

#define GFX_IMG_002273E8 ((u8*)(GFX_BASE_ADDR + 0XF73E8))

#define GFX_IMG_00227BE8 ((u8*)(GFX_BASE_ADDR + 0XF7BE8))

#define GFX_IMG_002283E8 ((u8*)(GFX_BASE_ADDR + 0XF83E8))

#define GFX_IMG_00228BE8 ((u8*)(GFX_BASE_ADDR + 0XF8BE8))

#define GFX_IMG_002293E8 ((u8*)(GFX_BASE_ADDR + 0XF93E8))

#define GFX_IMG_00229BE8 ((u8*)(GFX_BASE_ADDR + 0XF9BE8))

#define GFX_IMG_0022A3E8 ((u8*)(GFX_BASE_ADDR + 0XFA3E8))

#define GFX_IMG_0022ABE8 ((u8*)(GFX_BASE_ADDR + 0XFABE8))

#define GFX_IMG_0022B3E8 ((u8*)(GFX_BASE_ADDR + 0XFB3E8))

#define GFX_IMG_0022BBE8 ((u8*)(GFX_BASE_ADDR + 0XFBBE8))

#define GFX_IMG_0022C3E8 ((u8*)(GFX_BASE_ADDR + 0XFC3E8))

#define GFX_IMG_0022CBE8 ((u8*)(GFX_BASE_ADDR + 0XFCBE8))

#define GFX_IMG_0022D3E8 ((u8*)(GFX_BASE_ADDR + 0XFD3E8))

#define GFX_IMG_0022DBE8 ((u8*)(GFX_BASE_ADDR + 0XFDBE8))

#define GFX_IMG_0022E3E8 ((u8*)(GFX_BASE_ADDR + 0XFE3E8))

#define GFX_IMG_0022EBE8 ((u8*)(GFX_BASE_ADDR + 0XFEBE8))

#define GFX_IMG_0022F3E8 ((u8*)(GFX_BASE_ADDR + 0XFF3E8))

#define GFX_IMG_0022FBE8 ((u8*)(GFX_BASE_ADDR + 0XFFBE8))

#define GFX_IMG_002303E8 ((u8*)(GFX_BASE_ADDR + 0X1003E8))

#define GFX_IMG_00230BE8 ((u8*)(GFX_BASE_ADDR + 0X100BE8))

#define GFX_IMG_002313E8 ((u8*)(GFX_BASE_ADDR + 0X1013E8))

#define GFX_PALETTE_palette ((u8*)(GFX_BASE_ADDR + 0X101BE8))

#define GFX_IMG_killer ((u8*)(GFX_BASE_ADDR + 0X101C08))

#define GFX_IMG_victim ((u8*)(GFX_BASE_ADDR + 0X101C88))

#define GFX_IMG_green ((u8*)(GFX_BASE_ADDR + 0X101D08))

#define GFX_IMG_double_door_diagram ((u8*)(GFX_BASE_ADDR + 0X101D88))

#define GFX_IMG_folding_screen ((u8*)(GFX_BASE_ADDR + 0X102188))

#define GFX_IMG_red_dot ((u8*)(GFX_BASE_ADDR + 0X102488))

#define GFX_IMG_case3_main_gate ((u8*)(GFX_BASE_ADDR + 0X1024A8))

#define GFX_IMG_unused_green ((u8*)(GFX_BASE_ADDR + 0X1025A8))

#define GFX_IMG_case4_boat_horizontal ((u8*)(GFX_BASE_ADDR + 0X102628))

#define GFX_IMG_case4_boat_rental_shop ((u8*)(GFX_BASE_ADDR + 0X102668))

#define GFX_IMG_case4_lotta_suv ((u8*)(GFX_BASE_ADDR + 0X102868))

#define GFX_IMG_case4_boat_vertical ((u8*)(GFX_BASE_ADDR + 0X102968))

#define GFX_STRIPED_capcom_screen ((u8*)(GFX_BASE_ADDR + 0X1029A8))

#define GFX_STRIPED_case1_intro_nightmare_1 ((u8*)(GFX_BASE_ADDR + 0X103674))

#define GFX_STRIPED_capcom_screen_bw ((u8*)(GFX_BASE_ADDR + 0X1059B4))

#define GFX_STRIPED_defendant_lobby ((u8*)(GFX_BASE_ADDR + 0X10663C))

#define GFX_STRIPED_defense_side ((u8*)(GFX_BASE_ADDR + 0X10B3E0))

#define GFX_STRIPED_prosecution_side ((u8*)(GFX_BASE_ADDR + 0X10CF88))

#define GFX_STRIPED_witness_backdrop ((u8*)(GFX_BASE_ADDR + 0X10E98C))

#define GFX_STRIPED_judge_seat ((u8*)(GFX_BASE_ADDR + 0X110624))

#define GFX_STRIPED_co_counsel ((u8*)(GFX_BASE_ADDR + 0X116B24))

#define GFX_STRIPED_court_room ((u8*)(GFX_BASE_ADDR + 0X11C990))

#define GFX_STRIPED_court_room_blue ((u8*)(GFX_BASE_ADDR + 0X1240C0))

#define GFX_STRIPED_gavel_frame_1 ((u8*)(GFX_BASE_ADDR + 0X127B58))

#define GFX_STRIPED_gavel_frame_2 ((u8*)(GFX_BASE_ADDR + 0X12A8F0))

#define GFX_STRIPED_gavel_frame_3 ((u8*)(GFX_BASE_ADDR + 0X12E078))

#define GFX_PALETTE_bustup_phoenix ((u8*)(GFX_BASE_ADDR + 0X133FD4))

#define GFX_TILEMAP_bustup_phoenix ((u8*)(GFX_BASE_ADDR + 0X133FF4))

#define GFX_IMG_bustup_phoenix ((u8*)(GFX_BASE_ADDR + 0X1344A4))

#define GFX_PALETTE_bustup_edgeworth ((u8*)(GFX_BASE_ADDR + 0X135CC4))

#define GFX_TILEMAP_bustup_edgeworth ((u8*)(GFX_BASE_ADDR + 0X135CE4))

#define GFX_IMG_bustup_edgeworth ((u8*)(GFX_BASE_ADDR + 0X136194))

#define GFX_STRIPED_speedlines ((u8*)(GFX_BASE_ADDR + 0X137F34))

#define GFX_STRIPED_detention_center ((u8*)(GFX_BASE_ADDR + 0X138DE0))

#define GFX_STRIPED_wright_co_law_offices_day ((u8*)(GFX_BASE_ADDR + 0X13C528))

#define GFX_STRIPED_police_station_lobby ((u8*)(GFX_BASE_ADDR + 0X141C44))

#define GFX_PALETTE_bustup_franziska ((u8*)(GFX_BASE_ADDR + 0X147A98))

#define GFX_TILEMAP_bustup_franziska ((u8*)(GFX_BASE_ADDR + 0X147AB8))

#define GFX_IMG_bustup_franziska ((u8*)(GFX_BASE_ADDR + 0X147F68))

#define GFX_STRIPED_case1_photo_of_dustin_dead ((u8*)(GFX_BASE_ADDR + 0X149388))

#define GFX_STRIPED_case1_photo_of_maggeys_name ((u8*)(GFX_BASE_ADDR + 0X14C8EC))

#define GFX_STRIPED_case1_maggey_with_dustin ((u8*)(GFX_BASE_ADDR + 0X14FBA8))

#define GFX_STRIPED_case1_maggey_spotting_richard ((u8*)(GFX_BASE_ADDR + 0X1537C8))

#define GFX_STRIPED_case1_intro_richard_with_fire_extinguisher ((u8*)(GFX_BASE_ADDR + 0X157938))

#define GFX_STRIPED_case1_intro_nightmare_2 ((u8*)(GFX_BASE_ADDR + 0X162318))

#define GFX_STRIPED_case1_intro_richard_looking ((u8*)(GFX_BASE_ADDR + 0X164658))

#define GFX_STRIPED_kurain_village ((u8*)(GFX_BASE_ADDR + 0X168BA4))

#define GFX_STRIPED_kurain_main_hall ((u8*)(GFX_BASE_ADDR + 0X16F718))

#define GFX_STRIPED_meeting_room ((u8*)(GFX_BASE_ADDR + 0X178370))

#define GFX_STRIPED_winding_way ((u8*)(GFX_BASE_ADDR + 0X1888D4))

#define GFX_STRIPED_kurain_spare_room_with_box ((u8*)(GFX_BASE_ADDR + 0X1904A0))

#define GFX_STRIPED_kurain_spare_room ((u8*)(GFX_BASE_ADDR + 0X197CF0))

#define GFX_STRIPED_hotti_clinic ((u8*)(GFX_BASE_ADDR + 0X19F29C))

#define GFX_STRIPED_case2_intro_car ((u8*)(GFX_BASE_ADDR + 0X1A5268))

#define GFX_STRIPED_case2_intro_car_crash ((u8*)(GFX_BASE_ADDR + 0X1AA994))

#define GFX_STRIPED_case2_intro_phoenix_with_maya ((u8*)(GFX_BASE_ADDR + 0X1B5168))

#define GFX_STRIPED_dummy_background_1 ((u8*)(GFX_BASE_ADDR + 0X1BA99C))

#define GFX_STRIPED_case2_newspaper_car_crash_page_1 ((u8*)(GFX_BASE_ADDR + 0X1BBA44))

#define GFX_STRIPED_case2_newspaper_car_crash_page_2 ((u8*)(GFX_BASE_ADDR + 0X1BC9B4))

#define GFX_STRIPED_case2_newspaper_car_crash_page_3 ((u8*)(GFX_BASE_ADDR + 0X1BD900))

#define GFX_STRIPED_case2_diagram_of_meeting_room ((u8*)(GFX_BASE_ADDR + 0X1BE868))

#define GFX_STRIPED_case2_diagram_of_fey_manor ((u8*)(GFX_BASE_ADDR + 0X1BF398))

#define GFX_STRIPED_case2_intro_car_lights ((u8*)(GFX_BASE_ADDR + 0X1C0288))

#define GFX_STRIPED_pwaa1_dead_mia_in_office ((u8*)(GFX_BASE_ADDR + 0X1C13EC))

#define GFX_STRIPED_case2_maya_with_turner ((u8*)(GFX_BASE_ADDR + 0X1C4518))

#define GFX_STRIPED_case2_mimi_in_hospital ((u8*)(GFX_BASE_ADDR + 0X1C7A14))

#define GFX_STRIPED_case2_mayas_robe ((u8*)(GFX_BASE_ADDR + 0X1CB9E4))

#define GFX_STRIPED_case2_photo_of_incident ((u8*)(GFX_BASE_ADDR + 0X1CD950))

#define GFX_STRIPED_case2_photo_of_attacker ((u8*)(GFX_BASE_ADDR + 0X1D0B30))

#define GFX_STRIPED_case2_photo_of_summoned_mia ((u8*)(GFX_BASE_ADDR + 0X1D40A8))

#define GFX_STRIPED_case2_pearl_fixing_urn ((u8*)(GFX_BASE_ADDR + 0X1D948C))

#define GFX_STRIPED_case2_morgan_fey ((u8*)(GFX_BASE_ADDR + 0X1DC744))

#define GFX_STRIPED_case2_ini_with_summoned_mimi ((u8*)(GFX_BASE_ADDR + 0X1E30D4))

#define GFX_STRIPED_case2_ini_with_sleeping_maya ((u8*)(GFX_BASE_ADDR + 0X1E6500))

#define GFX_STRIPED_case2_box_behind_screen ((u8*)(GFX_BASE_ADDR + 0X1E98CC))

#define GFX_STRIPED_case2_turner_with_gun ((u8*)(GFX_BASE_ADDR + 0X1EC908))

#define GFX_STRIPED_case2_maya_with_summoned_mia ((u8*)(GFX_BASE_ADDR + 0X1F0384))

#define GFX_STRIPED_circus_tent ((u8*)(GFX_BASE_ADDR + 0X1F587C))

#define GFX_STRIPED_circus_cafeteria ((u8*)(GFX_BASE_ADDR + 0X1FD4A0))

#define GFX_STRIPED_mr_berrys_office ((u8*)(GFX_BASE_ADDR + 0X205060))

#define GFX_STRIPED_berry_big_circus_entrance_day ((u8*)(GFX_BASE_ADDR + 0X20C13C))

#define GFX_STRIPED_berry_big_circus_entrance_night ((u8*)(GFX_BASE_ADDR + 0X212954))

#define GFX_STRIPED_circus_courtyard ((u8*)(GFX_BASE_ADDR + 0X2197D4))

#define GFX_STRIPED_moes_room ((u8*)(GFX_BASE_ADDR + 0X21FAAC))

#define GFX_STRIPED_acros_room ((u8*)(GFX_BASE_ADDR + 0X226EB0))

#define GFX_STRIPED_case3_intro_lion_blue_yellow ((u8*)(GFX_BASE_ADDR + 0X22D154))

#define GFX_STRIPED_case3_intro_lion_green_red ((u8*)(GFX_BASE_ADDR + 0X232700))

#define GFX_STRIPED_case3_intro_circus ((u8*)(GFX_BASE_ADDR + 0X237768))

#define GFX_STRIPED_case3_intro_maximillion ((u8*)(GFX_BASE_ADDR + 0X246EA8))

#define GFX_STRIPED_case3_threatening_note_text ((u8*)(GFX_BASE_ADDR + 0X24C934))

#define GFX_STRIPED_case3_poster_of_maximillion ((u8*)(GFX_BASE_ADDR + 0X24D6D8))

#define GFX_STRIPED_case3_photo_of_maximillion_with_trophy ((u8*)(GFX_BASE_ADDR + 0X25309C))

#define GFX_STRIPED_case3_maximillion_with_contract ((u8*)(GFX_BASE_ADDR + 0X2599B0))

#define GFX_STRIPED_case3_diagram_circus ((u8*)(GFX_BASE_ADDR + 0X25D548))

#define GFX_STRIPED_case3_photo_of_russell ((u8*)(GFX_BASE_ADDR + 0X25EB18))

#define GFX_STRIPED_case3_dead_russell_outside ((u8*)(GFX_BASE_ADDR + 0X261440))

#define GFX_STRIPED_case3_russell_about_to_get_hit ((u8*)(GFX_BASE_ADDR + 0X263C98))

#define GFX_STRIPED_case3_russell_getting_hit ((u8*)(GFX_BASE_ADDR + 0X265F30))

#define GFX_STRIPED_case3_bat_with_lion ((u8*)(GFX_BASE_ADDR + 0X268878))

#define GFX_STRIPED_case3_ben_spotting_max ((u8*)(GFX_BASE_ADDR + 0X26DE10))

#define GFX_STRIPED_case3_acro_spotting_statue ((u8*)(GFX_BASE_ADDR + 0X271590))

#define GFX_STRIPED_case3_bust_of_maximillion ((u8*)(GFX_BASE_ADDR + 0X2742C4))

#define GFX_STRIPED_case3_acro_dropping_statue ((u8*)(GFX_BASE_ADDR + 0X279384))

#define GFX_STRIPED_case3_max_grabbing_bottle ((u8*)(GFX_BASE_ADDR + 0X27D43C))

#define GFX_STRIPED_case3_acros_bottom_half_in_wheelchair ((u8*)(GFX_BASE_ADDR + 0X281104))

#define GFX_STRIPED_case3_edgeworth_at_airport ((u8*)(GFX_BASE_ADDR + 0X283140))

#define GFX_STRIPED_gatewater_hotel_ballroom ((u8*)(GFX_BASE_ADDR + 0X28BCB0))

#define GFX_STRIPED_gatewater_hotel_hallway ((u8*)(GFX_BASE_ADDR + 0X2949C0))

#define GFX_STRIPED_matt_engardes_hotel_room ((u8*)(GFX_BASE_ADDR + 0X29C6F8))

#define GFX_STRIPED_juan_corridas_hotel_room ((u8*)(GFX_BASE_ADDR + 0X2A414C))

#define GFX_STRIPED_dummy_background_2 ((u8*)(GFX_BASE_ADDR + 0X2B23A8))

#define GFX_STRIPED_gatewater_hotel_lobby ((u8*)(GFX_BASE_ADDR + 0X2B3490))

#define GFX_STRIPED_matt_engardes_house ((u8*)(GFX_BASE_ADDR + 0X2BBD14))

#define GFX_STRIPED_secret_room ((u8*)(GFX_BASE_ADDR + 0X2C3DA8))

#define GFX_STRIPED_wine_cellar ((u8*)(GFX_BASE_ADDR + 0X2CA848))

#define GFX_STRIPED_case4_intro_heroes_lined_up ((u8*)(GFX_BASE_ADDR + 0X2D1E1C))

#define GFX_STRIPED_case4_intro_nickel_samurai_appears ((u8*)(GFX_BASE_ADDR + 0X2DEE18))

#define GFX_STRIPED_case4_intro_nickel_samurai_with_fan ((u8*)(GFX_BASE_ADDR + 0X2E101C))

#define GFX_STRIPED_case4_over_the_clouds ((u8*)(GFX_BASE_ADDR + 0X2E7880))

#define GFX_STRIPED_case4_jammin_ninja_poster ((u8*)(GFX_BASE_ADDR + 0X2EDE18))

#define GFX_STRIPED_airport ((u8*)(GFX_BASE_ADDR + 0X2F5334))

#define GFX_STRIPED_case4_photo_of_juan_dead ((u8*)(GFX_BASE_ADDR + 0X2FC52C))

#define GFX_STRIPED_case4_diagram_hotel ((u8*)(GFX_BASE_ADDR + 0X2FF748))

#define GFX_STRIPED_case4_photo_of_nickel_samurai_in_hall ((u8*)(GFX_BASE_ADDR + 0X3008EC))

#define GFX_STRIPED_case4_nickel_samurai_poster ((u8*)(GFX_BASE_ADDR + 0X30414C))

#define GFX_STRIPED_case4_juan_finding_dead_celeste ((u8*)(GFX_BASE_ADDR + 0X30B428))

#define GFX_STRIPED_case4_adrian_puttin_on_costume ((u8*)(GFX_BASE_ADDR + 0X30E438))

#define GFX_STRIPED_case4_adrian_with_sleeping_matt ((u8*)(GFX_BASE_ADDR + 0X311C50))

#define GFX_STRIPED_case4_backdrop_of_matt_with_partner ((u8*)(GFX_BASE_ADDR + 0X314EF8))

#define GFX_STRIPED_pwaa1_edgeworth_picking_up_gun ((u8*)(GFX_BASE_ADDR + 0X3178B0))

#define GFX_STRIPED_case4_matt_getting_juice_from_shelly ((u8*)(GFX_BASE_ADDR + 0X31DE14))

#define GFX_STRIPED_case4_franziska_entering ((u8*)(GFX_BASE_ADDR + 0X321F68))

#define GFX_STRIPED_case4_shelly_handing_over_bear ((u8*)(GFX_BASE_ADDR + 0X328A38))

#define GFX_STRIPED_case4_phoenix_with_maya_and_pearl ((u8*)(GFX_BASE_ADDR + 0X32BDB0))

#define GFX_STRIPED_case4_calling_card_with_drawing ((u8*)(GFX_BASE_ADDR + 0X332D6C))

#define GFX_STRIPED_case4_phoenix_leaving_bad_end ((u8*)(GFX_BASE_ADDR + 0X33531C))

#define GFX_STRIPED_case4_adrian_finding_juan_with_juice ((u8*)(GFX_BASE_ADDR + 0X338FD0))

#define GFX_STRIPED_case4_calling_card ((u8*)(GFX_BASE_ADDR + 0X33CAF0))

#define GFX_STRIPED_steel_samurai ((u8*)(GFX_BASE_ADDR + 0X33DBF0))

#define GFX_STRIPED_case4_tabloid_article ((u8*)(GFX_BASE_ADDR + 0X34384C))

#define GFX_STRIPED_pwaa1_class_trial_edgeworth ((u8*)(GFX_BASE_ADDR + 0X3446CC))

#define GFX_IMG_nickel_samurai_case3_op_zoomin ((u8*)(GFX_BASE_ADDR + 0X347C38))

#define GFX_TILEMAP_nickel_samurai_case3_op_zoomin ((u8*)(GFX_BASE_ADDR + 0X348370))

#define GFX_PALETTE_nickel_samurai_case3_op_zoomin ((u8*)(GFX_BASE_ADDR + 0X3483F8))

#define GFX_IMG_speedlines_first_and_last_columns ((u8*)(GFX_BASE_ADDR + 0X34845C))

#define GFX_PALETTE_court_scroll ((u8*)(GFX_BASE_ADDR + 0X348BDC))

#define GFX_IMG_court_scroll ((u8*)(GFX_BASE_ADDR + 0X348BFC))

#define GFX_ANIMATION_TILES_person_animation01 ((u8*)(GFX_BASE_ADDR + 0X361BFC))

#define GFX_ANIMATION_SEQUENCE_person_animation01 ((u8*)(GFX_BASE_ADDR + 0X37B9C0))

#define GFX_ANIMATION_TILES_person_animation02 ((u8*)(GFX_BASE_ADDR + 0X37F048))

#define GFX_ANIMATION_SEQUENCE_person_animation02 ((u8*)(GFX_BASE_ADDR + 0X399ABC))

#define GFX_ANIMATION_TILES_person_animation03 ((u8*)(GFX_BASE_ADDR + 0X39E560))

#define GFX_ANIMATION_SEQUENCE_person_animation03 ((u8*)(GFX_BASE_ADDR + 0X3A8C1C))

#define GFX_ANIMATION_TILES_person_animation04 ((u8*)(GFX_BASE_ADDR + 0X3AB2C8))

#define GFX_ANIMATION_SEQUENCE_person_animation04 ((u8*)(GFX_BASE_ADDR + 0X3ADA24))

#define GFX_ANIMATION_TILES_person_animation05 ((u8*)(GFX_BASE_ADDR + 0X3ADC94))

#define GFX_ANIMATION_SEQUENCE_person_animation05 ((u8*)(GFX_BASE_ADDR + 0X3B2514))

#define GFX_ANIMATION_TILES_person_animation06 ((u8*)(GFX_BASE_ADDR + 0X3B32A8))

#define GFX_ANIMATION_SEQUENCE_person_animation06 ((u8*)(GFX_BASE_ADDR + 0X3D39C0))

#define GFX_ANIMATION_TILES_person_animation07 ((u8*)(GFX_BASE_ADDR + 0X3D9834))

#define GFX_ANIMATION_SEQUENCE_person_animation07 ((u8*)(GFX_BASE_ADDR + 0X3EEE0C))

#define GFX_ANIMATION_TILES_person_animation08 ((u8*)(GFX_BASE_ADDR + 0X3F2654))

#define GFX_ANIMATION_SEQUENCE_person_animation08 ((u8*)(GFX_BASE_ADDR + 0X417F34))

#define GFX_ANIMATION_TILES_person_animation09 ((u8*)(GFX_BASE_ADDR + 0X41BB84))

#define GFX_ANIMATION_SEQUENCE_person_animation09 ((u8*)(GFX_BASE_ADDR + 0X428750))

#define GFX_ANIMATION_TILES_person_animation10 ((u8*)(GFX_BASE_ADDR + 0X42A0A8))

#define GFX_ANIMATION_SEQUENCE_person_animation10 ((u8*)(GFX_BASE_ADDR + 0X430B7C))

#define GFX_ANIMATION_TILES_person_animation11 ((u8*)(GFX_BASE_ADDR + 0X4315D4))

#define GFX_ANIMATION_SEQUENCE_person_animation11 ((u8*)(GFX_BASE_ADDR + 0X435B00))

#define GFX_ANIMATION_TILES_person_animation12 ((u8*)(GFX_BASE_ADDR + 0X435EAC))

#define GFX_ANIMATION_SEQUENCE_person_animation12 ((u8*)(GFX_BASE_ADDR + 0X459338))

#define GFX_ANIMATION_TILES_person_animation13 ((u8*)(GFX_BASE_ADDR + 0X45D9C8))

#define GFX_ANIMATION_SEQUENCE_person_animation13 ((u8*)(GFX_BASE_ADDR + 0X478FB8))

#define GFX_ANIMATION_TILES_person_animation14 ((u8*)(GFX_BASE_ADDR + 0X47B9D4))

#define GFX_ANIMATION_SEQUENCE_person_animation14 ((u8*)(GFX_BASE_ADDR + 0X489DFC))

#define GFX_ANIMATION_TILES_person_animation15 ((u8*)(GFX_BASE_ADDR + 0X48CBD0))

#define GFX_ANIMATION_SEQUENCE_person_animation15 ((u8*)(GFX_BASE_ADDR + 0X4990E4))

#define GFX_ANIMATION_TILES_person_animation16 ((u8*)(GFX_BASE_ADDR + 0X49A858))

#define GFX_ANIMATION_SEQUENCE_person_animation16 ((u8*)(GFX_BASE_ADDR + 0X4A8B08))

#define GFX_ANIMATION_TILES_person_animation17 ((u8*)(GFX_BASE_ADDR + 0X4AA150))

#define GFX_ANIMATION_SEQUENCE_person_animation17 ((u8*)(GFX_BASE_ADDR + 0X4B6A7C))

#define GFX_ANIMATION_TILES_person_animation18 ((u8*)(GFX_BASE_ADDR + 0X4B7AC8))

#define GFX_ANIMATION_SEQUENCE_person_animation18 ((u8*)(GFX_BASE_ADDR + 0X4C0DFC))

#define GFX_ANIMATION_TILES_person_animation19 ((u8*)(GFX_BASE_ADDR + 0X4C26B4))

#define GFX_ANIMATION_SEQUENCE_person_animation19 ((u8*)(GFX_BASE_ADDR + 0X4D30D4))

#define GFX_ANIMATION_TILES_person_animation20 ((u8*)(GFX_BASE_ADDR + 0X4D756C))

#define GFX_ANIMATION_SEQUENCE_person_animation20 ((u8*)(GFX_BASE_ADDR + 0X4E7DCC))

#define GFX_ANIMATION_TILES_person_animation21 ((u8*)(GFX_BASE_ADDR + 0X4EB3B8))

#define GFX_ANIMATION_SEQUENCE_person_animation21 ((u8*)(GFX_BASE_ADDR + 0X4F7F28))

#define GFX_ANIMATION_TILES_person_animation22 ((u8*)(GFX_BASE_ADDR + 0X4FE164))

#define GFX_ANIMATION_SEQUENCE_person_animation22 ((u8*)(GFX_BASE_ADDR + 0X513078))

#define GFX_ANIMATION_TILES_person_animation23 ((u8*)(GFX_BASE_ADDR + 0X51685C))

#define GFX_ANIMATION_SEQUENCE_person_animation23 ((u8*)(GFX_BASE_ADDR + 0X52343C))

#define GFX_ANIMATION_TILES_person_animation24 ((u8*)(GFX_BASE_ADDR + 0X52649C))

#define GFX_ANIMATION_SEQUENCE_person_animation24 ((u8*)(GFX_BASE_ADDR + 0X5486DC))

#define GFX_ANIMATION_TILES_person_animation25 ((u8*)(GFX_BASE_ADDR + 0X5500E8))

#define GFX_ANIMATION_SEQUENCE_person_animation25 ((u8*)(GFX_BASE_ADDR + 0X5649D0))

#define GFX_ANIMATION_TILES_person_animation26 ((u8*)(GFX_BASE_ADDR + 0X5693BC))

#define GFX_ANIMATION_SEQUENCE_person_animation26 ((u8*)(GFX_BASE_ADDR + 0X56DE1C))

#define GFX_ANIMATION_TILES_person_animation27 ((u8*)(GFX_BASE_ADDR + 0X56E36C))

#define GFX_ANIMATION_SEQUENCE_person_animation27 ((u8*)(GFX_BASE_ADDR + 0X57C8D8))

#define GFX_ANIMATION_TILES_person_animation28 ((u8*)(GFX_BASE_ADDR + 0X57EF54))

#define GFX_ANIMATION_SEQUENCE_person_animation28 ((u8*)(GFX_BASE_ADDR + 0X58EC0C))

#define GFX_ANIMATION_TILES_person_animation29 ((u8*)(GFX_BASE_ADDR + 0X590428))

#define GFX_ANIMATION_SEQUENCE_person_animation29 ((u8*)(GFX_BASE_ADDR + 0X59CE38))

#define GFX_ANIMATION_TILES_person_animation30 ((u8*)(GFX_BASE_ADDR + 0X59EB28))

#define GFX_ANIMATION_SEQUENCE_person_animation30 ((u8*)(GFX_BASE_ADDR + 0X5A0A74))

#define GFX_ANIMATION_TILES_person_animation31 ((u8*)(GFX_BASE_ADDR + 0X5A0CA4))

#define GFX_ANIMATION_SEQUENCE_person_animation31 ((u8*)(GFX_BASE_ADDR + 0X5A3000))

#define GFX_ANIMATION_TILES_person_animation32 ((u8*)(GFX_BASE_ADDR + 0X5A32A4))

#define GFX_ANIMATION_SEQUENCE_person_animation32 ((u8*)(GFX_BASE_ADDR + 0X5A82BC))

#define GFX_ANIMATION_TILES_person_animation33 ((u8*)(GFX_BASE_ADDR + 0X5A9D44))

#define GFX_ANIMATION_SEQUENCE_person_animation33 ((u8*)(GFX_BASE_ADDR + 0X5AC8C4))

#define GFX_ANIMATION_TILES_person_animation34 ((u8*)(GFX_BASE_ADDR + 0X5ACAF4))

#define GFX_ANIMATION_SEQUENCE_person_animation34 ((u8*)(GFX_BASE_ADDR + 0X5ADE7C))

#define GFX_ANIMATION_TILES_person_animation35 ((u8*)(GFX_BASE_ADDR + 0X5ADEE0))

#define GFX_ANIMATION_SEQUENCE_person_animation35 ((u8*)(GFX_BASE_ADDR + 0X5AF280))

#define GFX_ANIMATION_TILES_tileset01 ((u8*)(GFX_BASE_ADDR + 0X5AF2DC))

#define GFX_ANIMATION_SEQUENCE_animation01 ((u8*)(GFX_BASE_ADDR + 0X5B9858))

#define GFX_ANIMATION_SEQUENCE_animation02 ((u8*)(GFX_BASE_ADDR + 0X5B987C))

#define GFX_ANIMATION_SEQUENCE_animation03 ((u8*)(GFX_BASE_ADDR + 0X5B989C))

#define GFX_ANIMATION_SEQUENCE_animation04 ((u8*)(GFX_BASE_ADDR + 0X5B98C0))

#define GFX_ANIMATION_SEQUENCE_animation05 ((u8*)(GFX_BASE_ADDR + 0X5B98E0))

#define GFX_ANIMATION_SEQUENCE_animation06 ((u8*)(GFX_BASE_ADDR + 0X5B9904))

#define GFX_ANIMATION_SEQUENCE_animation07 ((u8*)(GFX_BASE_ADDR + 0X5B99A4))

#define GFX_ANIMATION_SEQUENCE_animation08 ((u8*)(GFX_BASE_ADDR + 0X5B9A5C))

#define GFX_ANIMATION_SEQUENCE_animation09 ((u8*)(GFX_BASE_ADDR + 0X5B9AE4))

#define GFX_ANIMATION_SEQUENCE_animation10 ((u8*)(GFX_BASE_ADDR + 0X5B9B5C))

#define GFX_ANIMATION_SEQUENCE_animation11 ((u8*)(GFX_BASE_ADDR + 0X5B9C84))

#define GFX_ANIMATION_SEQUENCE_animation12 ((u8*)(GFX_BASE_ADDR + 0X5B9D8C))

#define GFX_ANIMATION_SEQUENCE_animation13 ((u8*)(GFX_BASE_ADDR + 0X5B9F3C))

#define GFX_ANIMATION_SEQUENCE_animation14 ((u8*)(GFX_BASE_ADDR + 0X5BA01C))

#define GFX_ANIMATION_SEQUENCE_animation15 ((u8*)(GFX_BASE_ADDR + 0X5BA0F8))

#define GFX_ANIMATION_SEQUENCE_animation16 ((u8*)(GFX_BASE_ADDR + 0X5BA3C0))

#define GFX_ANIMATION_SEQUENCE_animation17 ((u8*)(GFX_BASE_ADDR + 0X5BA6F8))

#define GFX_ANIMATION_SEQUENCE_animation18 ((u8*)(GFX_BASE_ADDR + 0X5BA868))

#define GFX_ANIMATION_SEQUENCE_animation19 ((u8*)(GFX_BASE_ADDR + 0X5BAA58))

#define GFX_ANIMATION_SEQUENCE_animation20 ((u8*)(GFX_BASE_ADDR + 0X5BADD0))

#define GFX_ANIMATION_SEQUENCE_animation21 ((u8*)(GFX_BASE_ADDR + 0X5BB16C))

#define GFX_ANIMATION_SEQUENCE_animation22 ((u8*)(GFX_BASE_ADDR + 0X5BB520))

#define GFX_ANIMATION_SEQUENCE_animation23 ((u8*)(GFX_BASE_ADDR + 0X5BB540))

#define GFX_ANIMATION_SEQUENCE_animation24 ((u8*)(GFX_BASE_ADDR + 0X5BB560))

#define GFX_ANIMATION_SEQUENCE_animation25 ((u8*)(GFX_BASE_ADDR + 0X5BB580))

#define GFX_ANIMATION_SEQUENCE_animation26 ((u8*)(GFX_BASE_ADDR + 0X5BB5A4))

#define GFX_ANIMATION_SEQUENCE_animation27 ((u8*)(GFX_BASE_ADDR + 0X5BB5C8))

#define GFX_ANIMATION_SEQUENCE_animation28 ((u8*)(GFX_BASE_ADDR + 0X5BB5E8))

#define GFX_ANIMATION_SEQUENCE_animation29 ((u8*)(GFX_BASE_ADDR + 0X5BB608))

#define GFX_ANIMATION_SEQUENCE_animation30 ((u8*)(GFX_BASE_ADDR + 0X5BB640))

#define GFX_ANIMATION_SEQUENCE_animation31 ((u8*)(GFX_BASE_ADDR + 0X5BB66C))

#define GFX_ANIMATION_SEQUENCE_animation32 ((u8*)(GFX_BASE_ADDR + 0X5BB6C4))

#define GFX_ANIMATION_SEQUENCE_animation33 ((u8*)(GFX_BASE_ADDR + 0X5BB72C))

#define GFX_ANIMATION_SEQUENCE_animation34 ((u8*)(GFX_BASE_ADDR + 0X5BB7BC))

#define GFX_ANIMATION_TILES_tileset02 ((u8*)(GFX_BASE_ADDR + 0X5BB860))

#define GFX_ANIMATION_SEQUENCE_animation35 ((u8*)(GFX_BASE_ADDR + 0X5FD184))

#define GFX_ANIMATION_SEQUENCE_animation36 ((u8*)(GFX_BASE_ADDR + 0X5FD27C))

#define GFX_ANIMATION_SEQUENCE_animation37 ((u8*)(GFX_BASE_ADDR + 0X5FD3A4))

#define GFX_ANIMATION_SEQUENCE_animation38 ((u8*)(GFX_BASE_ADDR + 0X5FD3C4))

#define GFX_ANIMATION_SEQUENCE_animation39 ((u8*)(GFX_BASE_ADDR + 0X5FD3E4))

#define GFX_ANIMATION_SEQUENCE_animation40 ((u8*)(GFX_BASE_ADDR + 0X5FD404))

#define GFX_ANIMATION_SEQUENCE_animation41 ((u8*)(GFX_BASE_ADDR + 0X5FD424))

#define GFX_ANIMATION_SEQUENCE_animation42 ((u8*)(GFX_BASE_ADDR + 0X5FD45C))

#define GFX_ANIMATION_SEQUENCE_animation43 ((u8*)(GFX_BASE_ADDR + 0X5FD494))

#define GFX_ANIMATION_SEQUENCE_animation44 ((u8*)(GFX_BASE_ADDR + 0X5FD4CC))

#define GFX_ANIMATION_SEQUENCE_animation45 ((u8*)(GFX_BASE_ADDR + 0X5FD4EC))

#define GFX_ANIMATION_SEQUENCE_animation46 ((u8*)(GFX_BASE_ADDR + 0X5FD55C))

#define GFX_ANIMATION_SEQUENCE_animation47 ((u8*)(GFX_BASE_ADDR + 0X5FD74C))

#define GFX_ANIMATION_SEQUENCE_animation48 ((u8*)(GFX_BASE_ADDR + 0X5FD7DC))

#define GFX_ANIMATION_SEQUENCE_animation49 ((u8*)(GFX_BASE_ADDR + 0X5FD914))

#define GFX_ANIMATION_SEQUENCE_animation50 ((u8*)(GFX_BASE_ADDR + 0X5FD934))

#define GFX_ANIMATION_SEQUENCE_animation51 ((u8*)(GFX_BASE_ADDR + 0X5FD954))

#define GFX_ANIMATION_SEQUENCE_animation52 ((u8*)(GFX_BASE_ADDR + 0X5FDAB4))

#define GFX_ANIMATION_SEQUENCE_animation53 ((u8*)(GFX_BASE_ADDR + 0X5FDCC8))

#define GFX_ANIMATION_SEQUENCE_animation54 ((u8*)(GFX_BASE_ADDR + 0X5FDE7C))

#define GFX_ANIMATION_SEQUENCE_animation55 ((u8*)(GFX_BASE_ADDR + 0X5FDEE8))

#define GFX_ANIMATION_SEQUENCE_animation56 ((u8*)(GFX_BASE_ADDR + 0X5FE228))

#define GFX_ANIMATION_SEQUENCE_animation57 ((u8*)(GFX_BASE_ADDR + 0X5FE2A4))

#define GFX_ANIMATION_SEQUENCE_animation58 ((u8*)(GFX_BASE_ADDR + 0X5FE420))

#define GFX_ANIMATION_SEQUENCE_animation59 ((u8*)(GFX_BASE_ADDR + 0X5FE5B0))

#define GFX_ANIMATION_SEQUENCE_animation60 ((u8*)(GFX_BASE_ADDR + 0X5FE658))

#define GFX_ANIMATION_SEQUENCE_animation61 ((u8*)(GFX_BASE_ADDR + 0X5FE82C))

#define GFX_ANIMATION_SEQUENCE_animation62 ((u8*)(GFX_BASE_ADDR + 0X5FE850))

#define GFX_ANIMATION_SEQUENCE_animation63 ((u8*)(GFX_BASE_ADDR + 0X5FEAD8))

#define GFX_ANIMATION_SEQUENCE_animation64 ((u8*)(GFX_BASE_ADDR + 0X5FEB48))

#define GFX_ANIMATION_SEQUENCE_animation65 ((u8*)(GFX_BASE_ADDR + 0X5FEB8C))

#define GFX_ANIMATION_SEQUENCE_animation66 ((u8*)(GFX_BASE_ADDR + 0X5FEBF8))

#define GFX_ANIMATION_SEQUENCE_animation67 ((u8*)(GFX_BASE_ADDR + 0X5FED10))

#define GFX_ANIMATION_SEQUENCE_animation68 ((u8*)(GFX_BASE_ADDR + 0X5FEE64))

#define GFX_ANIMATION_SEQUENCE_animation69 ((u8*)(GFX_BASE_ADDR + 0X5FF164))

#define GFX_ANIMATION_SEQUENCE_animation70 ((u8*)(GFX_BASE_ADDR + 0X5FF72C))

#define GFX_ANIMATION_SEQUENCE_animation71 ((u8*)(GFX_BASE_ADDR + 0X5FF86C))

#define GFX_ANIMATION_SEQUENCE_animation72 ((u8*)(GFX_BASE_ADDR + 0X5FF9F0))

#define GFX_ANIMATION_SEQUENCE_animation73 ((u8*)(GFX_BASE_ADDR + 0X5FFB94))

#define GFX_ANIMATION_SEQUENCE_animation74 ((u8*)(GFX_BASE_ADDR + 0X5FFE68))

#define GFX_ANIMATION_SEQUENCE_animation75 ((u8*)(GFX_BASE_ADDR + 0X5FFF78))

#define GFX_ANIMATION_SEQUENCE_animation76 ((u8*)(GFX_BASE_ADDR + 0X600088))

#define GFX_ANIMATION_SEQUENCE_animation77 ((u8*)(GFX_BASE_ADDR + 0X600198))

#define GFX_ANIMATION_SEQUENCE_animation78 ((u8*)(GFX_BASE_ADDR + 0X6002A8))

#define GFX_ANIMATION_SEQUENCE_animation79 ((u8*)(GFX_BASE_ADDR + 0X6002C8))

#define GFX_ANIMATION_SEQUENCE_animation80 ((u8*)(GFX_BASE_ADDR + 0X6002E8))

#define GFX_ANIMATION_SEQUENCE_animation81 ((u8*)(GFX_BASE_ADDR + 0X600308))

#define GFX_ANIMATION_SEQUENCE_animation82 ((u8*)(GFX_BASE_ADDR + 0X600328))

#define GFX_ANIMATION_SEQUENCE_animation83 ((u8*)(GFX_BASE_ADDR + 0X600348))

#define GFX_ANIMATION_SEQUENCE_animation84 ((u8*)(GFX_BASE_ADDR + 0X600368))

#define GFX_ANIMATION_SEQUENCE_animation85 ((u8*)(GFX_BASE_ADDR + 0X600390))

#define GFX_ANIMATION_SEQUENCE_animation86 ((u8*)(GFX_BASE_ADDR + 0X6005C4))

#define GFX_ANIMATION_SEQUENCE_animation87 ((u8*)(GFX_BASE_ADDR + 0X600600))

#define GFX_ANIMATION_SEQUENCE_animation88 ((u8*)(GFX_BASE_ADDR + 0X600620))

#define GFX_ANIMATION_SEQUENCE_animation89 ((u8*)(GFX_BASE_ADDR + 0X600650))

#define GFX_ANIMATION_SEQUENCE_animation90 ((u8*)(GFX_BASE_ADDR + 0X600680))

#define GFX_ANIMATION_SEQUENCE_animation91 ((u8*)(GFX_BASE_ADDR + 0X6006A4))

#define GFX_ANIMATION_SEQUENCE_animation92 ((u8*)(GFX_BASE_ADDR + 0X6006C8))

#define GFX_ANIMATION_SEQUENCE_animation93 ((u8*)(GFX_BASE_ADDR + 0X600700))

#define GFX_ANIMATION_SEQUENCE_animation94 ((u8*)(GFX_BASE_ADDR + 0X60076C))

#define GFX_ANIMATION_SEQUENCE_animation95 ((u8*)(GFX_BASE_ADDR + 0X6007D8))

#define GFX_ANIMATION_SEQUENCE_animation96 ((u8*)(GFX_BASE_ADDR + 0X600800))

#define GFX_ANIMATION_SEQUENCE_animation97 ((u8*)(GFX_BASE_ADDR + 0X600824))

#define GFX_ANIMATION_SEQUENCE_animation98 ((u8*)(GFX_BASE_ADDR + 0X60084C))

#define GFX_ANIMATION_SEQUENCE_animation99 ((u8*)(GFX_BASE_ADDR + 0X600870))

#define GFX_ANIMATION_SEQUENCE_animation100 ((u8*)(GFX_BASE_ADDR + 0X6008A0))

#define GFX_ANIMATION_SEQUENCE_animation101 ((u8*)(GFX_BASE_ADDR + 0X6008C4))

#define GFX_ANIMATION_SEQUENCE_animation102 ((u8*)(GFX_BASE_ADDR + 0X6008EC))

#define GFX_ANIMATION_SEQUENCE_animation103 ((u8*)(GFX_BASE_ADDR + 0X600910))

#define GFX_ANIMATION_SEQUENCE_animation104 ((u8*)(GFX_BASE_ADDR + 0X60093C))

#define GFX_ANIMATION_SEQUENCE_animation105 ((u8*)(GFX_BASE_ADDR + 0X600980))

#define GFX_ANIMATION_SEQUENCE_animation106 ((u8*)(GFX_BASE_ADDR + 0X6009A4))

#define GFX_ANIMATION_SEQUENCE_animation107 ((u8*)(GFX_BASE_ADDR + 0X6009D4))

#define GFX_ANIMATION_SEQUENCE_animation108 ((u8*)(GFX_BASE_ADDR + 0X600A00))

#define GFX_ANIMATION_SEQUENCE_animation109 ((u8*)(GFX_BASE_ADDR + 0X600A30))

#define GFX_ANIMATION_SEQUENCE_animation110 ((u8*)(GFX_BASE_ADDR + 0X600A54))

#define GFX_ANIMATION_SEQUENCE_animation111 ((u8*)(GFX_BASE_ADDR + 0X600A7C))

#define GFX_ANIMATION_SEQUENCE_animation112 ((u8*)(GFX_BASE_ADDR + 0X600AA0))

#define GFX_ANIMATION_TILES_tileset03 ((u8*)(GFX_BASE_ADDR + 0X600AC8))

#endif
