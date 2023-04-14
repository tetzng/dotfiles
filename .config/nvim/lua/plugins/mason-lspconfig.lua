return {
  "williamboman/mason-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("pluginconfig/mason-lspconfig")
  end,
}
