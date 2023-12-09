return {
  "renerocksai/telekasten.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim"
  },
  opts = {
    home = vim.fn.expand("~/dev/notes"),
  },
  keys = {
    { "<leader>tkf", "<cmd> Telekasten find_notes<cr>",   desc = "Telekasten find_notes" },
    { "<leader>tks", "<cmd> Telekasten search_notes<cr>", desc = "Telekasten search_notes" },
    { "<leader>tkt", "<cmd> Telekasten goto_today<cr>",   desc = "Telekasten goto_today" },
  },
}
