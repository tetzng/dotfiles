local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

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

config.font = wezterm.font_with_fallback({
  { family = "Cica" },
  { family = "Cica", assume_emoji_presentation = true },
})
config.font_size = 14
config.cell_width = 0.9
config.line_height = 1.2
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.color_scheme = "tokyonight_moon"
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.9

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_decorations = "RESIZE"

config.macos_forward_to_ime_modifier_mask = "SHIFT|CTRL"

-- bind prefix like tmux
config.leader = { key = ";", mods = "CTRL" }

config.keys = {
  -- split pane
  {
    key = "%",
    mods = "LEADER",
    action = act({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
  },
  {
    key = '"',
    mods = "LEADER",
    action = act({ SplitVertical = { domain = "CurrentPaneDomain" } }),
  },
  -- move pane
  { key = "h",          mods = "LEADER",      action = act({ ActivatePaneDirection = "Left" }) },
  { key = "j",          mods = "LEADER",      action = act({ ActivatePaneDirection = "Down" }) },
  { key = "k",          mods = "LEADER",      action = act({ ActivatePaneDirection = "Up" }) },
  { key = "l",          mods = "LEADER",      action = act({ ActivatePaneDirection = "Right" }) },
  -- close pane
  { key = "x",          mods = "LEADER",      action = act({ CloseCurrentPane = { confirm = true } }) },
  -- new tab
  { key = "t",          mods = "LEADER",      action = act({ SpawnTab = "CurrentPaneDomain" }) },
  { key = "c",          mods = "LEADER",      action = act({ SpawnTab = "CurrentPaneDomain" }) },
  -- close tab
  { key = "w",          mods = "LEADER",      action = act({ CloseCurrentTab = { confirm = true } }) },
  -- move tab
  { key = "LeftArrow",  mods = "LEADER",      action = act({ ActivateTabRelative = -1 }) },
  { key = "RightArrow", mods = "LEADER",      action = act({ ActivateTabRelative = 1 }) },
  { key = "H",          mods = "LEADER",      action = act({ ActivateTabRelative = -1 }) },
  { key = "L",          mods = "LEADER",      action = act({ ActivateTabRelative = 1 }) },
  { key = "1",          mods = "LEADER",      action = act({ ActivateTab = 0 }) },
  { key = "2",          mods = "LEADER",      action = act({ ActivateTab = 1 }) },
  { key = "3",          mods = "LEADER",      action = act({ ActivateTab = 2 }) },
  { key = "4",          mods = "LEADER",      action = act({ ActivateTab = 3 }) },
  { key = "5",          mods = "LEADER",      action = act({ ActivateTab = 4 }) },
  { key = "6",          mods = "LEADER",      action = act({ ActivateTab = 5 }) },
  { key = "7",          mods = "LEADER",      action = act({ ActivateTab = 6 }) },
  { key = "8",          mods = "LEADER",      action = act({ ActivateTab = 7 }) },
  { key = "9",          mods = "LEADER",      action = act({ ActivateTab = 8 }) },
  { key = "0",          mods = "LEADER",      action = act({ ActivateTab = 9 }) },
  -- zoom pane
  { key = "z",          mods = "LEADER",      action = act.TogglePaneZoomState },
  -- search
  { key = "f",          mods = "LEADER",      action = act({ Search = { CaseInSensitiveString = "" } }) },
  -- copy mode
  { key = "v",          mods = "LEADER",      action = act.ActivateCopyMode },
  -- activate command palette
  { key = "p",          mods = "LEADER|CTRL", action = act.ActivateCommandPalette },
  -- in copymode, open url with browser
  { key = "o",          mods = "LEADER",      action = act.OpenLinkAtMouseCursor },
  -- open url with browser
  {
    key = "o",
    mods = "LEADER|CTRL",
    action = act.QuickSelectArgs({
      label = "open url",
      patterns = {
        "https?://\\S+",
      },
      action = wezterm.action_callback(function(window, pane)
        local url = window:get_selection_text_for_pane(pane)
        wezterm.log_info("opening: " .. url)
        wezterm.open_with(url)
      end),
    }),
  },
}

return config
