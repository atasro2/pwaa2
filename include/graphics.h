#ifndef GUARD_GRAPHICS_H
#define GUARD_GRAPHICS_H

#define GFX_BASE_ADDR 0x130000

#define GFX_PALETTE_title_screen ((u8*)(GFX_BASE_ADDR + 0x0))
#define superblah ((u8*)(GFX_BASE_ADDR + 0x0))

#define GFX_IMG_title_screen ((u8*)(GFX_BASE_ADDR + 0x200))

#define GFX_PALETTE_title_screen_demo ((u8*)(GFX_BASE_ADDR + 0x40e4))

#define GFX_IMG_title_screen_demo ((u8*)(GFX_BASE_ADDR + 0x42e4))

#define GFX_IMG_unused_ascii_charset ((u8*)(GFX_BASE_ADDR + 0x70fc))

#define GFX_PALETTE_evidence_profile_descriptions ((u8*)(GFX_BASE_ADDR + 0x78fc))

#define GFX_IMG_save_game_tiles ((u8*)(GFX_BASE_ADDR + 0x791c))

#define GFX_IMG_nametags ((u8*)(GFX_BASE_ADDR + 0x891c))

#define GFX_IMG_detention_center_bottom_tiles ((u8*)(GFX_BASE_ADDR + 0xd91c))

#define GFX_IMG_left_right_arrows ((u8*)(GFX_BASE_ADDR + 0xd97c))

#define GFX_IMG_unk_13DC7C ((u8*)(GFX_BASE_ADDR + 0xdc7c))

#define GFX_IMG_unused_testimony_characters ((u8*)(GFX_BASE_ADDR + 0xe0fc))

#define GFX_IMG_action_buttons ((u8*)(GFX_BASE_ADDR + 0x100fc))

#define GFX_IMG_controller_buttons ((u8*)(GFX_BASE_ADDR + 0x110fc))

#define GFX_IMG_scroll_prompt ((u8*)(GFX_BASE_ADDR + 0x112fc))

#define GFX_IMG_testimony_text_tiles ((u8*)(GFX_BASE_ADDR + 0x114fc))

#define GFX_IMG_press_present_buttons ((u8*)(GFX_BASE_ADDR + 0x11cfc))

#define GFX_IMG_present_back_text ((u8*)(GFX_BASE_ADDR + 0x120fc))

#define GFX_IMG_profiles_text ((u8*)(GFX_BASE_ADDR + 0x122fc))

#define GFX_IMG_evidence_text ((u8*)(GFX_BASE_ADDR + 0x124fc))

#define GFX_IMG_examine_cursor ((u8*)(GFX_BASE_ADDR + 0x126fc))

#define GFX_IMG_checkmark ((u8*)(GFX_BASE_ADDR + 0x12bfc))

#define GFX_IMG_game_over_doors ((u8*)(GFX_BASE_ADDR + 0x12dfc))

#define GFX_IMG_not_guilty1 ((u8*)(GFX_BASE_ADDR + 0x130dc))

#define GFX_IMG_guilty1 ((u8*)(GFX_BASE_ADDR + 0x138dc))

#define GFX_IMG_guilty_not_guilty2 ((u8*)(GFX_BASE_ADDR + 0x140dc))

#define GFX_IMG_game_over_text ((u8*)(GFX_BASE_ADDR + 0x148dc))

#define GFX_IMG_new_game_continue ((u8*)(GFX_BASE_ADDR + 0x158dc))

#define GFX_IMG_confetti ((u8*)(GFX_BASE_ADDR + 0x15cdc))

#define GFX_IMG_witness_bench_1 ((u8*)(GFX_BASE_ADDR + 0x15cfc))

#define GFX_IMG_witness_bench_2 ((u8*)(GFX_BASE_ADDR + 0x160fc))

#define GFX_IMG_counsel_bench_1 ((u8*)(GFX_BASE_ADDR + 0x162fc))

#define GFX_IMG_counsel_bench_2 ((u8*)(GFX_BASE_ADDR + 0x166fc))

#define GFX_IMG_counsel_bench_3 ((u8*)(GFX_BASE_ADDR + 0x16afc))

#define GFX_IMG_counsel_bench_4 ((u8*)(GFX_BASE_ADDR + 0x16efc))

#define GFX_IMG_stop_button ((u8*)(GFX_BASE_ADDR + 0x16ffc))

#define GFX_IMG_psyche_lock ((u8*)(GFX_BASE_ADDR + 0x171fc))

#define GFX_IMG_healthbar_frame_1 ((u8*)(GFX_BASE_ADDR + 0x173fc))

#define GFX_IMG_healthbar_frame_2 ((u8*)(GFX_BASE_ADDR + 0x1747c))

#define GFX_IMG_healthbar_frame_3 ((u8*)(GFX_BASE_ADDR + 0x1757c))

#define GFX_IMG_healthbar_progress ((u8*)(GFX_BASE_ADDR + 0x175fc))

#define GFX_IMG_psyche_lock_chain_tileset ((u8*)(GFX_BASE_ADDR + 0x1777c))

#define GFX_TILEMAP_psyche_lock_chain_animation_01 ((u8*)(GFX_BASE_ADDR + 0x189e8))

#define GFX_TILEMAP_psyche_lock_chain_animation_02 ((u8*)(GFX_BASE_ADDR + 0x18c20))

#define GFX_TILEMAP_psyche_lock_chain_animation_03 ((u8*)(GFX_BASE_ADDR + 0x19010))

#define GFX_TILEMAP_psyche_lock_chain_animation_04 ((u8*)(GFX_BASE_ADDR + 0x19444))

#define GFX_TILEMAP_psyche_lock_chain_animation_05 ((u8*)(GFX_BASE_ADDR + 0x19ab0))

#define GFX_TILEMAP_psyche_lock_chain_animation_06 ((u8*)(GFX_BASE_ADDR + 0x1a224))

#define GFX_TILEMAP_psyche_lock_chain_animation_07 ((u8*)(GFX_BASE_ADDR + 0x1a3a8))

#define GFX_TILEMAP_psyche_lock_chain_animation_08 ((u8*)(GFX_BASE_ADDR + 0x1a610))

#define GFX_TILEMAP_psyche_lock_chain_animation_09 ((u8*)(GFX_BASE_ADDR + 0x1aa70))

#define GFX_TILEMAP_psyche_lock_chain_animation_10 ((u8*)(GFX_BASE_ADDR + 0x1aed0))

#define GFX_TILEMAP_psyche_lock_chain_animation_11 ((u8*)(GFX_BASE_ADDR + 0x1b6e4))

#define GFX_TILEMAP_psyche_lock_chain_animation_12 ((u8*)(GFX_BASE_ADDR + 0x1b944))

#define GFX_TILEMAP_psyche_lock_chain_animation_13 ((u8*)(GFX_BASE_ADDR + 0x1bce4))

#define GFX_TILEMAP_psyche_lock_chain_animation_14 ((u8*)(GFX_BASE_ADDR + 0x1c094))

#define GFX_TILEMAP_psyche_lock_chain_animation_15 ((u8*)(GFX_BASE_ADDR + 0x1c58c))

#define GFX_TILEMAP_psyche_lock_chain_animation_16 ((u8*)(GFX_BASE_ADDR + 0x1caa0))

#define GFX_TILEMAP_psyche_lock_chain_animation_17 ((u8*)(GFX_BASE_ADDR + 0x1cc38))

#define GFX_TILEMAP_psyche_lock_chain_animation_18 ((u8*)(GFX_BASE_ADDR + 0x1cee4))

#define GFX_TILEMAP_psyche_lock_chain_animation_19 ((u8*)(GFX_BASE_ADDR + 0x1d218))

#define GFX_TILEMAP_psyche_lock_chain_animation_20 ((u8*)(GFX_BASE_ADDR + 0x1d5a4))

#define GFX_PALETTE_unk_14DA60 ((u8*)(GFX_BASE_ADDR + 0x1da60))

#define GFX_PALETTE_unk_14DA80 ((u8*)(GFX_BASE_ADDR + 0x1da80))

#define GFX_PALETTE_unk_194100 ((u8*)(GFX_BASE_ADDR + 0x1daa0))

#define GFX_PALETTE_action_buttons_0 ((u8*)(GFX_BASE_ADDR + 0x1dba0))

#define GFX_PALETTE_action_buttons_1 ((u8*)(GFX_BASE_ADDR + 0x1dbc0))

#define GFX_PALETTE_controls_blurb ((u8*)(GFX_BASE_ADDR + 0x1dbe0))

#define GFX_PALETTE_scroll_prompt ((u8*)(GFX_BASE_ADDR + 0x1dc00))

#define GFX_PALETTE_testimony_text_tiles ((u8*)(GFX_BASE_ADDR + 0x1dc20))

#define GFX_PALETTE_press_present_buttons ((u8*)(GFX_BASE_ADDR + 0x1dc40))

#define GFX_PALETTE_examine_cursor_00 ((u8*)(GFX_BASE_ADDR + 0x1dc60))

#define GFX_PALETTE_examine_cursor_01 ((u8*)(GFX_BASE_ADDR + 0x1dc80))

#define GFX_PALETTE_examine_cursor_02 ((u8*)(GFX_BASE_ADDR + 0x1dca0))

#define GFX_PALETTE_examine_cursor_03 ((u8*)(GFX_BASE_ADDR + 0x1dcc0))

#define GFX_PALETTE_examine_cursor_04 ((u8*)(GFX_BASE_ADDR + 0x1dce0))

#define GFX_PALETTE_examine_cursor_05 ((u8*)(GFX_BASE_ADDR + 0x1dd00))

#define GFX_PALETTE_examine_cursor_06 ((u8*)(GFX_BASE_ADDR + 0x1dd20))

#define GFX_PALETTE_examine_cursor_07 ((u8*)(GFX_BASE_ADDR + 0x1dd40))

#define GFX_PALETTE_examine_cursor_08 ((u8*)(GFX_BASE_ADDR + 0x1dd60))

#define GFX_PALETTE_examine_cursor_09 ((u8*)(GFX_BASE_ADDR + 0x1dd80))

#define GFX_PALETTE_examine_cursor_10 ((u8*)(GFX_BASE_ADDR + 0x1dda0))

#define GFX_PALETTE_examine_cursor_11 ((u8*)(GFX_BASE_ADDR + 0x1ddc0))

#define GFX_PALETTE_examine_cursor_12 ((u8*)(GFX_BASE_ADDR + 0x1dde0))

#define GFX_PALETTE_examine_cursor_13 ((u8*)(GFX_BASE_ADDR + 0x1de00))

#define GFX_PALETTE_examine_cursor_14 ((u8*)(GFX_BASE_ADDR + 0x1de20))

#define GFX_PALETTE_examine_cursor_15 ((u8*)(GFX_BASE_ADDR + 0x1de40))

#define GFX_PALETTE_examine_cursor_16 ((u8*)(GFX_BASE_ADDR + 0x1de60))

#define GFX_PALETTE_checkmark ((u8*)(GFX_BASE_ADDR + 0x1de80))

#define GFX_PALETTE_game_over_doors ((u8*)(GFX_BASE_ADDR + 0x1dea0))

#define GFX_PALETTE_guilty ((u8*)(GFX_BASE_ADDR + 0x1dec0))

#define GFX_PALETTE_not_guilty ((u8*)(GFX_BASE_ADDR + 0x1dee0))

#define GFX_PALETTE_game_over_text ((u8*)(GFX_BASE_ADDR + 0x1df00))

#define GFX_PALETTE_new_game_continue_0 ((u8*)(GFX_BASE_ADDR + 0x1df20))

#define GFX_PALETTE_new_game_continue_1 ((u8*)(GFX_BASE_ADDR + 0x1df40))

#define GFX_PALETTE_new_game_continue_2 ((u8*)(GFX_BASE_ADDR + 0x1df60))

#define GFX_PALETTE_new_game_continue_3 ((u8*)(GFX_BASE_ADDR + 0x1df80))

#define GFX_PALETTE_new_game_continue_4 ((u8*)(GFX_BASE_ADDR + 0x1dfa0))

#define GFX_PALETTE_new_game_continue_5 ((u8*)(GFX_BASE_ADDR + 0x1dfc0))

#define GFX_PALETTE_confetti_0 ((u8*)(GFX_BASE_ADDR + 0x1dfe0))

#define GFX_PALETTE_confetti_1 ((u8*)(GFX_BASE_ADDR + 0x1e000))

#define GFX_PALETTE_confetti_2 ((u8*)(GFX_BASE_ADDR + 0x1e020))

#define GFX_PALETTE_confetti_3 ((u8*)(GFX_BASE_ADDR + 0x1e040))

#define GFX_PALETTE_unk_14E060 ((u8*)(GFX_BASE_ADDR + 0x1e060))

#define GFX_PALETTE_witness_bench ((u8*)(GFX_BASE_ADDR + 0x1e0e0))

#define GFX_PALETTE_counsel_bench ((u8*)(GFX_BASE_ADDR + 0x1e100))

#define GFX_PALETTE_case1_opening_purple_cloud_palettes ((u8*)(GFX_BASE_ADDR + 0x1e120))

#define GFX_PALETTE_psyche_lock ((u8*)(GFX_BASE_ADDR + 0x1e320))

#define GFX_PALETTE_healthbar_frame ((u8*)(GFX_BASE_ADDR + 0x1e340))

#define GFX_PALETTE_healthbar_progress_1 ((u8*)(GFX_BASE_ADDR + 0x1e360))

#define GFX_PALETTE_healthbar_progress_2 ((u8*)(GFX_BASE_ADDR + 0x1e380))

#define GFX_PALETTE_healthbar_progress_3 ((u8*)(GFX_BASE_ADDR + 0x1e3a0))

#define GFX_PALETTE_healthbar_progress_4 ((u8*)(GFX_BASE_ADDR + 0x1e3c0))

#define GFX_PALETTE_healthbar_progress_5 ((u8*)(GFX_BASE_ADDR + 0x1e3e0))

#define GFX_PALETTE_healthbar_progress_6 ((u8*)(GFX_BASE_ADDR + 0x1e400))

#define GFX_PALETTE_healthbar_progress_7 ((u8*)(GFX_BASE_ADDR + 0x1e420))

#define GFX_PALETTE_healthbar_progress_8 ((u8*)(GFX_BASE_ADDR + 0x1e440))

#define GFX_IMG_episode_select_options ((u8*)(GFX_BASE_ADDR + 0x1e460))

#define GFX_IMG_from_save_or_beginning_options ((u8*)(GFX_BASE_ADDR + 0x1f0c4))

#define GFX_IMG_save_yes_no ((u8*)(GFX_BASE_ADDR + 0x200c4))

