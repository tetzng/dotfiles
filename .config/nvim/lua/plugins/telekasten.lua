return {
  "renerocksai/telekasten.nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-telescope/telescope.nvim"
  },
  opts = {
    home = vim.fn.expand("~/dev/notes"),
  },
}
