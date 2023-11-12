---@class LazyPluginSpec
local M = {
  "gorbit99/codewindow.nvim",
  event = "BufReadPre",
  config = function()
    local codewindow = require("codewindow")
    codewindow.setup()
    vim.keymap.set("n", "<leader>mf", codewindow.toggle_focus, { desc = "Toggle minimap focus" })
    vim.keymap.set("n", "<leader>mm", codewindow.toggle_minimap, { desc = "Toggle minimap" })
  end,
}

return M
