tag: user.multistudio
-
test: key("w")
show side:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("3.0 97.0 25.0 303.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
close panel:
    matches = user.mouse_helper_find_template_relative("2025-09-21_18.35.12.193859.png")
    user.marker_ui_show(matches)
show sample:
    matches = user.mouse_helper_find_template_relative("2025-09-21_18.37.17.945130.png")
    user.marker_ui_show(matches)
edit track:
    matches = user.mouse_helper_find_template_relative("2025-09-21_18.39.43.130601.png")
    user.marker_ui_show(matches)
show folder:
    matches = user.mouse_helper_find_template_relative("2025-09-21_18.41.28.169646.png")
    user.marker_ui_show(matches)    
show sequencer:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("-662.0 162.0 -269.416015625 487.46923828125", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)βi
showed presets:
    matches = user.mouse_helper_find_template_relative("2025-10-10_15.05.37.246195.png")
    user.marker_ui_show(matches)
show menu:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("6.0 2.0 238.0 22.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
baseline:
    matches = user.mouse_helper_find_template_relative("2025-10-05_15.13.07.173129.png")
    user.marker_ui_show(matches)
left arrow:
    matches = user.mouse_helper_find_template_relative("2025-10-12_12.50.49.823290.png")
    user.marker_ui_show(matches)
select mode: key("shift-s")
draw mode: key("shift-d")
max panel:
    matches = user.mouse_helper_find_template_relative("2025-10-12_13.08.39.174758.png")
    user.marker_ui_show(matches)
min panel:
    matches = user.mouse_helper_find_template_relative("2025-10-12_13.09.43.710834.png")
    user.marker_ui_show(matches)
loop song:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2025-10-19_18.35.31.061075.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
disable loop:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2025-10-19_18.37.38.447754.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()