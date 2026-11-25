app: firefox
-
open chat: key(ctrl-alt-x)
ask chat: user.grid_win_click("1")
ask chat too: user.grid_win_click("42")
send chat: user.grid_win_click("254")
chat down: user.grid_win_click("19")
show chats:
    matches = user.mouse_helper_find_template_relative("2025-11-02_08.46.03.890081.png")
    user.marker_ui_show(matches)
hide chats:
    matches = user.mouse_helper_find_template_relative("2025-11-02_08.48.17.644401.png")
    user.marker_ui_show(matches)
set chat width: 
    user.grid_win("5")
    mouse_release()
select chats:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("81.0 334.0 232.0 -60.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
go forward: user.go_forward()
go back: user.go_back()
open debugger: key("ctrl-shift-z")
open network: key("ctrl-shift-e")
open console: key("ctrl-shift-k")
open inspector: key("ctrl-shift-c")
hide tools: key("f12")
network requests:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("113.44209289550781 -144.7138671875 138.7929229736328 -31.1170654296875", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
deezer player:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("297.0 -73.0 -15.1617431640625 -47.1329345703125", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
deezer [side] bar:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("62.0 95.0 303.0 -3.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
deezer top bar:
    bounding_rectangle = user.mouse_helper_calculate_relative_rect("307.0 108.0 -7.0 147.0", "active_window")
    user.mouse_helper_blob_picker(bounding_rectangle)
deezer search: mimic("deezer top bar")

request maker: key("alt-shift-y")
