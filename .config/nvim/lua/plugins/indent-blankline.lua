---@class LazyPluginSpec
local M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufReadPost",
  opts = {
    debounce = 100,
    indent = {
      char = "▏",
    },
    exclude = {
      filetypes = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
    },
  },
}

return M
