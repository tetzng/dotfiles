local wezterm = require("wezterm")
local act = wezterm.action

local M = {}

M.leader = { key = ";", mods = "CTRL" }
M.keys = {
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
M.macos_forward_to_ime_modifier_mask = "SHIFT|CTRL"

return M
