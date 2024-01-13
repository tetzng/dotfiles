---@class LazyPluginSpec
local M = {
  "mrcjkb/rustaceanvim",
  version = "^3", -- Recommended
  ft = { "rust" },
  config = function()
    vim.g.rustaceanvim = {
      server = {
        on_attach = function(client, bufnr)
          if client.server_capabilities.inlayHintProvider then
            vim.lsp.inlay_hint.enable(bufnr, true)
          end
        end,
      },
    }
  end,
}

return M
