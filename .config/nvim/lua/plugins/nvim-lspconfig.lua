---@class LazyPluginSpec
local M = {
  "neovim/nvim-lspconfig",
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "ruby",
      callback = function()
        vim.lsp.start {
          name = "rubocop",
          cmd = { "bundle", "exec", "rubocop", "--lsp" }
        }
      end,
    })
  end,
}

return M
