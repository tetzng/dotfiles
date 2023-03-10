local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font_with_fallback({
  { family = "Cica" },
  { family = "Cica", assume_emoji_presentation = true },
})
config.default_prog = { '/usr/local/bin/fish', '-l' }
config.color_scheme = 'tokyonight_storm'

return config
