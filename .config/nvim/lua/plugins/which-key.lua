---@class LazyPluginSpec
local M = {
  "folke/which-key.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  ---@class wk.Opts
  opts = {},
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

return M
