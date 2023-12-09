local wezterm = require("wezterm")

wezterm.on("update-right-status", function(window, pane)
  local process_name = pane:get_foreground_process_name()

  if process_name:find("nvim") then
    window:set_config_overrides({ window_padding = { left = 0, right = 0, top = 0, bottom = 0 } })
  else
    window:set_config_overrides({ window_padding = { left = 8, right = 8, top = 8, bottom = 8 } })
  end
end)
