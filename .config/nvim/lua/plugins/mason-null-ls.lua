return {
  "jayp0521/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "jose-elias-alvarez/null-ls.nvim",
  },
  opts = {
    ensure_installed = nil,
    automatic_installation = true,
    automatic_setup = false,
  },
}
