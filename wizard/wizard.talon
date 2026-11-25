-
program menus:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("5.0 2.0 581.0 15.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
sonic player:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("306.0 -41.0 -792.0 -6.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
sonic albums:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2025-10-03_16.22.16.866063.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
    user.mouse_helper_blob_picker(bounding_rectangle)
sonic play all:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2025-10-03_16.23.16.081329.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
sonic bar:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("61.43132019042969 91.57688903808594 -4.8045654296875 164.4019012451172", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
rubarb: 
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("62.0 -53.0 696.0 -31.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
enable approve:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("183.69789123535156 -96.6510009765625 608.3342895507812 -59.96075439453125", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
approve read:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("189.26963806152344 -314.2076416015625 392.4697265625 -105.9898681640625", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
approve right:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("397.39556884765625 -312.09234619140625 478.59832763671875 -95.40301513671875", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
save password:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("562.0 265.0 768.0 303.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
torrent tools:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("5.80657958984375 3.179779052734375 236.5263671875 17.5555419921875", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
copy code:
    matches = user.mouse_helper_find_template_relative("2025-10-15_21.21.53.070558.png")
    user.marker_ui_show(matches)
strudel menus:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("-594.7388916015625 153.6129608154297 -176.8671875 162.903076171875", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)