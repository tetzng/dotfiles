---@class LazyPluginSpec
local M = {
  "linrongbin16/gitlinker.nvim",
  cmd = "GitLink",
  opts = {},
  keys = {
    { "<leader>gy", "<cmd>GitLink<cr>",  mode = { "n", "v" }, desc = "Yank git link" },
    { "<leader>go", "<cmd>GitLink!<cr>", mode = { "n", "v" }, desc = "Open git link" },
  },
}

return M
