local wezterm = require 'wezterm'
local config = {}

config.font = wezterm.font_with_fallback({
        { family = "Cica" },
        { family = "Cica", assume_emoji_presentation = true },
    })
config.font_size = 16.0
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }
config.color_scheme = 'tokyonight_storm'
config.window_close_confirmation = "NeverPrompt"
config.window_background_opacity = 0.9

-- bind prefix like tmux
config.leader = { key = ";", mods = "CTRL" }

config.keys = {
    -- split pane
    { key = "%",          mods = "LEADER",      action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
    { key = "\"",         mods = "LEADER",      action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
    -- move pane
    { key = "h",          mods = "LEADER",      action = wezterm.action { ActivatePaneDirection = "Left" } },
    { key = "j",          mods = "LEADER",      action = wezterm.action { ActivatePaneDirection = "Down" } },
    { key = "k",          mods = "LEADER",      action = wezterm.action { ActivatePaneDirection = "Up" } },
    { key = "l",          mods = "LEADER",      action = wezterm.action { ActivatePaneDirection = "Right" } },
    -- close pane
    { key = "x",          mods = "LEADER",      action = wezterm.action { CloseCurrentPane = { confirm = true } } },
    -- new tab
    { key = "t",          mods = "LEADER",      action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
    { key = "c",          mods = "LEADER",      action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
    -- close tab
    { key = "w",          mods = "LEADER",      action = wezterm.action { CloseCurrentTab = { confirm = true } } },
    -- move tab
    { key = "LeftArrow",  mods = "LEADER",      action = wezterm.action { ActivateTabRelative = -1 } },
    { key = "RightArrow", mods = "LEADER",      action = wezterm.action { ActivateTabRelative = 1 } },
    { key = "H",          mods = "LEADER",      action = wezterm.action { ActivateTabRelative = -1 } },
    { key = "L",          mods = "LEADER",      action = wezterm.action { ActivateTabRelative = 1 } },
    { key = "1",          mods = "LEADER",      action = wezterm.action { ActivateTab = 0 } },
    { key = "2",          mods = "LEADER",      action = wezterm.action { ActivateTab = 1 } },
    { key = "3",          mods = "LEADER",      action = wezterm.action { ActivateTab = 2 } },
    { key = "4",          mods = "LEADER",      action = wezterm.action { ActivateTab = 3 } },
    { key = "5",          mods = "LEADER",      action = wezterm.action { ActivateTab = 4 } },
    { key = "6",          mods = "LEADER",      action = wezterm.action { ActivateTab = 5 } },
    { key = "7",          mods = "LEADER",      action = wezterm.action { ActivateTab = 6 } },
    { key = "8",          mods = "LEADER",      action = wezterm.action { ActivateTab = 7 } },
    { key = "9",          mods = "LEADER",      action = wezterm.action { ActivateTab = 8 } },
    { key = "0",          mods = "LEADER",      action = wezterm.action { ActivateTab = 9 } },
    -- zoom pane
    { key = "z",          mods = "LEADER",      action = wezterm.action.TogglePaneZoomState },
    -- search
    { key = "f",          mods = "LEADER",      action = wezterm.action { Search = { CaseInSensitiveString = "" } } },
    -- copy mode
    { key = "v",          mods = "LEADER",      action = wezterm.action.ActivateCopyMode },
    -- activate command palette
    { key = "p",          mods = "LEADER|CTRL", action = wezterm.action.ActivateCommandPalette },
    -- in copymode, open url with browser
    { key = "o",          mods = "LEADER",      action = wezterm.action.OpenLinkAtMouseCursor },
    -- open url with browser
    {
        key = "o",
        mods = "LEADER|CTRL",
        action = wezterm.action.QuickSelectArgs {
            label = 'open url',
            patterns = {
                'https?://\\S+',
            },
            action = wezterm.action_callback(function(window, pane)
              local url = window:get_selection_text_for_pane(pane)
              wezterm.log_info('opening: ' .. url)
              wezterm.open_with(url)
            end),
        },
    },
}

return config
