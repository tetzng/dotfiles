return {
  "petertriho/nvim-scrollbar",
  event = "VeryLazy",
  opts = {
    excluded_filetypes = { "snacks_dashboard" },
    handlers = {
      gitsigns = true,
      search = true,
    }
  }
}