#define GFX_IMG_maggey_byrde ((u8*)(GFX_BASE_ADDR + 0x208c4))

#define GFX_IMG_winston_payne ((u8*)(GFX_BASE_ADDR + 0x20ccc))

#define GFX_IMG_dick_gumshoe ((u8*)(GFX_BASE_ADDR + 0x21104))

#define GFX_IMG_dustin_prince ((u8*)(GFX_BASE_ADDR + 0x21568))

#define GFX_IMG_maya_fey_0 ((u8*)(GFX_BASE_ADDR + 0x219b8))

#define GFX_IMG_phoenix_badge ((u8*)(GFX_BASE_ADDR + 0x21d54))

#define GFX_IMG_phoenix_cellphone_0 ((u8*)(GFX_BASE_ADDR + 0x22124))

#define GFX_IMG_generic_autopsy_report_0 ((u8*)(GFX_BASE_ADDR + 0x224cc))

#define GFX_IMG_generic_photo_0 ((u8*)(GFX_BASE_ADDR + 0x22970))

#define GFX_IMG_broken_glasses ((u8*)(GFX_BASE_ADDR + 0x22dbc))

#define GFX_IMG_generic_photo_1 ((u8*)(GFX_BASE_ADDR + 0x231c8))

#define GFX_IMG_dustins_baseball_glove ((u8*)(GFX_BASE_ADDR + 0x235f8))

#define GFX_IMG_generic_letter_0 ((u8*)(GFX_BASE_ADDR + 0x239c8))

#define GFX_IMG_generic_letter_1 ((u8*)(GFX_BASE_ADDR + 0x23de8))

#define GFX_IMG_phoenix_cellphone_1 ((u8*)(GFX_BASE_ADDR + 0x2421c))

#define GFX_IMG_phoenix_business_card_0 ((u8*)(GFX_BASE_ADDR + 0x2464c))

#define GFX_IMG_phoenix_business_card_1 ((u8*)(GFX_BASE_ADDR + 0x24ad0))

#define GFX_IMG_mayas_cellphone ((u8*)(GFX_BASE_ADDR + 0x24f20))

#define GFX_IMG_richard_wellington ((u8*)(GFX_BASE_ADDR + 0x2523c))

#define GFX_IMG_turner_grey_0 ((u8*)(GFX_BASE_ADDR + 0x2566c))

#define GFX_IMG_turner_grey_1 ((u8*)(GFX_BASE_ADDR + 0x25ae4))

#define GFX_IMG_pearl_fey_0 ((u8*)(GFX_BASE_ADDR + 0x25fbc))

#define GFX_IMG_pearl_fey_1 ((u8*)(GFX_BASE_ADDR + 0x263d0))

#define GFX_IMG_maya_fey_1 ((u8*)(GFX_BASE_ADDR + 0x2680c))

#define GFX_IMG_maya_fey_2 ((u8*)(GFX_BASE_ADDR + 0x26c20))

#define GFX_IMG_mia_fey ((u8*)(GFX_BASE_ADDR + 0x270b8))

#define GFX_IMG_lotta_hart_0 ((u8*)(GFX_BASE_ADDR + 0x27500))

#define GFX_IMG_morgan_fey_0 ((u8*)(GFX_BASE_ADDR + 0x27904))

#define GFX_IMG_morgan_fey_1 ((u8*)(GFX_BASE_ADDR + 0x27d08))

#define GFX_IMG_mimi_miney ((u8*)(GFX_BASE_ADDR + 0x28134))

#define GFX_IMG_ini_miney_0 ((u8*)(GFX_BASE_ADDR + 0x285c4))

#define GFX_IMG_ini_miney_1 ((u8*)(GFX_BASE_ADDR + 0x289ac))

#define GFX_IMG_franziska_von_karma_0 ((u8*)(GFX_BASE_ADDR + 0x28e10))

#define GFX_IMG_ami_fey ((u8*)(GFX_BASE_ADDR + 0x29200))

#define GFX_IMG_dr_hotti ((u8*)(GFX_BASE_ADDR + 0x2965c))

#define GFX_IMG_generic_photo_2 ((u8*)(GFX_BASE_ADDR + 0x29aa4))

#define GFX_IMG_generic_photo_3 ((u8*)(GFX_BASE_ADDR + 0x29eec))

#define GFX_IMG_generic_autopsy_report_1 ((u8*)(GFX_BASE_ADDR + 0x2a350))

#define GFX_IMG_generic_autopsy_report_2 ((u8*)(GFX_BASE_ADDR + 0x2a7f4))

#define GFX_IMG_newspaper_article ((u8*)(GFX_BASE_ADDR + 0x2acc8))

#define GFX_IMG_generic_newspaper_clipping_0 ((u8*)(GFX_BASE_ADDR + 0x2b100))

#define GFX_IMG_generic_newspaper_clipping_1 ((u8*)(GFX_BASE_ADDR + 0x2b5cc))

#define GFX_IMG_magatama_discharged ((u8*)(GFX_BASE_ADDR + 0x2b9f0))

#define GFX_IMG_magatama_charged ((u8*)(GFX_BASE_ADDR + 0x2bde0))

#define GFX_IMG_meeting_room_screen ((u8*)(GFX_BASE_ADDR + 0x2c1c0))

#define GFX_IMG_meeting_room_key ((u8*)(GFX_BASE_ADDR + 0x2c590))

#define GFX_IMG_greys_gun ((u8*)(GFX_BASE_ADDR + 0x2c9a0))

#define GFX_IMG_mayas_knife ((u8*)(GFX_BASE_ADDR + 0x2ce18))

#define GFX_IMG_mayas_robe_0 ((u8*)(GFX_BASE_ADDR + 0x2d230))

#define GFX_IMG_mayas_robe_1 ((u8*)(GFX_BASE_ADDR + 0x2d668))

#define GFX_IMG_001828C8_0 ((u8*)(GFX_BASE_ADDR + 0x2da90))

#define GFX_IMG_001828C8_1 ((u8*)(GFX_BASE_ADDR + 0x2deb4))

#define GFX_IMG_001828C8_2 ((u8*)(GFX_BASE_ADDR + 0x2e2e4))

#define GFX_IMG_kurain_sacred_urn_0 ((u8*)(GFX_BASE_ADDR + 0x2e73c))

#define GFX_IMG_kurain_sacred_urn_1 ((u8*)(GFX_BASE_ADDR + 0x2eb38))

#define GFX_IMG_swatch_from_mayas_robe ((u8*)(GFX_BASE_ADDR + 0x2efc0))

#define GFX_IMG_pearls_ball ((u8*)(GFX_BASE_ADDR + 0x2f3cc))

#define GFX_IMG_large_box ((u8*)(GFX_BASE_ADDR + 0x2f7c8))

#define GFX_IMG_ini_miney_2 ((u8*)(GFX_BASE_ADDR + 0x2fbc4))

#define GFX_IMG_note_from_the_safe_0 ((u8*)(GFX_BASE_ADDR + 0x3000c))

#define GFX_IMG_maya_fey_3 ((u8*)(GFX_BASE_ADDR + 0x30318))

#define GFX_IMG_maximillion_galactica ((u8*)(GFX_BASE_ADDR + 0x30758))

#define GFX_IMG_franziska_von_karma_1 ((u8*)(GFX_BASE_ADDR + 0x30b6c))

#define GFX_IMG_russell_berry ((u8*)(GFX_BASE_ADDR + 0x30f68))

#define GFX_IMG_regina_berry ((u8*)(GFX_BASE_ADDR + 0x31378))

#define GFX_IMG_ben_0 ((u8*)(GFX_BASE_ADDR + 0x31764))

#define GFX_IMG_ben_1 ((u8*)(GFX_BASE_ADDR + 0x31b40))

#define GFX_IMG_moe ((u8*)(GFX_BASE_ADDR + 0x31ef8))

#define GFX_IMG_acro_0 ((u8*)(GFX_BASE_ADDR + 0x322c4))

#define GFX_IMG_acro_1 ((u8*)(GFX_BASE_ADDR + 0x3264c))

#define GFX_IMG_bat ((u8*)(GFX_BASE_ADDR + 0x32a54))

#define GFX_IMG_generic_photo_4 ((u8*)(GFX_BASE_ADDR + 0x32e54))

#define GFX_IMG_max_silk_hat ((u8*)(GFX_BASE_ADDR + 0x33274))

#define GFX_IMG_generic_photo_5 ((u8*)(GFX_BASE_ADDR + 0x3365c))

#define GFX_IMG_generic_letter_2 ((u8*)(GFX_BASE_ADDR + 0x33a80))

#define GFX_IMG_max_poster ((u8*)(GFX_BASE_ADDR + 0x33eb8))

#define GFX_IMG_broken_bottle ((u8*)(GFX_BASE_ADDR + 0x342bc))

#define GFX_IMG_trilo ((u8*)(GFX_BASE_ADDR + 0x34670))

#define GFX_IMG_money ((u8*)(GFX_BASE_ADDR + 0x34a14))

#define GFX_IMG_generic_autopsy_report_3 ((u8*)(GFX_BASE_ADDR + 0x34dd4))

#define GFX_IMG_large_chest ((u8*)(GFX_BASE_ADDR + 0x35280))

#define GFX_IMG_pepper ((u8*)(GFX_BASE_ADDR + 0x35670))

#define GFX_IMG_engagement_ring ((u8*)(GFX_BASE_ADDR + 0x35aa0))

#define GFX_IMG_generic_photo_6 ((u8*)(GFX_BASE_ADDR + 0x35ea4))

#define GFX_IMG_generic_photo_7 ((u8*)(GFX_BASE_ADDR + 0x362c0))

#define GFX_IMG_threatening_note_torn ((u8*)(GFX_BASE_ADDR + 0x3670c))

#define GFX_IMG_threatening_note_full_0 ((u8*)(GFX_BASE_ADDR + 0x36b4c))

#define GFX_IMG_threatening_note_full_1 ((u8*)(GFX_BASE_ADDR + 0x36f74))

#define GFX_IMG_threatening_note_full_2 ((u8*)(GFX_BASE_ADDR + 0x37370))

#define GFX_IMG_leon ((u8*)(GFX_BASE_ADDR + 0x3777c))

#define GFX_IMG_reginas_west ((u8*)(GFX_BASE_ADDR + 0x37b98))

#define GFX_IMG_bloody_scarf ((u8*)(GFX_BASE_ADDR + 0x37f64))

#define GFX_IMG_regent ((u8*)(GFX_BASE_ADDR + 0x38378))

#define GFX_IMG_threatening_note_full_3 ((u8*)(GFX_BASE_ADDR + 0x38650))

#define GFX_IMG_milk ((u8*)(GFX_BASE_ADDR + 0x38994))

#define GFX_IMG_playing_card ((u8*)(GFX_BASE_ADDR + 0x38c6c))

#define GFX_IMG_playing_cards ((u8*)(GFX_BASE_ADDR + 0x38f38))

#define GFX_IMG_moes_grapes ((u8*)(GFX_BASE_ADDR + 0x39228))

#define GFX_IMG_will_powers ((u8*)(GFX_BASE_ADDR + 0x39504))

#define GFX_IMG_wendy_oldbag ((u8*)(GFX_BASE_ADDR + 0x398e4))

#define GFX_IMG_lotta_hart_1 ((u8*)(GFX_BASE_ADDR + 0x39cc8))

#define GFX_IMG_juan_corrida ((u8*)(GFX_BASE_ADDR + 0x3a0c0))

#define GFX_IMG_matt_engarde_0 ((u8*)(GFX_BASE_ADDR + 0x3a528))

#define GFX_IMG_matt_engarde_1 ((u8*)(GFX_BASE_ADDR + 0x3a92c))

#define GFX_IMG_adrian_andrews ((u8*)(GFX_BASE_ADDR + 0x3ad64))

#define GFX_IMG_celeste_inpax_0 ((u8*)(GFX_BASE_ADDR + 0x3b188))

#define GFX_IMG_celeste_inpax_1 ((u8*)(GFX_BASE_ADDR + 0x3b5e4))

#define GFX_IMG_disguised_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0x3ba60))

#define GFX_IMG_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0x3bec8))

#define GFX_IMG_miles_edgeworth ((u8*)(GFX_BASE_ADDR + 0x3c304))

#define GFX_IMG_admission_ticket ((u8*)(GFX_BASE_ADDR + 0x3c748))

#define GFX_IMG_transceiver_0 ((u8*)(GFX_BASE_ADDR + 0x3cb90))

#define GFX_IMG_transceiver_1 ((u8*)(GFX_BASE_ADDR + 0x3cf80))

#define GFX_IMG_lottas_camera_case_0 ((u8*)(GFX_BASE_ADDR + 0x3d35c))

#define GFX_IMG_lottas_camera_case_1 ((u8*)(GFX_BASE_ADDR + 0x3d774))

#define GFX_IMG_generic_photo_8 ((u8*)(GFX_BASE_ADDR + 0x3db84))

#define GFX_IMG_guitar_case_0 ((u8*)(GFX_BASE_ADDR + 0x3dfc4))

#define GFX_IMG_guitar_case_1 ((u8*)(GFX_BASE_ADDR + 0x3e3e8))

#define GFX_IMG_tomato_juice_0 ((u8*)(GFX_BASE_ADDR + 0x3e810))

#define GFX_IMG_bloody_button ((u8*)(GFX_BASE_ADDR + 0x3ec1c))

#define GFX_IMG_generic_photo_9 ((u8*)(GFX_BASE_ADDR + 0x3f0a4))

#define GFX_IMG_generic_envelope_0 ((u8*)(GFX_BASE_ADDR + 0x3f4fc))

#define GFX_IMG_generic_envelope_1 ((u8*)(GFX_BASE_ADDR + 0x3f998))

#define GFX_IMG_juans_autograph ((u8*)(GFX_BASE_ADDR + 0x3fe30))

#define GFX_IMG_gossip_column ((u8*)(GFX_BASE_ADDR + 0x40210))

#define GFX_IMG_generic_autopsy_report_4 ((u8*)(GFX_BASE_ADDR + 0x40678))

#define GFX_IMG_bloody_knife ((u8*)(GFX_BASE_ADDR + 0x40b20))

#define GFX_IMG_generic_photo_10 ((u8*)(GFX_BASE_ADDR + 0x40f70))

#define GFX_IMG_shellys_calling_card ((u8*)(GFX_BASE_ADDR + 0x413b4))

#define GFX_IMG_note_from_the_safe_1 ((u8*)(GFX_BASE_ADDR + 0x417bc))

#define GFX_IMG_video_camera ((u8*)(GFX_BASE_ADDR + 0x41bc4))

#define GFX_IMG_video_transmitter ((u8*)(GFX_BASE_ADDR + 0x42060))

