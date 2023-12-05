---@class LazyPluginSpec
local M = {
  "NeogitOrg/neogit",
  event = "VimEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim",        -- optional
    "ibhagwan/fzf-lua",              -- optional
  },
  config = true,
}

return M
