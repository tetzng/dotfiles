local wezterm = require("wezterm")

wezterm.on("gui-startup", function(cmd)
  local _tab, _pane, window = wezterm.mux.spawn_window(cmd or {})
  local active_screen = wezterm.gui.screens().active

  if active_screen.width > 3024 and active_screen.height > 1964 then
    window:gui_window():set_position(1920, 1093) -- bottom right quarter
    local menu_bar_height = 24
    local half_width = active_screen.width / 2
    local half_height = (active_screen.height - menu_bar_height) / 2
    window:gui_window():set_inner_size(half_width, half_height)
  else
    window:gui_window():maximize()
  end
end)
