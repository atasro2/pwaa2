
graphics/title_screen_demo.8bpp.lz: graphics/title_screen_demo.8bpp
	$(GBAGFX) $< $@ -search 8
graphics/ui/trial/unused_testimony_characters.4bpp: graphics/ui/trial/unused_testimony_characters.png
	$(GBAGFX) $< $@ -mwidth 2 -mheight 2
graphics/ui/trial/press_present_buttons.4bpp: graphics/ui/trial/press_present_buttons.png
	$(GBAGFX) $< $@ -mwidth 4 -mheight 2
graphics/ui/court_record/profiles_text.4bpp: graphics/ui/court_record/profiles_text.png
	$(GBAGFX) $< $@ -mwidth 4 -mheight 2
graphics/ui/court_record/evidence_text.4bpp: graphics/ui/court_record/evidence_text.png
	$(GBAGFX) $< $@ -mwidth 4 -mheight 2
graphics/ui/trial/game_over_text.4bpp: graphics/ui/trial/game_over_text.png
	$(GBAGFX) $< $@ -mwidth 8 -mheight 8
graphics/ui/new_game_continue.4bpp: graphics/ui/new_game_continue.png
	$(GBAGFX) $< $@ -mwidth 4 -mheight 2
graphics/from_save_or_beginning_options.4bpp: graphics/from_save_or_beginning_options.png
	$(GBAGFX) $< $@ -mwidth 8 -mheight 4
graphics/speedlines_first_and_last_columns.4bpp: graphics/speedlines_first_and_last_columns.png
	$(GBAGFX) $< $@ -mwidth 1 -mheight 20