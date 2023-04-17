return {
  "jayp0521/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "jose-elias-alvarez/null-ls.nvim",
  },
  opts = {
    ensure_installed = { "prettier" },
    automatic_installation = false,
    automatic_setup = true,
  },
}