#define GFX_IMG_imported_bear ((u8*)(GFX_BASE_ADDR + 0x42478))

#define GFX_IMG_receipt ((u8*)(GFX_BASE_ADDR + 0x4288c))

#define GFX_IMG_bear_puzzle_0 ((u8*)(GFX_BASE_ADDR + 0x42d00))

#define GFX_IMG_bear_puzzle_1 ((u8*)(GFX_BASE_ADDR + 0x4311c))

#define GFX_IMG_photo_of_celeste ((u8*)(GFX_BASE_ADDR + 0x43544))

#define GFX_IMG_note_from_the_safe_2 ((u8*)(GFX_BASE_ADDR + 0x4399c))

#define GFX_IMG_note_from_the_safe_3 ((u8*)(GFX_BASE_ADDR + 0x43de8))

#define GFX_IMG_generic_affidavit_0 ((u8*)(GFX_BASE_ADDR + 0x440c8))

#define GFX_IMG_generic_affidavit_1 ((u8*)(GFX_BASE_ADDR + 0x443a0))

#define GFX_IMG_bear_clock ((u8*)(GFX_BASE_ADDR + 0x447cc))

#define GFX_IMG_frequency_detector ((u8*)(GFX_BASE_ADDR + 0x44aa8))

#define GFX_IMG_shoe ((u8*)(GFX_BASE_ADDR + 0x44d74))

#define GFX_IMG_bellboy_uniform_0 ((u8*)(GFX_BASE_ADDR + 0x45034))

#define GFX_IMG_bellboy_uniform_1 ((u8*)(GFX_BASE_ADDR + 0x45484))

#define GFX_IMG_generic_video_0 ((u8*)(GFX_BASE_ADDR + 0x458cc))

#define GFX_IMG_generic_video_1 ((u8*)(GFX_BASE_ADDR + 0x45cd4))

#define GFX_IMG_shelly_pistol_0 ((u8*)(GFX_BASE_ADDR + 0x460f0))

#define GFX_IMG_shelly_pistol_1 ((u8*)(GFX_BASE_ADDR + 0x4651c))

#define GFX_IMG_franziskas_whip ((u8*)(GFX_BASE_ADDR + 0x46920))

#define GFX_IMG_tracking_device ((u8*)(GFX_BASE_ADDR + 0x46cf0))

#define GFX_IMG_gumshoes_coat ((u8*)(GFX_BASE_ADDR + 0x4701c))

#define GFX_IMG_gatewater_hotel_button ((u8*)(GFX_BASE_ADDR + 0x472d4))

#define GFX_IMG_generic_photo_11 ((u8*)(GFX_BASE_ADDR + 0x475fc))

#define GFX_IMG_tomato_juice_1 ((u8*)(GFX_BASE_ADDR + 0x479e4))

#define GFX_PALETTE_generic_autopsy_report ((u8*)(GFX_BASE_ADDR + 0x47e28))

#define GFX_IMG_generic_autopsy_report ((u8*)(GFX_BASE_ADDR + 0x47e48))

#define GFX_PALETTE_generic_photo ((u8*)(GFX_BASE_ADDR + 0x48648))

#define GFX_IMG_generic_photo ((u8*)(GFX_BASE_ADDR + 0x48668))

#define GFX_PALETTE_broken_glasses ((u8*)(GFX_BASE_ADDR + 0x48e68))

#define GFX_IMG_broken_glasses ((u8*)(GFX_BASE_ADDR + 0x48e88))

#define GFX_PALETTE_dustins_baseball_glove ((u8*)(GFX_BASE_ADDR + 0x49688))

#define GFX_IMG_dustins_baseball_glove ((u8*)(GFX_BASE_ADDR + 0x496a8))

#define GFX_PALETTE_generic_letter ((u8*)(GFX_BASE_ADDR + 0x49ea8))

#define GFX_IMG_generic_letter ((u8*)(GFX_BASE_ADDR + 0x49ec8))

#define GFX_PALETTE_phoenix_cellphone ((u8*)(GFX_BASE_ADDR + 0x4a6c8))

#define GFX_IMG_phoenix_cellphone ((u8*)(GFX_BASE_ADDR + 0x4a6e8))

#define GFX_PALETTE_mayas_cellphone ((u8*)(GFX_BASE_ADDR + 0x4aee8))

#define GFX_IMG_mayas_cellphone ((u8*)(GFX_BASE_ADDR + 0x4af08))

#define GFX_PALETTE_maya_fey ((u8*)(GFX_BASE_ADDR + 0x4b708))

#define GFX_IMG_maya_fey ((u8*)(GFX_BASE_ADDR + 0x4b728))

#define GFX_PALETTE_maggey_byrde ((u8*)(GFX_BASE_ADDR + 0x4bf28))

#define GFX_IMG_maggey_byrde ((u8*)(GFX_BASE_ADDR + 0x4bf48))

#define GFX_PALETTE_richard_wellington ((u8*)(GFX_BASE_ADDR + 0x4c748))

#define GFX_IMG_richard_wellington ((u8*)(GFX_BASE_ADDR + 0x4c768))

#define GFX_PALETTE_winston_payne ((u8*)(GFX_BASE_ADDR + 0x4cf68))

#define GFX_IMG_winston_payne ((u8*)(GFX_BASE_ADDR + 0x4cf88))

#define GFX_PALETTE_dick_gumshoe ((u8*)(GFX_BASE_ADDR + 0x4d788))

#define GFX_IMG_dick_gumshoe ((u8*)(GFX_BASE_ADDR + 0x4d7a8))

#define GFX_PALETTE_dustin_prince ((u8*)(GFX_BASE_ADDR + 0x4dfa8))

#define GFX_IMG_dustin_prince ((u8*)(GFX_BASE_ADDR + 0x4dfc8))

#define GFX_PALETTE_phoenix_business_card ((u8*)(GFX_BASE_ADDR + 0x4e7c8))

#define GFX_IMG_phoenix_business_card ((u8*)(GFX_BASE_ADDR + 0x4e7e8))

#define GFX_PALETTE_generic_newspaper_clipping ((u8*)(GFX_BASE_ADDR + 0x4efe8))

#define GFX_IMG_generic_newspaper_clipping ((u8*)(GFX_BASE_ADDR + 0x4f008))

#define GFX_PALETTE_meeting_room_screen ((u8*)(GFX_BASE_ADDR + 0x4f808))

#define GFX_IMG_meeting_room_screen ((u8*)(GFX_BASE_ADDR + 0x4f828))

#define GFX_PALETTE_meeting_room_key ((u8*)(GFX_BASE_ADDR + 0x50028))

#define GFX_IMG_meeting_room_key ((u8*)(GFX_BASE_ADDR + 0x50048))

#define GFX_PALETTE_dummy_00180848 ((u8*)(GFX_BASE_ADDR + 0x50848))

#define GFX_IMG_dummy_00180848 ((u8*)(GFX_BASE_ADDR + 0x50868))

#define GFX_PALETTE_greys_gun ((u8*)(GFX_BASE_ADDR + 0x51068))

#define GFX_IMG_greys_gun ((u8*)(GFX_BASE_ADDR + 0x51088))

#define GFX_PALETTE_mayas_knife ((u8*)(GFX_BASE_ADDR + 0x51888))

#define GFX_IMG_mayas_knife ((u8*)(GFX_BASE_ADDR + 0x518a8))

#define GFX_PALETTE_mayas_robe ((u8*)(GFX_BASE_ADDR + 0x520a8))

#define GFX_IMG_mayas_robe ((u8*)(GFX_BASE_ADDR + 0x520c8))

#define GFX_PALETTE_001828C8 ((u8*)(GFX_BASE_ADDR + 0x528c8))

#define GFX_IMG_001828C8 ((u8*)(GFX_BASE_ADDR + 0x528e8))

#define GFX_PALETTE_kurain_sacred_urn ((u8*)(GFX_BASE_ADDR + 0x530e8))

#define GFX_IMG_kurain_sacred_urn ((u8*)(GFX_BASE_ADDR + 0x53108))

#define GFX_PALETTE_swatch_from_mayas_robe ((u8*)(GFX_BASE_ADDR + 0x53908))

#define GFX_IMG_swatch_from_mayas_robe ((u8*)(GFX_BASE_ADDR + 0x53928))

#define GFX_PALETTE_pearls_ball ((u8*)(GFX_BASE_ADDR + 0x54128))

#define GFX_IMG_pearls_ball ((u8*)(GFX_BASE_ADDR + 0x54148))

#define GFX_PALETTE_large_box ((u8*)(GFX_BASE_ADDR + 0x54948))

#define GFX_IMG_large_box ((u8*)(GFX_BASE_ADDR + 0x54968))

#define GFX_PALETTE_dummy_00185168 ((u8*)(GFX_BASE_ADDR + 0x55168))

#define GFX_IMG_dummy_00185168 ((u8*)(GFX_BASE_ADDR + 0x55188))

#define GFX_PALETTE_magatama_discharged ((u8*)(GFX_BASE_ADDR + 0x55988))

#define GFX_IMG_magatama_discharged ((u8*)(GFX_BASE_ADDR + 0x559a8))

#define GFX_PALETTE_magatama_charged ((u8*)(GFX_BASE_ADDR + 0x561a8))

#define GFX_IMG_magatama_charged ((u8*)(GFX_BASE_ADDR + 0x561c8))

#define GFX_PALETTE_newspaper_article ((u8*)(GFX_BASE_ADDR + 0x569c8))

#define GFX_IMG_newspaper_article ((u8*)(GFX_BASE_ADDR + 0x569e8))

#define GFX_PALETTE_turner_grey ((u8*)(GFX_BASE_ADDR + 0x571e8))

#define GFX_IMG_turner_grey ((u8*)(GFX_BASE_ADDR + 0x57208))

#define GFX_PALETTE_pearl_fey ((u8*)(GFX_BASE_ADDR + 0x57a08))

#define GFX_IMG_pearl_fey ((u8*)(GFX_BASE_ADDR + 0x57a28))

#define GFX_PALETTE_lotta_hart ((u8*)(GFX_BASE_ADDR + 0x58228))

#define GFX_IMG_lotta_hart ((u8*)(GFX_BASE_ADDR + 0x58248))

#define GFX_PALETTE_morgan_fey ((u8*)(GFX_BASE_ADDR + 0x58a48))

#define GFX_IMG_morgan_fey ((u8*)(GFX_BASE_ADDR + 0x58a68))

#define GFX_PALETTE_mimi_miney ((u8*)(GFX_BASE_ADDR + 0x59268))

#define GFX_IMG_mimi_miney ((u8*)(GFX_BASE_ADDR + 0x59288))

#define GFX_PALETTE_ini_miney ((u8*)(GFX_BASE_ADDR + 0x59a88))

#define GFX_IMG_ini_miney ((u8*)(GFX_BASE_ADDR + 0x59aa8))

#define GFX_PALETTE_manfred_von_karma ((u8*)(GFX_BASE_ADDR + 0x5a2a8))

#define GFX_IMG_manfred_von_karma ((u8*)(GFX_BASE_ADDR + 0x5a2c8))

#define GFX_PALETTE_mia_fey ((u8*)(GFX_BASE_ADDR + 0x5aac8))

#define GFX_IMG_mia_fey ((u8*)(GFX_BASE_ADDR + 0x5aae8))

#define GFX_PALETTE_note_from_the_safe ((u8*)(GFX_BASE_ADDR + 0x5b2e8))

#define GFX_IMG_note_from_the_safe ((u8*)(GFX_BASE_ADDR + 0x5b308))

#define GFX_PALETTE_dr_hotti ((u8*)(GFX_BASE_ADDR + 0x5bb08))

#define GFX_IMG_dr_hotti ((u8*)(GFX_BASE_ADDR + 0x5bb28))

#define GFX_PALETTE_franziska_von_karma ((u8*)(GFX_BASE_ADDR + 0x5c328))

#define GFX_IMG_franziska_von_karma ((u8*)(GFX_BASE_ADDR + 0x5c348))

#define GFX_PALETTE_ami_fey ((u8*)(GFX_BASE_ADDR + 0x5cb48))

#define GFX_IMG_ami_fey ((u8*)(GFX_BASE_ADDR + 0x5cb68))

#define GFX_PALETTE_max_silk_hat ((u8*)(GFX_BASE_ADDR + 0x5d368))

#define GFX_IMG_max_silk_hat ((u8*)(GFX_BASE_ADDR + 0x5d388))

#define GFX_PALETTE_max_poster ((u8*)(GFX_BASE_ADDR + 0x5db88))

#define GFX_IMG_max_poster ((u8*)(GFX_BASE_ADDR + 0x5dba8))

#define GFX_PALETTE_broken_bottle ((u8*)(GFX_BASE_ADDR + 0x5e3a8))

#define GFX_IMG_broken_bottle ((u8*)(GFX_BASE_ADDR + 0x5e3c8))

#define GFX_PALETTE_trilo ((u8*)(GFX_BASE_ADDR + 0x5ebc8))

#define GFX_IMG_trilo ((u8*)(GFX_BASE_ADDR + 0x5ebe8))

#define GFX_PALETTE_money ((u8*)(GFX_BASE_ADDR + 0x5f3e8))

#define GFX_IMG_money ((u8*)(GFX_BASE_ADDR + 0x5f408))

#define GFX_PALETTE_engagement_ring ((u8*)(GFX_BASE_ADDR + 0x5fc08))

#define GFX_IMG_engagement_ring ((u8*)(GFX_BASE_ADDR + 0x5fc28))

#define GFX_PALETTE_large_chest ((u8*)(GFX_BASE_ADDR + 0x60428))

#define GFX_IMG_large_chest ((u8*)(GFX_BASE_ADDR + 0x60448))

#define GFX_PALETTE_pepper ((u8*)(GFX_BASE_ADDR + 0x60c48))

#define GFX_IMG_pepper ((u8*)(GFX_BASE_ADDR + 0x60c68))

#define GFX_PALETTE_dummy_00191468 ((u8*)(GFX_BASE_ADDR + 0x61468))

#define GFX_IMG_dummy_00191468 ((u8*)(GFX_BASE_ADDR + 0x61488))

#define GFX_PALETTE_threatening_note_torn ((u8*)(GFX_BASE_ADDR + 0x61c88))

#define GFX_IMG_threatening_note_torn ((u8*)(GFX_BASE_ADDR + 0x61ca8))

#define GFX_PALETTE_threatening_note_full ((u8*)(GFX_BASE_ADDR + 0x624a8))

#define GFX_IMG_threatening_note_full ((u8*)(GFX_BASE_ADDR + 0x624c8))

