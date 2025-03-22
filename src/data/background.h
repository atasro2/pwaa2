#include "graphics.h"

const struct Background gBackgroundTable[] = {
    {
        .bgData = GFX_STRIPED_capcom_screen,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case1_intro_nightmare_1,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_capcom_screen_bw,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_defendant_lobby,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_defense_side,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_prosecution_side,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_witness_backdrop,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_judge_seat,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_co_counsel,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_court_room,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_court_room_blue,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_gavel_frame_1,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_gavel_frame_2,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_gavel_frame_3,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_PALETTE_bustup_phoenix,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_PALETTE_bustup_edgeworth,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_speedlines,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_SPECIAL_SPEEDLINE | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_detention_center,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_wright_co_law_offices_day,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_police_station_lobby,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_PALETTE_bustup_franziska,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case1_photo_of_dustin_dead,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case1_photo_of_maggeys_name,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case1_maggey_with_dustin,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case1_maggey_spotting_richard,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case1_intro_richard_with_fire_extinguisher,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case1_intro_nightmare_2,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case1_intro_richard_looking,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_kurain_village,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_kurain_main_hall,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_meeting_room,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_winding_way,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_kurain_spare_room_with_box,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_kurain_spare_room,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_hotti_clinic,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_intro_car,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_intro_car_crash,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_DOWN | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_intro_phoenix_with_maya,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_dummy_background_1,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_newspaper_car_crash_page_1,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_newspaper_car_crash_page_2,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_newspaper_car_crash_page_3,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_diagram_of_meeting_room,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_diagram_of_fey_manor,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_intro_car_lights,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_pwaa1_dead_mia_in_office,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_maya_with_turner,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_mimi_in_hospital,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_mayas_robe,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_photo_of_incident,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_photo_of_attacker,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_photo_of_summoned_mia,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_pearl_fixing_urn,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_morgan_fey,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_ini_with_summoned_mimi,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_ini_with_sleeping_maya,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_box_behind_screen,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_turner_with_gun,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_maya_with_summoned_mia,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_circus_tent,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_circus_cafeteria,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_mr_berrys_office,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_berry_big_circus_entrance_day,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_berry_big_circus_entrance_night,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_circus_courtyard,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_moes_room,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_acros_room,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_intro_lion_blue_yellow,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_DOWN | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_intro_lion_green_red,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_intro_circus,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_intro_maximillion,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_threatening_note_text,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_poster_of_maximillion,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_photo_of_maximillion_with_trophy,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_maximillion_with_contract,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_diagram_circus,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_photo_of_russell,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_dead_russell_outside,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_russell_about_to_get_hit,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_russell_getting_hit,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_bat_with_lion,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_TOP | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_ben_spotting_max,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_acro_spotting_statue,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_bust_of_maximillion,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_acro_dropping_statue,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_max_grabbing_bottle,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_acros_bottom_half_in_wheelchair,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_DOWN | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case3_edgeworth_at_airport,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_gatewater_hotel_ballroom,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_gatewater_hotel_hallway,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_matt_engardes_hotel_room,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_juan_corridas_hotel_room,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_LEFT | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_dummy_background_2,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_gatewater_hotel_lobby,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_matt_engardes_house,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_secret_room,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_wine_cellar,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_over_the_clouds,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_jammin_ninja_poster,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_airport,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_photo_of_juan_dead,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_diagram_hotel,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_photo_of_nickel_samurai_in_hall,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_nickel_samurai_poster,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_juan_finding_dead_celeste,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_adrian_puttin_on_costume,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_adrian_with_sleeping_matt,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_backdrop_of_matt_with_partner,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_pwaa1_edgeworth_picking_up_gun,
        .controlBits = BG_MODE_SIZE_240x320 | BG_MODE_VSCROLL_DOWN | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_matt_getting_juice_from_shelly,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_franziska_entering,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_shelly_handing_over_bear,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_phoenix_with_maya_and_pearl,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_calling_card_with_drawing,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_phoenix_leaving_bad_end,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_adrian_finding_juan_with_juice,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_calling_card,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_steel_samurai,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_tabloid_article,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_pwaa1_class_trial_edgeworth,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_intro_heroes_lined_up,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_intro_heroes_lined_up,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_intro_heroes_lined_up,
        .controlBits = BG_MODE_SIZE_480x160 | BG_MODE_HSCROLL_RIGHT | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_intro_nickel_samurai_appears,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_4BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_intro_nickel_samurai_with_fan,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case4_intro_nickel_samurai_with_fan,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | BG_MODE_8BPP,
    },
    {
        .bgData = GFX_STRIPED_case2_intro_car_lights,
        .controlBits = BG_MODE_SIZE_240x160 | BG_MODE_NO_SCROLL | (1 << 8) | BG_MODE_4BPP,
    },
};
