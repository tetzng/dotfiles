local M = {
  "sidebar-nvim/sidebar.nvim",
  event = "VimEnter",
  opts = {
    disable_default_keybindings = 0,
    bindings = nil,
    open = false,
    side = "left",
    initial_width = 35,
    hide_statusline = true,
    update_interval = 1000,
    sections = { "datetime", "git", "diagnostics", "todos", },
    section_separator = { "", "-----", "" },
    section_title_separator = { "" },
    containers = {
      icon = "",
      attach_shell = "/bin/sh",
      show_all = true,
      interval = 5000,
    },
    datetime = {
      icon = "󰃰",
      format = "%a %b %d, %H:%M",
      clocks = {
        { name = "local" }
      }
    },
    ["git"] = {
      icon = "",
    },
    todos = { ignored_paths = { "~" } },
  },
}

return M
