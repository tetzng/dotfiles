---@class LazyPluginSpec
local M = {
  "folke/which-key.nvim",
  event = "VimEnter",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = true,
  config = function()
    local wk = require("which-key")

    wk.setup()

    -- :h ins-completion
    wk.register({
      ["<C-l>"] = 'Whole lines',
      ["<C-n>"] = 'keywords in the current file',
      ["<C-k>"] = 'keywords in dictionary',
      ["<C-t>"] = 'keywords in thesaurus',
      ["<C-i>"] = 'keywords in the current and included files',
      ["<C-]>"] = 'tags',
      ["<C-f>"] = 'file names',
      ["<C-d>"] = 'definitions or macros',
      ["<C-v>"] = 'Vim command-line',
      ["<C-u>"] = 'User defined completion',
      ["<C-o>"] = 'omni completion',
      ["<C-s>"] = 'Spelling suggestions',
      ["<C-z>"] = 'stop completion',
    }, {
      mode = "i",
      prefix = "<C-x>",
    })
  end,
}

return M
