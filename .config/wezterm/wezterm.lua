local wezterm = require("wezterm")
local keybinds = require("keybinds")
local config = wezterm.config_builder()

require("on")

config.cell_width = 0.9
config.color_scheme = "tokyonight_moon"
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.font = wezterm.font_with_fallback({
  { family = "Cica" },
  { family = "Cica", assume_emoji_presentation = true },
})
config.font_size = 14
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false
config.line_height = 1.2
config.macos_forward_to_ime_modifier_mask = "SHIFT|CTRL"
config.macos_window_background_blur = 9
config.quit_when_all_windows_are_closed = true
config.window_background_opacity = 0.9
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE | MACOS_FORCE_ENABLE_SHADOW"
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.leader = keybinds.leader
config.keys = keybinds.keys

return config