#define GFX_PALETTE_reginas_west ((u8*)(GFX_BASE_ADDR + 0x62cc8))

#define GFX_IMG_reginas_west ((u8*)(GFX_BASE_ADDR + 0x62ce8))

#define GFX_PALETTE_leon ((u8*)(GFX_BASE_ADDR + 0x634e8))

#define GFX_IMG_leon ((u8*)(GFX_BASE_ADDR + 0x63508))

#define GFX_PALETTE_bloody_scarf ((u8*)(GFX_BASE_ADDR + 0x63d08))

#define GFX_IMG_bloody_scarf ((u8*)(GFX_BASE_ADDR + 0x63d28))

#define GFX_PALETTE_playing_cards ((u8*)(GFX_BASE_ADDR + 0x64528))

#define GFX_IMG_playing_cards ((u8*)(GFX_BASE_ADDR + 0x64548))

#define GFX_PALETTE_playing_card ((u8*)(GFX_BASE_ADDR + 0x64d48))

#define GFX_IMG_playing_card ((u8*)(GFX_BASE_ADDR + 0x64d68))

#define GFX_PALETTE_regent ((u8*)(GFX_BASE_ADDR + 0x65568))

#define GFX_IMG_regent ((u8*)(GFX_BASE_ADDR + 0x65588))

#define GFX_PALETTE_milk ((u8*)(GFX_BASE_ADDR + 0x65d88))

#define GFX_IMG_milk ((u8*)(GFX_BASE_ADDR + 0x65da8))

#define GFX_PALETTE_moes_grapes ((u8*)(GFX_BASE_ADDR + 0x665a8))

#define GFX_IMG_moes_grapes ((u8*)(GFX_BASE_ADDR + 0x665c8))

#define GFX_PALETTE_maximillion_galactica ((u8*)(GFX_BASE_ADDR + 0x66dc8))

#define GFX_IMG_maximillion_galactica ((u8*)(GFX_BASE_ADDR + 0x66de8))

#define GFX_PALETTE_regina_berry ((u8*)(GFX_BASE_ADDR + 0x675e8))

#define GFX_IMG_regina_berry ((u8*)(GFX_BASE_ADDR + 0x67608))

#define GFX_PALETTE_phoenix_badge ((u8*)(GFX_BASE_ADDR + 0x67e08))

#define GFX_IMG_phoenix_badge ((u8*)(GFX_BASE_ADDR + 0x67e28))

#define GFX_PALETTE_ben ((u8*)(GFX_BASE_ADDR + 0x68628))

#define GFX_IMG_ben ((u8*)(GFX_BASE_ADDR + 0x68648))

#define GFX_PALETTE_moe ((u8*)(GFX_BASE_ADDR + 0x68e48))

#define GFX_IMG_moe ((u8*)(GFX_BASE_ADDR + 0x68e68))

#define GFX_PALETTE_acro ((u8*)(GFX_BASE_ADDR + 0x69668))

#define GFX_IMG_acro ((u8*)(GFX_BASE_ADDR + 0x69688))

#define GFX_PALETTE_russell_berry ((u8*)(GFX_BASE_ADDR + 0x69e88))

#define GFX_IMG_russell_berry ((u8*)(GFX_BASE_ADDR + 0x69ea8))

#define GFX_PALETTE_bat ((u8*)(GFX_BASE_ADDR + 0x6a6a8))

#define GFX_IMG_bat ((u8*)(GFX_BASE_ADDR + 0x6a6c8))

#define GFX_PALETTE_will_powers ((u8*)(GFX_BASE_ADDR + 0x6aec8))

#define GFX_IMG_will_powers ((u8*)(GFX_BASE_ADDR + 0x6aee8))

#define GFX_PALETTE_wendy_oldbag ((u8*)(GFX_BASE_ADDR + 0x6b6e8))

#define GFX_IMG_wendy_oldbag ((u8*)(GFX_BASE_ADDR + 0x6b708))

#define GFX_PALETTE_juan_corrida ((u8*)(GFX_BASE_ADDR + 0x6bf08))

#define GFX_IMG_juan_corrida ((u8*)(GFX_BASE_ADDR + 0x6bf28))

#define GFX_PALETTE_matt_engarde ((u8*)(GFX_BASE_ADDR + 0x6c728))

#define GFX_IMG_matt_engarde ((u8*)(GFX_BASE_ADDR + 0x6c748))

#define GFX_PALETTE_adrian_andrews ((u8*)(GFX_BASE_ADDR + 0x6cf48))

#define GFX_IMG_adrian_andrews ((u8*)(GFX_BASE_ADDR + 0x6cf68))

#define GFX_PALETTE_celeste_inpax ((u8*)(GFX_BASE_ADDR + 0x6d768))

#define GFX_IMG_celeste_inpax ((u8*)(GFX_BASE_ADDR + 0x6d788))

#define GFX_PALETTE_disguised_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0x6df88))

#define GFX_IMG_disguised_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0x6dfa8))

#define GFX_PALETTE_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0x6e7a8))

#define GFX_IMG_shelly_de_killer ((u8*)(GFX_BASE_ADDR + 0x6e7c8))

#define GFX_PALETTE_miles_edgeworth ((u8*)(GFX_BASE_ADDR + 0x6efc8))

#define GFX_IMG_miles_edgeworth ((u8*)(GFX_BASE_ADDR + 0x6efe8))

#define GFX_PALETTE_admission_ticket ((u8*)(GFX_BASE_ADDR + 0x6f7e8))

#define GFX_IMG_admission_ticket ((u8*)(GFX_BASE_ADDR + 0x6f808))

#define GFX_PALETTE_transceiver ((u8*)(GFX_BASE_ADDR + 0x70008))

#define GFX_IMG_transceiver ((u8*)(GFX_BASE_ADDR + 0x70028))

#define GFX_PALETTE_guitar_case ((u8*)(GFX_BASE_ADDR + 0x70828))

#define GFX_IMG_guitar_case ((u8*)(GFX_BASE_ADDR + 0x70848))

#define GFX_PALETTE_tomato_juice ((u8*)(GFX_BASE_ADDR + 0x71048))

#define GFX_IMG_tomato_juice ((u8*)(GFX_BASE_ADDR + 0x71068))

#define GFX_PALETTE_juans_autograph ((u8*)(GFX_BASE_ADDR + 0x71868))

#define GFX_IMG_juans_autograph ((u8*)(GFX_BASE_ADDR + 0x71888))

#define GFX_PALETTE_gossip_column ((u8*)(GFX_BASE_ADDR + 0x72088))

#define GFX_IMG_gossip_column ((u8*)(GFX_BASE_ADDR + 0x720a8))

#define GFX_PALETTE_generic_envelope ((u8*)(GFX_BASE_ADDR + 0x728a8))

#define GFX_IMG_generic_envelope ((u8*)(GFX_BASE_ADDR + 0x728c8))

#define GFX_PALETTE_shellys_calling_card ((u8*)(GFX_BASE_ADDR + 0x730c8))

#define GFX_IMG_shellys_calling_card ((u8*)(GFX_BASE_ADDR + 0x730e8))

#define GFX_PALETTE_video_camera ((u8*)(GFX_BASE_ADDR + 0x738e8))

#define GFX_IMG_video_camera ((u8*)(GFX_BASE_ADDR + 0x73908))

#define GFX_PALETTE_imported_bear ((u8*)(GFX_BASE_ADDR + 0x74108))

#define GFX_IMG_imported_bear ((u8*)(GFX_BASE_ADDR + 0x74128))

#define GFX_PALETTE_receipt ((u8*)(GFX_BASE_ADDR + 0x74928))

#define GFX_IMG_receipt ((u8*)(GFX_BASE_ADDR + 0x74948))

#define GFX_PALETTE_bear_puzzle ((u8*)(GFX_BASE_ADDR + 0x75148))

#define GFX_IMG_bear_puzzle ((u8*)(GFX_BASE_ADDR + 0x75168))

#define GFX_PALETTE_photo_of_celeste ((u8*)(GFX_BASE_ADDR + 0x75968))

#define GFX_IMG_photo_of_celeste ((u8*)(GFX_BASE_ADDR + 0x75988))

#define GFX_PALETTE_001A6188 ((u8*)(GFX_BASE_ADDR + 0x76188))

#define GFX_IMG_001A6188 ((u8*)(GFX_BASE_ADDR + 0x761a8))

#define GFX_PALETTE_video_transmitter ((u8*)(GFX_BASE_ADDR + 0x769a8))

#define GFX_IMG_video_transmitter ((u8*)(GFX_BASE_ADDR + 0x769c8))

#define GFX_PALETTE_shoe ((u8*)(GFX_BASE_ADDR + 0x771c8))

#define GFX_IMG_shoe ((u8*)(GFX_BASE_ADDR + 0x771e8))

#define GFX_PALETTE_lottas_camera_case ((u8*)(GFX_BASE_ADDR + 0x779e8))

#define GFX_IMG_lottas_camera_case ((u8*)(GFX_BASE_ADDR + 0x77a08))

#define GFX_PALETTE_frequency_detector ((u8*)(GFX_BASE_ADDR + 0x78208))

#define GFX_IMG_frequency_detector ((u8*)(GFX_BASE_ADDR + 0x78228))

#define GFX_PALETTE_tracking_device ((u8*)(GFX_BASE_ADDR + 0x78a28))

#define GFX_IMG_tracking_device ((u8*)(GFX_BASE_ADDR + 0x78a48))

#define GFX_PALETTE_gumshoes_coat ((u8*)(GFX_BASE_ADDR + 0x79248))

#define GFX_IMG_gumshoes_coat ((u8*)(GFX_BASE_ADDR + 0x79268))

#define GFX_PALETTE_bellboy_uniform ((u8*)(GFX_BASE_ADDR + 0x79a68))

#define GFX_IMG_bellboy_uniform ((u8*)(GFX_BASE_ADDR + 0x79a88))

#define GFX_PALETTE_gatewater_hotel_button ((u8*)(GFX_BASE_ADDR + 0x7a288))

#define GFX_IMG_gatewater_hotel_button ((u8*)(GFX_BASE_ADDR + 0x7a2a8))

#define GFX_PALETTE_generic_video ((u8*)(GFX_BASE_ADDR + 0x7aaa8))

#define GFX_IMG_generic_video ((u8*)(GFX_BASE_ADDR + 0x7aac8))

#define GFX_PALETTE_shelly_pistol ((u8*)(GFX_BASE_ADDR + 0x7b2c8))

#define GFX_IMG_shelly_pistol ((u8*)(GFX_BASE_ADDR + 0x7b2e8))

#define GFX_PALETTE_franziskas_whip ((u8*)(GFX_BASE_ADDR + 0x7bae8))

#define GFX_IMG_franziskas_whip ((u8*)(GFX_BASE_ADDR + 0x7bb08))

#define GFX_PALETTE_bloody_button ((u8*)(GFX_BASE_ADDR + 0x7c308))

#define GFX_IMG_bloody_button ((u8*)(GFX_BASE_ADDR + 0x7c328))

#define GFX_PALETTE_generic_affidavit ((u8*)(GFX_BASE_ADDR + 0x7cb28))

#define GFX_IMG_generic_affidavit ((u8*)(GFX_BASE_ADDR + 0x7cb48))

#define GFX_PALETTE_bloody_knife ((u8*)(GFX_BASE_ADDR + 0x7d348))

#define GFX_IMG_bloody_knife ((u8*)(GFX_BASE_ADDR + 0x7d368))

#define GFX_PALETTE_bear_clock ((u8*)(GFX_BASE_ADDR + 0x7db68))

#define GFX_IMG_bear_clock ((u8*)(GFX_BASE_ADDR + 0x7db88))

#define GFX_PALETTE_charset ((u8*)(GFX_BASE_ADDR + 0x7e388))

#define GFX_IMG_charset ((u8*)(GFX_BASE_ADDR + 0x7e3a8))

#define GFX_PALETTE_choice_selected ((u8*)(GFX_BASE_ADDR + 0xae3a8))

#define GFX_PALETTE_choice_greyed_out ((u8*)(GFX_BASE_ADDR + 0xae3c8))

#define GFX_IMG_001DE3E8 ((u8*)(GFX_BASE_ADDR + 0xae3e8))

#define GFX_IMG_001DEBE8 ((u8*)(GFX_BASE_ADDR + 0xaebe8))

#define GFX_IMG_001DF3E8 ((u8*)(GFX_BASE_ADDR + 0xaf3e8))

#define GFX_IMG_001DFBE8 ((u8*)(GFX_BASE_ADDR + 0xafbe8))

#define GFX_IMG_001E03E8 ((u8*)(GFX_BASE_ADDR + 0xb03e8))

#define GFX_IMG_001E0BE8 ((u8*)(GFX_BASE_ADDR + 0xb0be8))

#define GFX_IMG_001E13E8 ((u8*)(GFX_BASE_ADDR + 0xb13e8))

#define GFX_IMG_001E1BE8 ((u8*)(GFX_BASE_ADDR + 0xb1be8))

#define GFX_IMG_001E23E8 ((u8*)(GFX_BASE_ADDR + 0xb23e8))

#define GFX_IMG_001E2BE8 ((u8*)(GFX_BASE_ADDR + 0xb2be8))

#define GFX_IMG_001E33E8 ((u8*)(GFX_BASE_ADDR + 0xb33e8))

#define GFX_IMG_001E3BE8 ((u8*)(GFX_BASE_ADDR + 0xb3be8))

#define GFX_IMG_001E43E8 ((u8*)(GFX_BASE_ADDR + 0xb43e8))

#define GFX_IMG_001E4BE8 ((u8*)(GFX_BASE_ADDR + 0xb4be8))

#define GFX_IMG_001E53E8 ((u8*)(GFX_BASE_ADDR + 0xb53e8))

#define GFX_IMG_001E5BE8 ((u8*)(GFX_BASE_ADDR + 0xb5be8))

#define GFX_IMG_001E63E8 ((u8*)(GFX_BASE_ADDR + 0xb63e8))

#define GFX_IMG_001E6BE8 ((u8*)(GFX_BASE_ADDR + 0xb6be8))

#define GFX_IMG_001E73E8 ((u8*)(GFX_BASE_ADDR + 0xb73e8))

#define GFX_IMG_001E7BE8 ((u8*)(GFX_BASE_ADDR + 0xb7be8))

#define GFX_IMG_001E83E8 ((u8*)(GFX_BASE_ADDR + 0xb83e8))

#define GFX_IMG_001E8BE8 ((u8*)(GFX_BASE_ADDR + 0xb8be8))

#define GFX_IMG_001E93E8 ((u8*)(GFX_BASE_ADDR + 0xb93e8))

#define GFX_IMG_001E9BE8 ((u8*)(GFX_BASE_ADDR + 0xb9be8))

