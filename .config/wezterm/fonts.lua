local wezterm = require("wezterm")

local M = {}

M.font = wezterm.font_with_fallback({
  "UDEV Gothic 35NFLG",
  "FiraCode Nerd Font",
})
M.font_rules = {
  {
    intensity = 'Bold',
    italic = true,
    font = wezterm.font_with_fallback({
      {
        family = 'VictorMono Nerd Font',
        weight = 'Bold',
        style = 'Italic',
      },
      {
        family = 'UDEV Gothic 35NFLG',
        weight = 'Bold',
        style = 'Italic',
      },
    }),
  },
  {
    intensity = 'Half',
    italic = true,
    font = wezterm.font_with_fallback({
      {
        family = 'VictorMono Nerd Font',
        weight = 'DemiBold',
        style = 'Italic',
      },
      {
        family = 'UDEV Gothic 35NFLG',
        weight = 'DemiBold',
        style = 'Italic',
      },
    }),
  },
  {
    intensity = 'Normal',
    italic = true,
    font = wezterm.font_with_fallback({
      {
        family = 'VictorMono Nerd Font',
        style = 'Italic',
      },
      {
        family = 'UDEV Gothic 35NFLG',
        style = 'Italic',
      },
    }),
  },
}
M.cell_width = 0.9
M.font_size = 14
M.line_height = 1.2

return M
