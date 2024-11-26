---@class LazyPluginSpec
local M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufReadPost",
  ---@class ibl.config
  opts = {
    debounce = 100,
    whitespace = {
      remove_blankline_trail = true,
    },
    exclude = {
      filetypes = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
    },
  },
}

return M