#define GFX_IMG_001EA3E8 ((u8*)(GFX_BASE_ADDR + 0xba3e8))

#define GFX_IMG_001EABE8 ((u8*)(GFX_BASE_ADDR + 0xbabe8))

#define GFX_IMG_001EB3E8 ((u8*)(GFX_BASE_ADDR + 0xbb3e8))

#define GFX_IMG_001EBBE8 ((u8*)(GFX_BASE_ADDR + 0xbbbe8))

#define GFX_IMG_001EC3E8 ((u8*)(GFX_BASE_ADDR + 0xbc3e8))

#define GFX_IMG_001ECBE8 ((u8*)(GFX_BASE_ADDR + 0xbcbe8))

#define GFX_IMG_001ED3E8 ((u8*)(GFX_BASE_ADDR + 0xbd3e8))

#define GFX_IMG_001EDBE8 ((u8*)(GFX_BASE_ADDR + 0xbdbe8))

#define GFX_IMG_001EE3E8 ((u8*)(GFX_BASE_ADDR + 0xbe3e8))

#define GFX_IMG_001EEBE8 ((u8*)(GFX_BASE_ADDR + 0xbebe8))

#define GFX_IMG_001EF3E8 ((u8*)(GFX_BASE_ADDR + 0xbf3e8))

#define GFX_IMG_001EFBE8 ((u8*)(GFX_BASE_ADDR + 0xbfbe8))

#define GFX_IMG_001F03E8 ((u8*)(GFX_BASE_ADDR + 0xc03e8))

#define GFX_IMG_001F0BE8 ((u8*)(GFX_BASE_ADDR + 0xc0be8))

#define GFX_IMG_001F13E8 ((u8*)(GFX_BASE_ADDR + 0xc13e8))

#define GFX_IMG_001F1BE8 ((u8*)(GFX_BASE_ADDR + 0xc1be8))

#define GFX_IMG_001F23E8 ((u8*)(GFX_BASE_ADDR + 0xc23e8))

#define GFX_IMG_001F2BE8 ((u8*)(GFX_BASE_ADDR + 0xc2be8))

#define GFX_IMG_001F33E8 ((u8*)(GFX_BASE_ADDR + 0xc33e8))

#define GFX_IMG_001F3BE8 ((u8*)(GFX_BASE_ADDR + 0xc3be8))

#define GFX_IMG_001F43E8 ((u8*)(GFX_BASE_ADDR + 0xc43e8))

#define GFX_IMG_001F4BE8 ((u8*)(GFX_BASE_ADDR + 0xc4be8))

#define GFX_IMG_001F53E8 ((u8*)(GFX_BASE_ADDR + 0xc53e8))

#define GFX_IMG_001F5BE8 ((u8*)(GFX_BASE_ADDR + 0xc5be8))

#define GFX_IMG_001F63E8 ((u8*)(GFX_BASE_ADDR + 0xc63e8))

#define GFX_IMG_001F6BE8 ((u8*)(GFX_BASE_ADDR + 0xc6be8))

#define GFX_IMG_001F73E8 ((u8*)(GFX_BASE_ADDR + 0xc73e8))

#define GFX_IMG_001F7BE8 ((u8*)(GFX_BASE_ADDR + 0xc7be8))

#define GFX_IMG_001F83E8 ((u8*)(GFX_BASE_ADDR + 0xc83e8))

#define GFX_IMG_001F8BE8 ((u8*)(GFX_BASE_ADDR + 0xc8be8))

#define GFX_IMG_001F93E8 ((u8*)(GFX_BASE_ADDR + 0xc93e8))

#define GFX_IMG_001F9BE8 ((u8*)(GFX_BASE_ADDR + 0xc9be8))

#define GFX_IMG_001FA3E8 ((u8*)(GFX_BASE_ADDR + 0xca3e8))

#define GFX_IMG_001FABE8 ((u8*)(GFX_BASE_ADDR + 0xcabe8))

#define GFX_IMG_001FB3E8 ((u8*)(GFX_BASE_ADDR + 0xcb3e8))

#define GFX_IMG_001FBBE8 ((u8*)(GFX_BASE_ADDR + 0xcbbe8))

#define GFX_IMG_001FC3E8 ((u8*)(GFX_BASE_ADDR + 0xcc3e8))

#define GFX_IMG_001FCBE8 ((u8*)(GFX_BASE_ADDR + 0xccbe8))

#define GFX_IMG_001FD3E8 ((u8*)(GFX_BASE_ADDR + 0xcd3e8))

#define GFX_IMG_001FDBE8 ((u8*)(GFX_BASE_ADDR + 0xcdbe8))

#define GFX_IMG_001FE3E8 ((u8*)(GFX_BASE_ADDR + 0xce3e8))

#define GFX_IMG_001FEBE8 ((u8*)(GFX_BASE_ADDR + 0xcebe8))

#define GFX_IMG_001FF3E8 ((u8*)(GFX_BASE_ADDR + 0xcf3e8))

#define GFX_IMG_001FFBE8 ((u8*)(GFX_BASE_ADDR + 0xcfbe8))

#define GFX_IMG_002003E8 ((u8*)(GFX_BASE_ADDR + 0xd03e8))

#define GFX_IMG_00200BE8 ((u8*)(GFX_BASE_ADDR + 0xd0be8))

#define GFX_IMG_002013E8 ((u8*)(GFX_BASE_ADDR + 0xd13e8))

#define GFX_IMG_00201BE8 ((u8*)(GFX_BASE_ADDR + 0xd1be8))

#define GFX_IMG_002023E8 ((u8*)(GFX_BASE_ADDR + 0xd23e8))

#define GFX_IMG_00202BE8 ((u8*)(GFX_BASE_ADDR + 0xd2be8))

#define GFX_IMG_002033E8 ((u8*)(GFX_BASE_ADDR + 0xd33e8))

#define GFX_IMG_00203BE8 ((u8*)(GFX_BASE_ADDR + 0xd3be8))

#define GFX_IMG_002043E8 ((u8*)(GFX_BASE_ADDR + 0xd43e8))

#define GFX_IMG_00204BE8 ((u8*)(GFX_BASE_ADDR + 0xd4be8))

#define GFX_IMG_002053E8 ((u8*)(GFX_BASE_ADDR + 0xd53e8))

#define GFX_IMG_00205BE8 ((u8*)(GFX_BASE_ADDR + 0xd5be8))

#define GFX_IMG_002063E8 ((u8*)(GFX_BASE_ADDR + 0xd63e8))

#define GFX_IMG_00206BE8 ((u8*)(GFX_BASE_ADDR + 0xd6be8))

#define GFX_IMG_002073E8 ((u8*)(GFX_BASE_ADDR + 0xd73e8))

#define GFX_IMG_00207BE8 ((u8*)(GFX_BASE_ADDR + 0xd7be8))

#define GFX_IMG_002083E8 ((u8*)(GFX_BASE_ADDR + 0xd83e8))

#define GFX_IMG_00208BE8 ((u8*)(GFX_BASE_ADDR + 0xd8be8))

#define GFX_IMG_002093E8 ((u8*)(GFX_BASE_ADDR + 0xd93e8))

#define GFX_IMG_00209BE8 ((u8*)(GFX_BASE_ADDR + 0xd9be8))

#define GFX_IMG_0020A3E8 ((u8*)(GFX_BASE_ADDR + 0xda3e8))

#define GFX_IMG_0020ABE8 ((u8*)(GFX_BASE_ADDR + 0xdabe8))

#define GFX_IMG_0020B3E8 ((u8*)(GFX_BASE_ADDR + 0xdb3e8))

#define GFX_IMG_0020BBE8 ((u8*)(GFX_BASE_ADDR + 0xdbbe8))

#define GFX_IMG_0020C3E8 ((u8*)(GFX_BASE_ADDR + 0xdc3e8))

#define GFX_IMG_0020CBE8 ((u8*)(GFX_BASE_ADDR + 0xdcbe8))

#define GFX_IMG_0020D3E8 ((u8*)(GFX_BASE_ADDR + 0xdd3e8))

#define GFX_IMG_0020DBE8 ((u8*)(GFX_BASE_ADDR + 0xddbe8))

#define GFX_IMG_0020E3E8 ((u8*)(GFX_BASE_ADDR + 0xde3e8))

#define GFX_IMG_0020EBE8 ((u8*)(GFX_BASE_ADDR + 0xdebe8))

#define GFX_IMG_0020F3E8 ((u8*)(GFX_BASE_ADDR + 0xdf3e8))

#define GFX_IMG_0020FBE8 ((u8*)(GFX_BASE_ADDR + 0xdfbe8))

#define GFX_IMG_002103E8 ((u8*)(GFX_BASE_ADDR + 0xe03e8))

#define GFX_IMG_00210BE8 ((u8*)(GFX_BASE_ADDR + 0xe0be8))

#define GFX_IMG_002113E8 ((u8*)(GFX_BASE_ADDR + 0xe13e8))

#define GFX_IMG_00211BE8 ((u8*)(GFX_BASE_ADDR + 0xe1be8))

#define GFX_IMG_002123E8 ((u8*)(GFX_BASE_ADDR + 0xe23e8))

#define GFX_IMG_00212BE8 ((u8*)(GFX_BASE_ADDR + 0xe2be8))

#define GFX_IMG_002133E8 ((u8*)(GFX_BASE_ADDR + 0xe33e8))

#define GFX_IMG_00213BE8 ((u8*)(GFX_BASE_ADDR + 0xe3be8))

#define GFX_IMG_002143E8 ((u8*)(GFX_BASE_ADDR + 0xe43e8))

#define GFX_IMG_00214BE8 ((u8*)(GFX_BASE_ADDR + 0xe4be8))

#define GFX_IMG_002153E8 ((u8*)(GFX_BASE_ADDR + 0xe53e8))

#define GFX_IMG_00215BE8 ((u8*)(GFX_BASE_ADDR + 0xe5be8))

#define GFX_IMG_002163E8 ((u8*)(GFX_BASE_ADDR + 0xe63e8))

#define GFX_IMG_00216BE8 ((u8*)(GFX_BASE_ADDR + 0xe6be8))

#define GFX_IMG_002173E8 ((u8*)(GFX_BASE_ADDR + 0xe73e8))

#define GFX_IMG_00217BE8 ((u8*)(GFX_BASE_ADDR + 0xe7be8))

#define GFX_IMG_002183E8 ((u8*)(GFX_BASE_ADDR + 0xe83e8))

#define GFX_IMG_00218BE8 ((u8*)(GFX_BASE_ADDR + 0xe8be8))

#define GFX_IMG_002193E8 ((u8*)(GFX_BASE_ADDR + 0xe93e8))

#define GFX_IMG_00219BE8 ((u8*)(GFX_BASE_ADDR + 0xe9be8))

#define GFX_IMG_0021A3E8 ((u8*)(GFX_BASE_ADDR + 0xea3e8))

#define GFX_IMG_0021ABE8 ((u8*)(GFX_BASE_ADDR + 0xeabe8))

#define GFX_IMG_0021B3E8 ((u8*)(GFX_BASE_ADDR + 0xeb3e8))

#define GFX_IMG_0021BBE8 ((u8*)(GFX_BASE_ADDR + 0xebbe8))

#define GFX_IMG_0021C3E8 ((u8*)(GFX_BASE_ADDR + 0xec3e8))

#define GFX_IMG_0021CBE8 ((u8*)(GFX_BASE_ADDR + 0xecbe8))

#define GFX_IMG_0021D3E8 ((u8*)(GFX_BASE_ADDR + 0xed3e8))

#define GFX_IMG_0021DBE8 ((u8*)(GFX_BASE_ADDR + 0xedbe8))

#define GFX_IMG_0021E3E8 ((u8*)(GFX_BASE_ADDR + 0xee3e8))

#define GFX_IMG_0021EBE8 ((u8*)(GFX_BASE_ADDR + 0xeebe8))

#define GFX_IMG_0021F3E8 ((u8*)(GFX_BASE_ADDR + 0xef3e8))

#define GFX_IMG_0021FBE8 ((u8*)(GFX_BASE_ADDR + 0xefbe8))

#define GFX_IMG_002203E8 ((u8*)(GFX_BASE_ADDR + 0xf03e8))

#define GFX_IMG_00220BE8 ((u8*)(GFX_BASE_ADDR + 0xf0be8))

#define GFX_IMG_002213E8 ((u8*)(GFX_BASE_ADDR + 0xf13e8))

#define GFX_IMG_00221BE8 ((u8*)(GFX_BASE_ADDR + 0xf1be8))

#define GFX_IMG_002223E8 ((u8*)(GFX_BASE_ADDR + 0xf23e8))

#define GFX_IMG_00222BE8 ((u8*)(GFX_BASE_ADDR + 0xf2be8))

#define GFX_IMG_002233E8 ((u8*)(GFX_BASE_ADDR + 0xf33e8))

#define GFX_IMG_00223BE8 ((u8*)(GFX_BASE_ADDR + 0xf3be8))

#define GFX_IMG_002243E8 ((u8*)(GFX_BASE_ADDR + 0xf43e8))

#define GFX_IMG_00224BE8 ((u8*)(GFX_BASE_ADDR + 0xf4be8))

#define GFX_IMG_002253E8 ((u8*)(GFX_BASE_ADDR + 0xf53e8))

#define GFX_IMG_00225BE8 ((u8*)(GFX_BASE_ADDR + 0xf5be8))

#define GFX_IMG_002263E8 ((u8*)(GFX_BASE_ADDR + 0xf63e8))

#define GFX_IMG_00226BE8 ((u8*)(GFX_BASE_ADDR + 0xf6be8))

#define GFX_IMG_002273E8 ((u8*)(GFX_BASE_ADDR + 0xf73e8))

#define GFX_IMG_00227BE8 ((u8*)(GFX_BASE_ADDR + 0xf7be8))

#define GFX_IMG_002283E8 ((u8*)(GFX_BASE_ADDR + 0xf83e8))

#define GFX_IMG_00228BE8 ((u8*)(GFX_BASE_ADDR + 0xf8be8))

#define GFX_IMG_002293E8 ((u8*)(GFX_BASE_ADDR + 0xf93e8))

#define GFX_IMG_00229BE8 ((u8*)(GFX_BASE_ADDR + 0xf9be8))

#define GFX_IMG_0022A3E8 ((u8*)(GFX_BASE_ADDR + 0xfa3e8))

#define GFX_IMG_0022ABE8 ((u8*)(GFX_BASE_ADDR + 0xfabe8))

#define GFX_IMG_0022B3E8 ((u8*)(GFX_BASE_ADDR + 0xfb3e8))

