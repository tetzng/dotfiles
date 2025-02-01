local wezterm = require("wezterm")
local M = {}

M.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}
M.window_decorations = "RESIZE | MACOS_FORCE_ENABLE_SHADOW"
M.window_background_opacity = 0.9
M.macos_window_background_blur = 9

-- tab bar
M.hide_tab_bar_if_only_one_tab = true
M.tab_bar_at_bottom = true
M.use_fancy_tab_bar = false
M.show_new_tab_button_in_tab_bar = false
M.tab_max_width = 32

local function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

local function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'Catppuccin Frappe'
  else
    return 'Catppuccin Latte'
  end
end

M.color_scheme = scheme_for_appearance(get_appearance())

return M
