---@class LazyPluginSpec
local M = {
  "NeogitOrg/neogit",
  event = "BufReadPre",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = true,
}

return M