#define GFX_IMG_0022BBE8 ((u8*)(GFX_BASE_ADDR + 0xfbbe8))

#define GFX_IMG_0022C3E8 ((u8*)(GFX_BASE_ADDR + 0xfc3e8))

#define GFX_IMG_0022CBE8 ((u8*)(GFX_BASE_ADDR + 0xfcbe8))

#define GFX_IMG_0022D3E8 ((u8*)(GFX_BASE_ADDR + 0xfd3e8))

#define GFX_IMG_0022DBE8 ((u8*)(GFX_BASE_ADDR + 0xfdbe8))

#define GFX_IMG_0022E3E8 ((u8*)(GFX_BASE_ADDR + 0xfe3e8))

#define GFX_IMG_0022EBE8 ((u8*)(GFX_BASE_ADDR + 0xfebe8))

#define GFX_IMG_0022F3E8 ((u8*)(GFX_BASE_ADDR + 0xff3e8))

#define GFX_IMG_0022FBE8 ((u8*)(GFX_BASE_ADDR + 0xffbe8))

#define GFX_IMG_002303E8 ((u8*)(GFX_BASE_ADDR + 0x1003e8))

#define GFX_IMG_00230BE8 ((u8*)(GFX_BASE_ADDR + 0x100be8))

#define GFX_IMG_002313E8 ((u8*)(GFX_BASE_ADDR + 0x1013e8))

#define GFX_PALETTE_palette ((u8*)(GFX_BASE_ADDR + 0x101be8))

#define GFX_IMG_killer ((u8*)(GFX_BASE_ADDR + 0x101c08))

#define GFX_IMG_victim ((u8*)(GFX_BASE_ADDR + 0x101c88))

#define GFX_IMG_green ((u8*)(GFX_BASE_ADDR + 0x101d08))

#define GFX_IMG_double_door_diagram ((u8*)(GFX_BASE_ADDR + 0x101d88))

#define GFX_IMG_folding_screen ((u8*)(GFX_BASE_ADDR + 0x102188))

#define GFX_IMG_red_dot ((u8*)(GFX_BASE_ADDR + 0x102488))

#define GFX_IMG_case3_main_gate ((u8*)(GFX_BASE_ADDR + 0x1024a8))

#define GFX_IMG_green ((u8*)(GFX_BASE_ADDR + 0x1025a8))

#define GFX_IMG_case4_boat_horizontal ((u8*)(GFX_BASE_ADDR + 0x102628))

#define GFX_IMG_case4_boat_rental_shop ((u8*)(GFX_BASE_ADDR + 0x102668))

#define GFX_IMG_case4_lotta_suv ((u8*)(GFX_BASE_ADDR + 0x102868))

#define GFX_IMG_case4_boat_vertical ((u8*)(GFX_BASE_ADDR + 0x102968))

#define GFX_STRIPED_capcom_screen ((u8*)(GFX_BASE_ADDR + 0x1029a8))

#define GFX_STRIPED_case1_intro_nightmare_1 ((u8*)(GFX_BASE_ADDR + 0x103674))

#define GFX_STRIPED_capcom_screen_bw ((u8*)(GFX_BASE_ADDR + 0x1059b4))

#define GFX_STRIPED_defendant_lobby ((u8*)(GFX_BASE_ADDR + 0x10663c))

#define GFX_STRIPED_defense_side ((u8*)(GFX_BASE_ADDR + 0x10b3e0))

#define GFX_STRIPED_prosecution_side ((u8*)(GFX_BASE_ADDR + 0x10cf88))

#define GFX_STRIPED_witness_backdrop ((u8*)(GFX_BASE_ADDR + 0x10e98c))

#define GFX_STRIPED_judge_seat ((u8*)(GFX_BASE_ADDR + 0x110624))

#define GFX_STRIPED_co_counsel ((u8*)(GFX_BASE_ADDR + 0x116b24))

#define GFX_STRIPED_court_room ((u8*)(GFX_BASE_ADDR + 0x11c990))

#define GFX_STRIPED_court_room_blue ((u8*)(GFX_BASE_ADDR + 0x1240c0))

#define GFX_STRIPED_gavel_frame_1 ((u8*)(GFX_BASE_ADDR + 0x127b58))

#define GFX_STRIPED_gavel_frame_2 ((u8*)(GFX_BASE_ADDR + 0x12a8f0))

#define GFX_STRIPED_gavel_frame_3 ((u8*)(GFX_BASE_ADDR + 0x12e078))

#define GFX_PALETTE_bustup_phoenix ((u8*)(GFX_BASE_ADDR + 0x133fd4))

#define GFX_TILEMAP_bustup_phoenix ((u8*)(GFX_BASE_ADDR + 0x133ff4))

#define GFX_IMG_bustup_phoenix ((u8*)(GFX_BASE_ADDR + 0x1344a4))

#define GFX_PALETTE_bustup_edgeworth ((u8*)(GFX_BASE_ADDR + 0x135cc4))

#define GFX_TILEMAP_bustup_edgeworth ((u8*)(GFX_BASE_ADDR + 0x135ce4))

#define GFX_IMG_bustup_edgeworth ((u8*)(GFX_BASE_ADDR + 0x136194))

#define GFX_STRIPED_speedlines ((u8*)(GFX_BASE_ADDR + 0x137f34))

#define GFX_STRIPED_detention_center ((u8*)(GFX_BASE_ADDR + 0x138de0))

#define GFX_STRIPED_wright_co_law_offices_day ((u8*)(GFX_BASE_ADDR + 0x13c528))

#define GFX_STRIPED_police_station_lobby ((u8*)(GFX_BASE_ADDR + 0x141c44))

#define GFX_PALETTE_bustup_franziska ((u8*)(GFX_BASE_ADDR + 0x147a98))

#define GFX_TILEMAP_bustup_franziska ((u8*)(GFX_BASE_ADDR + 0x147ab8))

#define GFX_IMG_bustup_franziska ((u8*)(GFX_BASE_ADDR + 0x147f68))

#define GFX_STRIPED_case1_photo_of_dustin_dead ((u8*)(GFX_BASE_ADDR + 0x149388))

#define GFX_STRIPED_case1_photo_of_maggeys_name ((u8*)(GFX_BASE_ADDR + 0x14c8ec))

#define GFX_STRIPED_case1_maggey_with_dustin ((u8*)(GFX_BASE_ADDR + 0x14fba8))

#define GFX_STRIPED_case1_maggey_spotting_richard ((u8*)(GFX_BASE_ADDR + 0x1537c8))

#define GFX_STRIPED_case1_intro_richard_with_fire_extinguisher ((u8*)(GFX_BASE_ADDR + 0x157938))

#define GFX_STRIPED_case1_intro_nightmare_2 ((u8*)(GFX_BASE_ADDR + 0x162318))

#define GFX_STRIPED_case1_intro_richard_looking ((u8*)(GFX_BASE_ADDR + 0x164658))

#define GFX_STRIPED_kurain_village ((u8*)(GFX_BASE_ADDR + 0x168ba4))

#define GFX_STRIPED_kurain_main_hall ((u8*)(GFX_BASE_ADDR + 0x16f718))

#define GFX_STRIPED_meeting_room ((u8*)(GFX_BASE_ADDR + 0x178370))

#define GFX_STRIPED_winding_way ((u8*)(GFX_BASE_ADDR + 0x1888d4))

#define GFX_STRIPED_kurain_spare_room_with_box ((u8*)(GFX_BASE_ADDR + 0x1904a0))

#define GFX_STRIPED_kurain_spare_room ((u8*)(GFX_BASE_ADDR + 0x197cf0))

#define GFX_STRIPED_hotti_clinic ((u8*)(GFX_BASE_ADDR + 0x19f29c))

#define GFX_STRIPED_case2_intro_car ((u8*)(GFX_BASE_ADDR + 0x1a5268))

#define GFX_STRIPED_case2_intro_car_crash ((u8*)(GFX_BASE_ADDR + 0x1aa994))

#define GFX_STRIPED_case2_intro_phoenix_with_maya ((u8*)(GFX_BASE_ADDR + 0x1b5168))

#define GFX_STRIPED_dummy_background_1 ((u8*)(GFX_BASE_ADDR + 0x1ba99c))

#define GFX_STRIPED_case2_newspaper_car_crash_page_1 ((u8*)(GFX_BASE_ADDR + 0x1bba44))

#define GFX_STRIPED_case2_newspaper_car_crash_page_2 ((u8*)(GFX_BASE_ADDR + 0x1bc9b4))

#define GFX_STRIPED_case2_newspaper_car_crash_page_3 ((u8*)(GFX_BASE_ADDR + 0x1bd900))

#define GFX_STRIPED_case2_diagram_of_meeting_room ((u8*)(GFX_BASE_ADDR + 0x1be868))

#define GFX_STRIPED_case2_diagram_of_fey_manor ((u8*)(GFX_BASE_ADDR + 0x1bf398))

#define GFX_STRIPED_case2_intro_car_lights ((u8*)(GFX_BASE_ADDR + 0x1c0288))

#define GFX_STRIPED_pwaa1_dead_mia_in_office ((u8*)(GFX_BASE_ADDR + 0x1c13ec))

#define GFX_STRIPED_case2_maya_with_turner ((u8*)(GFX_BASE_ADDR + 0x1c4518))

#define GFX_STRIPED_case2_mimi_in_hospital ((u8*)(GFX_BASE_ADDR + 0x1c7a14))

#define GFX_STRIPED_case2_mayas_robe ((u8*)(GFX_BASE_ADDR + 0x1cb9e4))

#define GFX_STRIPED_case2_photo_of_incident ((u8*)(GFX_BASE_ADDR + 0x1cd950))

#define GFX_STRIPED_case2_photo_of_attacker ((u8*)(GFX_BASE_ADDR + 0x1d0b30))

#define GFX_STRIPED_case2_photo_of_summoned_mia ((u8*)(GFX_BASE_ADDR + 0x1d40a8))

#define GFX_STRIPED_case2_pearl_fixing_urn ((u8*)(GFX_BASE_ADDR + 0x1d948c))

#define GFX_STRIPED_case2_morgan_fey ((u8*)(GFX_BASE_ADDR + 0x1dc744))

#define GFX_STRIPED_case2_ini_with_summoned_mimi ((u8*)(GFX_BASE_ADDR + 0x1e30d4))

#define GFX_STRIPED_case2_ini_with_sleeping_maya ((u8*)(GFX_BASE_ADDR + 0x1e6500))

#define GFX_STRIPED_case2_box_behind_screen ((u8*)(GFX_BASE_ADDR + 0x1e98cc))

#define GFX_STRIPED_case2_turner_with_gun ((u8*)(GFX_BASE_ADDR + 0x1ec908))

#define GFX_STRIPED_case2_maya_with_summoned_mia ((u8*)(GFX_BASE_ADDR + 0x1f0384))

#define GFX_STRIPED_circus_tent ((u8*)(GFX_BASE_ADDR + 0x1f587c))

#define GFX_STRIPED_circus_cafeteria ((u8*)(GFX_BASE_ADDR + 0x1fd4a0))

#define GFX_STRIPED_mr_berrys_office ((u8*)(GFX_BASE_ADDR + 0x205060))

#define GFX_STRIPED_berry_big_circus_entrance_day ((u8*)(GFX_BASE_ADDR + 0x20c13c))

#define GFX_STRIPED_berry_big_circus_entrance_night ((u8*)(GFX_BASE_ADDR + 0x212954))

#define GFX_STRIPED_circus_courtyard ((u8*)(GFX_BASE_ADDR + 0x2197d4))

#define GFX_STRIPED_moes_room ((u8*)(GFX_BASE_ADDR + 0x21faac))

#define GFX_STRIPED_acros_room ((u8*)(GFX_BASE_ADDR + 0x226eb0))

#define GFX_STRIPED_case3_intro_lion_blue_yellow ((u8*)(GFX_BASE_ADDR + 0x22d154))

#define GFX_STRIPED_case3_intro_lion_green_red ((u8*)(GFX_BASE_ADDR + 0x232700))

#define GFX_STRIPED_case3_intro_circus ((u8*)(GFX_BASE_ADDR + 0x237768))

#define GFX_STRIPED_case3_intro_maximillion ((u8*)(GFX_BASE_ADDR + 0x246ea8))

#define GFX_STRIPED_case3_threatening_note_text ((u8*)(GFX_BASE_ADDR + 0x24c934))

#define GFX_STRIPED_case3_poster_of_maximillion ((u8*)(GFX_BASE_ADDR + 0x24d6d8))

#define GFX_STRIPED_case3_photo_of_maximillion_with_trophy ((u8*)(GFX_BASE_ADDR + 0x25309c))

#define GFX_STRIPED_case3_maximillion_with_contract ((u8*)(GFX_BASE_ADDR + 0x2599b0))

#define GFX_STRIPED_case3_diagram_circus ((u8*)(GFX_BASE_ADDR + 0x25d548))

#define GFX_STRIPED_case3_photo_of_russell ((u8*)(GFX_BASE_ADDR + 0x25eb18))

#define GFX_STRIPED_case3_dead_russell_outside ((u8*)(GFX_BASE_ADDR + 0x261440))

#define GFX_STRIPED_case3_russell_about_to_get_hit ((u8*)(GFX_BASE_ADDR + 0x263c98))

#define GFX_STRIPED_case3_russell_getting_hit ((u8*)(GFX_BASE_ADDR + 0x265f30))

#define GFX_STRIPED_case3_bat_with_lion ((u8*)(GFX_BASE_ADDR + 0x268878))

#define GFX_STRIPED_case3_ben_spotting_max ((u8*)(GFX_BASE_ADDR + 0x26de10))

#define GFX_STRIPED_case3_acro_spotting_statue ((u8*)(GFX_BASE_ADDR + 0x271590))

#define GFX_STRIPED_case3_bust_of_maximillion ((u8*)(GFX_BASE_ADDR + 0x2742c4))

#define GFX_STRIPED_case3_acro_dropping_statue ((u8*)(GFX_BASE_ADDR + 0x279384))

#define GFX_STRIPED_case3_max_grabbing_bottle ((u8*)(GFX_BASE_ADDR + 0x27d43c))

#define GFX_STRIPED_case3_acros_bottom_half_in_wheelchair ((u8*)(GFX_BASE_ADDR + 0x281104))

#define GFX_STRIPED_case3_edgeworth_at_airport ((u8*)(GFX_BASE_ADDR + 0x283140))

#define GFX_STRIPED_gatewater_hotel_ballroom ((u8*)(GFX_BASE_ADDR + 0x28bcb0))

#define GFX_STRIPED_gatewater_hotel_hallway ((u8*)(GFX_BASE_ADDR + 0x2949c0))

