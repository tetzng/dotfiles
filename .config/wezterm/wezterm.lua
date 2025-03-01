local wezterm = require("wezterm")
local appearance = require("appearance")
local fonts = require("fonts")
local keys = require("keys")
local utils = require("utils")
local config = wezterm.config_builder()

require("on")

config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.quit_when_all_windows_are_closed = false
config.window_close_confirmation = "NeverPrompt"

for _, settings in ipairs({
  appearance,
  fonts,
  keys,
}) do
  utils.merge_tables(config, settings)
end

return config