#define GFX_STRIPED_matt_engardes_hotel_room ((u8*)(GFX_BASE_ADDR + 0x29c6f8))

#define GFX_STRIPED_juan_corridas_hotel_room ((u8*)(GFX_BASE_ADDR + 0x2a414c))

#define GFX_STRIPED_dummy_background_2 ((u8*)(GFX_BASE_ADDR + 0x2b23a8))

#define GFX_STRIPED_gatewater_hotel_lobby ((u8*)(GFX_BASE_ADDR + 0x2b3490))

#define GFX_STRIPED_matt_engardes_house ((u8*)(GFX_BASE_ADDR + 0x2bbd14))

#define GFX_STRIPED_secret_room ((u8*)(GFX_BASE_ADDR + 0x2c3da8))

#define GFX_STRIPED_wine_cellar ((u8*)(GFX_BASE_ADDR + 0x2ca848))

#define GFX_STRIPED_case4_intro_heroes_lined_up ((u8*)(GFX_BASE_ADDR + 0x2d1e1c))

#define GFX_STRIPED_case4_intro_nickel_samurai_appears ((u8*)(GFX_BASE_ADDR + 0x2dee18))

#define GFX_STRIPED_case4_intro_nickel_samurai_with_fan ((u8*)(GFX_BASE_ADDR + 0x2e101c))

#define GFX_STRIPED_case4_over_the_clouds ((u8*)(GFX_BASE_ADDR + 0x2e7880))

#define GFX_STRIPED_case4_jammin_ninja_poster ((u8*)(GFX_BASE_ADDR + 0x2ede18))

#define GFX_STRIPED_airport ((u8*)(GFX_BASE_ADDR + 0x2f5334))

#define GFX_STRIPED_case4_photo_of_juan_dead ((u8*)(GFX_BASE_ADDR + 0x2fc52c))

#define GFX_STRIPED_case4_diagram_hotel ((u8*)(GFX_BASE_ADDR + 0x2ff748))

#define GFX_STRIPED_case4_photo_of_nickel_samurai_in_hall ((u8*)(GFX_BASE_ADDR + 0x3008ec))

#define GFX_STRIPED_case4_nickel_samurai_poster ((u8*)(GFX_BASE_ADDR + 0x30414c))

#define GFX_STRIPED_case4_juan_finding_dead_celeste ((u8*)(GFX_BASE_ADDR + 0x30b428))

#define GFX_STRIPED_case4_adrian_puttin_on_costume ((u8*)(GFX_BASE_ADDR + 0x30e438))

#define GFX_STRIPED_case4_adrian_with_sleeping_matt ((u8*)(GFX_BASE_ADDR + 0x311c50))

#define GFX_STRIPED_case4_backdrop_of_matt_with_partner ((u8*)(GFX_BASE_ADDR + 0x314ef8))

#define GFX_STRIPED_pwaa1_edgeworth_picking_up_gun ((u8*)(GFX_BASE_ADDR + 0x3178b0))

#define GFX_STRIPED_case4_matt_getting_juice_from_shelly ((u8*)(GFX_BASE_ADDR + 0x31de14))

#define GFX_STRIPED_case4_franziska_entering ((u8*)(GFX_BASE_ADDR + 0x321f68))

#define GFX_STRIPED_case4_shelly_handing_over_bear ((u8*)(GFX_BASE_ADDR + 0x328a38))

#define GFX_STRIPED_case4_phoenix_with_maya_and_pearl ((u8*)(GFX_BASE_ADDR + 0x32bdb0))

#define GFX_STRIPED_case4_calling_card_with_drawing ((u8*)(GFX_BASE_ADDR + 0x332d6c))

#define GFX_STRIPED_case4_phoenix_leaving_bad_end ((u8*)(GFX_BASE_ADDR + 0x33531c))

#define GFX_STRIPED_case4_adrian_finding_juan_with_juice ((u8*)(GFX_BASE_ADDR + 0x338fd0))

#define GFX_STRIPED_case4_calling_card ((u8*)(GFX_BASE_ADDR + 0x33caf0))

#define GFX_STRIPED_steel_samurai ((u8*)(GFX_BASE_ADDR + 0x33dbf0))

#define GFX_STRIPED_case4_tabloid_article ((u8*)(GFX_BASE_ADDR + 0x34384c))

#define GFX_STRIPED_pwaa1_class_trial_edgeworth ((u8*)(GFX_BASE_ADDR + 0x3446cc))

#define GFX_IMG_nickel_samurai_case3_op_zoomin ((u8*)(GFX_BASE_ADDR + 0x347c38))

#define GFX_TILEMAP_nickel_samurai_case3_op_zoomin ((u8*)(GFX_BASE_ADDR + 0x348370))

#define GFX_PALETTE_nickel_samurai_case3_op_zoomin ((u8*)(GFX_BASE_ADDR + 0x3483f8))

#define GFX_IMG_speedlines_first_and_last_columns ((u8*)(GFX_BASE_ADDR + 0x34845c))

#define GFX_PALETTE_court_scroll ((u8*)(GFX_BASE_ADDR + 0x348bdc))

#define GFX_IMG_court_scroll ((u8*)(GFX_BASE_ADDR + 0x348bfc))

#define GFX_ANIMATION_TILES_animation01 ((u8*)(GFX_BASE_ADDR + 0x361bfc))

#define GFX_ANIMATION_SEQUENCE_animation01 ((u8*)(GFX_BASE_ADDR + 0x37b9c0))

#define GFX_ANIMATION_TILES_animation02 ((u8*)(GFX_BASE_ADDR + 0x37f048))

#define GFX_ANIMATION_SEQUENCE_animation02 ((u8*)(GFX_BASE_ADDR + 0x399abc))

#define GFX_ANIMATION_TILES_animation03 ((u8*)(GFX_BASE_ADDR + 0x39e560))

#define GFX_ANIMATION_SEQUENCE_animation03 ((u8*)(GFX_BASE_ADDR + 0x3a8c1c))

#define GFX_ANIMATION_TILES_animation04 ((u8*)(GFX_BASE_ADDR + 0x3ab2c8))

#define GFX_ANIMATION_SEQUENCE_animation04 ((u8*)(GFX_BASE_ADDR + 0x3ada24))

#define GFX_ANIMATION_TILES_animation05 ((u8*)(GFX_BASE_ADDR + 0x3adc94))

#define GFX_ANIMATION_SEQUENCE_animation05 ((u8*)(GFX_BASE_ADDR + 0x3b2514))

#define GFX_ANIMATION_TILES_animation06 ((u8*)(GFX_BASE_ADDR + 0x3b32a8))

#define GFX_ANIMATION_SEQUENCE_animation06 ((u8*)(GFX_BASE_ADDR + 0x3d39c0))

#define GFX_ANIMATION_TILES_animation07 ((u8*)(GFX_BASE_ADDR + 0x3d9834))

#define GFX_ANIMATION_SEQUENCE_animation07 ((u8*)(GFX_BASE_ADDR + 0x3eee0c))

#define GFX_ANIMATION_TILES_animation08 ((u8*)(GFX_BASE_ADDR + 0x3f2654))

#define GFX_ANIMATION_SEQUENCE_animation08 ((u8*)(GFX_BASE_ADDR + 0x417f34))

#define GFX_ANIMATION_TILES_animation09 ((u8*)(GFX_BASE_ADDR + 0x41bb84))

#define GFX_ANIMATION_SEQUENCE_animation09 ((u8*)(GFX_BASE_ADDR + 0x428750))

#define GFX_ANIMATION_TILES_animation10 ((u8*)(GFX_BASE_ADDR + 0x42a0a8))

#define GFX_ANIMATION_SEQUENCE_animation10 ((u8*)(GFX_BASE_ADDR + 0x430b7c))

#define GFX_ANIMATION_TILES_animation11 ((u8*)(GFX_BASE_ADDR + 0x4315d4))

#define GFX_ANIMATION_SEQUENCE_animation11 ((u8*)(GFX_BASE_ADDR + 0x435b00))

#define GFX_ANIMATION_TILES_animation12 ((u8*)(GFX_BASE_ADDR + 0x435eac))

#define GFX_ANIMATION_SEQUENCE_animation12 ((u8*)(GFX_BASE_ADDR + 0x459338))

#define GFX_ANIMATION_TILES_animation13 ((u8*)(GFX_BASE_ADDR + 0x45d9c8))

#define GFX_ANIMATION_SEQUENCE_animation13 ((u8*)(GFX_BASE_ADDR + 0x478fb8))

#define GFX_ANIMATION_TILES_animation14 ((u8*)(GFX_BASE_ADDR + 0x47b9d4))

#define GFX_ANIMATION_SEQUENCE_animation14 ((u8*)(GFX_BASE_ADDR + 0x489dfc))

#define GFX_ANIMATION_TILES_animation15 ((u8*)(GFX_BASE_ADDR + 0x48cbd0))

#define GFX_ANIMATION_SEQUENCE_animation15 ((u8*)(GFX_BASE_ADDR + 0x4990e4))

#define GFX_ANIMATION_TILES_animation16 ((u8*)(GFX_BASE_ADDR + 0x49a858))

#define GFX_ANIMATION_SEQUENCE_animation16 ((u8*)(GFX_BASE_ADDR + 0x4a8b08))

#define GFX_ANIMATION_TILES_animation17 ((u8*)(GFX_BASE_ADDR + 0x4aa150))

#define GFX_ANIMATION_SEQUENCE_animation17 ((u8*)(GFX_BASE_ADDR + 0x4b6a7c))

#define GFX_ANIMATION_TILES_animation18 ((u8*)(GFX_BASE_ADDR + 0x4b7ac8))

#define GFX_ANIMATION_SEQUENCE_animation18 ((u8*)(GFX_BASE_ADDR + 0x4c0dfc))

#define GFX_ANIMATION_TILES_animation19 ((u8*)(GFX_BASE_ADDR + 0x4c26b4))

#define GFX_ANIMATION_SEQUENCE_animation19 ((u8*)(GFX_BASE_ADDR + 0x4d30d4))

#define GFX_ANIMATION_TILES_animation20 ((u8*)(GFX_BASE_ADDR + 0x4d756c))

#define GFX_ANIMATION_SEQUENCE_animation20 ((u8*)(GFX_BASE_ADDR + 0x4e7dcc))

#define GFX_ANIMATION_TILES_animation21 ((u8*)(GFX_BASE_ADDR + 0x4eb3b8))

#define GFX_ANIMATION_SEQUENCE_animation21 ((u8*)(GFX_BASE_ADDR + 0x4f7f28))

#define GFX_ANIMATION_TILES_animation22 ((u8*)(GFX_BASE_ADDR + 0x4fe164))

#define GFX_ANIMATION_SEQUENCE_animation22 ((u8*)(GFX_BASE_ADDR + 0x513078))

#define GFX_ANIMATION_TILES_animation23 ((u8*)(GFX_BASE_ADDR + 0x51685c))

#define GFX_ANIMATION_SEQUENCE_animation23 ((u8*)(GFX_BASE_ADDR + 0x52343c))

#define GFX_ANIMATION_TILES_animation24 ((u8*)(GFX_BASE_ADDR + 0x52649c))

#define GFX_ANIMATION_SEQUENCE_animation24 ((u8*)(GFX_BASE_ADDR + 0x5486dc))

#define GFX_ANIMATION_TILES_animation25 ((u8*)(GFX_BASE_ADDR + 0x5500e8))

#define GFX_ANIMATION_SEQUENCE_animation25 ((u8*)(GFX_BASE_ADDR + 0x5649d0))

#define GFX_ANIMATION_TILES_animation26 ((u8*)(GFX_BASE_ADDR + 0x5693bc))

#define GFX_ANIMATION_SEQUENCE_animation26 ((u8*)(GFX_BASE_ADDR + 0x56de1c))

#define GFX_ANIMATION_TILES_animation27 ((u8*)(GFX_BASE_ADDR + 0x56e36c))

#define GFX_ANIMATION_SEQUENCE_animation27 ((u8*)(GFX_BASE_ADDR + 0x57c8d8))

#define GFX_ANIMATION_TILES_animation28 ((u8*)(GFX_BASE_ADDR + 0x57ef54))

#define GFX_ANIMATION_SEQUENCE_animation28 ((u8*)(GFX_BASE_ADDR + 0x58ec0c))

#define GFX_ANIMATION_TILES_animation29 ((u8*)(GFX_BASE_ADDR + 0x590428))

#define GFX_ANIMATION_SEQUENCE_animation29 ((u8*)(GFX_BASE_ADDR + 0x59ce38))

#define GFX_ANIMATION_TILES_animation30 ((u8*)(GFX_BASE_ADDR + 0x59eb28))

#define GFX_ANIMATION_SEQUENCE_animation30 ((u8*)(GFX_BASE_ADDR + 0x5a0a74))

#define GFX_ANIMATION_TILES_animation31 ((u8*)(GFX_BASE_ADDR + 0x5a0ca4))

#define GFX_ANIMATION_SEQUENCE_animation31 ((u8*)(GFX_BASE_ADDR + 0x5a3000))

#define GFX_ANIMATION_TILES_animation32 ((u8*)(GFX_BASE_ADDR + 0x5a32a4))

#define GFX_ANIMATION_SEQUENCE_animation32 ((u8*)(GFX_BASE_ADDR + 0x5a82bc))

#define GFX_ANIMATION_TILES_animation33 ((u8*)(GFX_BASE_ADDR + 0x5a9d44))

#define GFX_ANIMATION_SEQUENCE_animation33 ((u8*)(GFX_BASE_ADDR + 0x5ac8c4))

#define GFX_ANIMATION_TILES_animation34 ((u8*)(GFX_BASE_ADDR + 0x5acaf4))

#define GFX_ANIMATION_SEQUENCE_animation34 ((u8*)(GFX_BASE_ADDR + 0x5ade7c))

#define GFX_ANIMATION_TILES_animation35 ((u8*)(GFX_BASE_ADDR + 0x5adee0))

#define GFX_ANIMATION_SEQUENCE_animation35 ((u8*)(GFX_BASE_ADDR + 0x5af280))

#define GFX_ANIMATION_TILES_tileset01 ((u8*)(GFX_BASE_ADDR + 0x5af2dc))

#define GFX_ANIMATION_SEQUENCE_animation01 ((u8*)(GFX_BASE_ADDR + 0x5b9858))

#define GFX_ANIMATION_SEQUENCE_animation02 ((u8*)(GFX_BASE_ADDR + 0x5b987c))

#define GFX_ANIMATION_SEQUENCE_animation03 ((u8*)(GFX_BASE_ADDR + 0x5b989c))

#define GFX_ANIMATION_SEQUENCE_animation04 ((u8*)(GFX_BASE_ADDR + 0x5b98c0))

#define GFX_ANIMATION_SEQUENCE_animation05 ((u8*)(GFX_BASE_ADDR + 0x5b98e0))

#define GFX_ANIMATION_SEQUENCE_animation06 ((u8*)(GFX_BASE_ADDR + 0x5b9904))

#define GFX_ANIMATION_SEQUENCE_animation07 ((u8*)(GFX_BASE_ADDR + 0x5b99a4))

#define GFX_ANIMATION_SEQUENCE_animation08 ((u8*)(GFX_BASE_ADDR + 0x5b9a5c))

#define GFX_ANIMATION_SEQUENCE_animation09 ((u8*)(GFX_BASE_ADDR + 0x5b9ae4))

#define GFX_ANIMATION_SEQUENCE_animation10 ((u8*)(GFX_BASE_ADDR + 0x5b9b5c))

#define GFX_ANIMATION_SEQUENCE_animation11 ((u8*)(GFX_BASE_ADDR + 0x5b9c84))

#define GFX_ANIMATION_SEQUENCE_animation12 ((u8*)(GFX_BASE_ADDR + 0x5b9d8c))

#define GFX_ANIMATION_SEQUENCE_animation13 ((u8*)(GFX_BASE_ADDR + 0x5b9f3c))

#define GFX_ANIMATION_SEQUENCE_animation14 ((u8*)(GFX_BASE_ADDR + 0x5ba01c))

#define GFX_ANIMATION_SEQUENCE_animation15 ((u8*)(GFX_BASE_ADDR + 0x5ba0f8))

#define GFX_ANIMATION_SEQUENCE_animation16 ((u8*)(GFX_BASE_ADDR + 0x5ba3c0))

#define GFX_ANIMATION_SEQUENCE_animation17 ((u8*)(GFX_BASE_ADDR + 0x5ba6f8))

#define GFX_ANIMATION_SEQUENCE_animation18 ((u8*)(GFX_BASE_ADDR + 0x5ba868))

#define GFX_ANIMATION_SEQUENCE_animation19 ((u8*)(GFX_BASE_ADDR + 0x5baa58))

#define GFX_ANIMATION_SEQUENCE_animation20 ((u8*)(GFX_BASE_ADDR + 0x5badd0))

#define GFX_ANIMATION_SEQUENCE_animation21 ((u8*)(GFX_BASE_ADDR + 0x5bb16c))

#define GFX_ANIMATION_SEQUENCE_animation22 ((u8*)(GFX_BASE_ADDR + 0x5bb520))

#define GFX_ANIMATION_SEQUENCE_animation23 ((u8*)(GFX_BASE_ADDR + 0x5bb540))

#define GFX_ANIMATION_SEQUENCE_animation24 ((u8*)(GFX_BASE_ADDR + 0x5bb560))

#define GFX_ANIMATION_SEQUENCE_animation25 ((u8*)(GFX_BASE_ADDR + 0x5bb580))

#define GFX_ANIMATION_SEQUENCE_animation26 ((u8*)(GFX_BASE_ADDR + 0x5bb5a4))

#define GFX_ANIMATION_SEQUENCE_animation27 ((u8*)(GFX_BASE_ADDR + 0x5bb5c8))

#define GFX_ANIMATION_SEQUENCE_animation28 ((u8*)(GFX_BASE_ADDR + 0x5bb5e8))

#define GFX_ANIMATION_SEQUENCE_animation29 ((u8*)(GFX_BASE_ADDR + 0x5bb608))

#define GFX_ANIMATION_SEQUENCE_animation30 ((u8*)(GFX_BASE_ADDR + 0x5bb640))

#define GFX_ANIMATION_SEQUENCE_animation31 ((u8*)(GFX_BASE_ADDR + 0x5bb66c))

#define GFX_ANIMATION_SEQUENCE_animation32 ((u8*)(GFX_BASE_ADDR + 0x5bb6c4))

#define GFX_ANIMATION_SEQUENCE_animation33 ((u8*)(GFX_BASE_ADDR + 0x5bb72c))

#define GFX_ANIMATION_SEQUENCE_animation34 ((u8*)(GFX_BASE_ADDR + 0x5bb7bc))

#define GFX_ANIMATION_TILES_tileset02 ((u8*)(GFX_BASE_ADDR + 0x5bb860))

#define GFX_ANIMATION_SEQUENCE_animation35 ((u8*)(GFX_BASE_ADDR + 0x5fd184))

#define GFX_ANIMATION_SEQUENCE_animation36 ((u8*)(GFX_BASE_ADDR + 0x5fd27c))

#define GFX_ANIMATION_SEQUENCE_animation37 ((u8*)(GFX_BASE_ADDR + 0x5fd3a4))

#define GFX_ANIMATION_SEQUENCE_animation38 ((u8*)(GFX_BASE_ADDR + 0x5fd3c4))

#define GFX_ANIMATION_SEQUENCE_animation39 ((u8*)(GFX_BASE_ADDR + 0x5fd3e4))

#define GFX_ANIMATION_SEQUENCE_animation40 ((u8*)(GFX_BASE_ADDR + 0x5fd404))

#define GFX_ANIMATION_SEQUENCE_animation41 ((u8*)(GFX_BASE_ADDR + 0x5fd424))

#define GFX_ANIMATION_SEQUENCE_animation42 ((u8*)(GFX_BASE_ADDR + 0x5fd45c))

#define GFX_ANIMATION_SEQUENCE_animation43 ((u8*)(GFX_BASE_ADDR + 0x5fd494))

#define GFX_ANIMATION_SEQUENCE_animation44 ((u8*)(GFX_BASE_ADDR + 0x5fd4cc))

#define GFX_ANIMATION_SEQUENCE_animation45 ((u8*)(GFX_BASE_ADDR + 0x5fd4ec))

#define GFX_ANIMATION_SEQUENCE_animation46 ((u8*)(GFX_BASE_ADDR + 0x5fd55c))

#define GFX_ANIMATION_SEQUENCE_animation47 ((u8*)(GFX_BASE_ADDR + 0x5fd74c))

#define GFX_ANIMATION_SEQUENCE_animation48 ((u8*)(GFX_BASE_ADDR + 0x5fd7dc))

#define GFX_ANIMATION_SEQUENCE_animation49 ((u8*)(GFX_BASE_ADDR + 0x5fd914))

#define GFX_ANIMATION_SEQUENCE_animation50 ((u8*)(GFX_BASE_ADDR + 0x5fd934))

#define GFX_ANIMATION_SEQUENCE_animation51 ((u8*)(GFX_BASE_ADDR + 0x5fd954))

#define GFX_ANIMATION_SEQUENCE_animation52 ((u8*)(GFX_BASE_ADDR + 0x5fdab4))

#define GFX_ANIMATION_SEQUENCE_animation53 ((u8*)(GFX_BASE_ADDR + 0x5fdcc8))

#define GFX_ANIMATION_SEQUENCE_animation54 ((u8*)(GFX_BASE_ADDR + 0x5fde7c))

#define GFX_ANIMATION_SEQUENCE_animation55 ((u8*)(GFX_BASE_ADDR + 0x5fdee8))

#define GFX_ANIMATION_SEQUENCE_animation56 ((u8*)(GFX_BASE_ADDR + 0x5fe228))

#define GFX_ANIMATION_SEQUENCE_animation57 ((u8*)(GFX_BASE_ADDR + 0x5fe2a4))

#define GFX_ANIMATION_SEQUENCE_animation58 ((u8*)(GFX_BASE_ADDR + 0x5fe420))

#define GFX_ANIMATION_SEQUENCE_animation59 ((u8*)(GFX_BASE_ADDR + 0x5fe5b0))

#define GFX_ANIMATION_SEQUENCE_animation60 ((u8*)(GFX_BASE_ADDR + 0x5fe658))

#define GFX_ANIMATION_SEQUENCE_animation61 ((u8*)(GFX_BASE_ADDR + 0x5fe82c))

#define GFX_ANIMATION_SEQUENCE_animation62 ((u8*)(GFX_BASE_ADDR + 0x5fe850))

#define GFX_ANIMATION_SEQUENCE_animation63 ((u8*)(GFX_BASE_ADDR + 0x5fead8))

#define GFX_ANIMATION_SEQUENCE_animation64 ((u8*)(GFX_BASE_ADDR + 0x5feb48))

#define GFX_ANIMATION_SEQUENCE_animation65 ((u8*)(GFX_BASE_ADDR + 0x5feb8c))

#define GFX_ANIMATION_SEQUENCE_animation66 ((u8*)(GFX_BASE_ADDR + 0x5febf8))

#define GFX_ANIMATION_SEQUENCE_animation67 ((u8*)(GFX_BASE_ADDR + 0x5fed10))

#define GFX_ANIMATION_SEQUENCE_animation68 ((u8*)(GFX_BASE_ADDR + 0x5fee64))

#define GFX_ANIMATION_SEQUENCE_animation69 ((u8*)(GFX_BASE_ADDR + 0x5ff164))

#define GFX_ANIMATION_SEQUENCE_animation70 ((u8*)(GFX_BASE_ADDR + 0x5ff72c))

#define GFX_ANIMATION_SEQUENCE_animation71 ((u8*)(GFX_BASE_ADDR + 0x5ff86c))

#define GFX_ANIMATION_SEQUENCE_animation72 ((u8*)(GFX_BASE_ADDR + 0x5ff9f0))

#define GFX_ANIMATION_SEQUENCE_animation73 ((u8*)(GFX_BASE_ADDR + 0x5ffb94))

#define GFX_ANIMATION_SEQUENCE_animation74 ((u8*)(GFX_BASE_ADDR + 0x5ffe68))

#define GFX_ANIMATION_SEQUENCE_animation75 ((u8*)(GFX_BASE_ADDR + 0x5fff78))

#define GFX_ANIMATION_SEQUENCE_animation76 ((u8*)(GFX_BASE_ADDR + 0x600088))

#define GFX_ANIMATION_SEQUENCE_animation77 ((u8*)(GFX_BASE_ADDR + 0x600198))

#define GFX_ANIMATION_SEQUENCE_animation78 ((u8*)(GFX_BASE_ADDR + 0x6002a8))

#define GFX_ANIMATION_SEQUENCE_animation79 ((u8*)(GFX_BASE_ADDR + 0x6002c8))

#define GFX_ANIMATION_SEQUENCE_animation80 ((u8*)(GFX_BASE_ADDR + 0x6002e8))

#define GFX_ANIMATION_SEQUENCE_animation81 ((u8*)(GFX_BASE_ADDR + 0x600308))

#define GFX_ANIMATION_SEQUENCE_animation82 ((u8*)(GFX_BASE_ADDR + 0x600328))

#define GFX_ANIMATION_SEQUENCE_animation83 ((u8*)(GFX_BASE_ADDR + 0x600348))

#define GFX_ANIMATION_SEQUENCE_animation84 ((u8*)(GFX_BASE_ADDR + 0x600368))

#define GFX_ANIMATION_SEQUENCE_animation85 ((u8*)(GFX_BASE_ADDR + 0x600390))

#define GFX_ANIMATION_SEQUENCE_animation86 ((u8*)(GFX_BASE_ADDR + 0x6005c4))

#define GFX_ANIMATION_SEQUENCE_animation87 ((u8*)(GFX_BASE_ADDR + 0x600600))

#define GFX_ANIMATION_SEQUENCE_animation88 ((u8*)(GFX_BASE_ADDR + 0x600620))

#define GFX_ANIMATION_SEQUENCE_animation89 ((u8*)(GFX_BASE_ADDR + 0x600650))

#define GFX_ANIMATION_SEQUENCE_animation90 ((u8*)(GFX_BASE_ADDR + 0x600680))

#define GFX_ANIMATION_SEQUENCE_animation91 ((u8*)(GFX_BASE_ADDR + 0x6006a4))

#define GFX_ANIMATION_SEQUENCE_animation92 ((u8*)(GFX_BASE_ADDR + 0x6006c8))

#define GFX_ANIMATION_SEQUENCE_animation93 ((u8*)(GFX_BASE_ADDR + 0x600700))

#define GFX_ANIMATION_SEQUENCE_animation94 ((u8*)(GFX_BASE_ADDR + 0x60076c))

#define GFX_ANIMATION_SEQUENCE_animation95 ((u8*)(GFX_BASE_ADDR + 0x6007d8))

#define GFX_ANIMATION_SEQUENCE_animation96 ((u8*)(GFX_BASE_ADDR + 0x600800))

#define GFX_ANIMATION_SEQUENCE_animation97 ((u8*)(GFX_BASE_ADDR + 0x600824))

#define GFX_ANIMATION_SEQUENCE_animation98 ((u8*)(GFX_BASE_ADDR + 0x60084c))

#define GFX_ANIMATION_SEQUENCE_animation99 ((u8*)(GFX_BASE_ADDR + 0x600870))

#define GFX_ANIMATION_SEQUENCE_animation100 ((u8*)(GFX_BASE_ADDR + 0x6008a0))

#define GFX_ANIMATION_SEQUENCE_animation101 ((u8*)(GFX_BASE_ADDR + 0x6008c4))

#define GFX_ANIMATION_SEQUENCE_animation102 ((u8*)(GFX_BASE_ADDR + 0x6008ec))

#define GFX_ANIMATION_SEQUENCE_animation103 ((u8*)(GFX_BASE_ADDR + 0x600910))

#define GFX_ANIMATION_SEQUENCE_animation104 ((u8*)(GFX_BASE_ADDR + 0x60093c))

#define GFX_ANIMATION_SEQUENCE_animation105 ((u8*)(GFX_BASE_ADDR + 0x600980))

#define GFX_ANIMATION_SEQUENCE_animation106 ((u8*)(GFX_BASE_ADDR + 0x6009a4))

#define GFX_ANIMATION_SEQUENCE_animation107 ((u8*)(GFX_BASE_ADDR + 0x6009d4))

#define GFX_ANIMATION_SEQUENCE_animation108 ((u8*)(GFX_BASE_ADDR + 0x600a00))

#define GFX_ANIMATION_SEQUENCE_animation109 ((u8*)(GFX_BASE_ADDR + 0x600a30))

#define GFX_ANIMATION_SEQUENCE_animation110 ((u8*)(GFX_BASE_ADDR + 0x600a54))

#define GFX_ANIMATION_SEQUENCE_animation111 ((u8*)(GFX_BASE_ADDR + 0x600a7c))

#define GFX_ANIMATION_SEQUENCE_animation112 ((u8*)(GFX_BASE_ADDR + 0x600aa0))

#define GFX_ANIMATION_TILES_tileset03 ((u8*)(GFX_BASE_ADDR + 0x600ac8))

#endif
