return {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufReadPost",
  opts = {
    char                 = "▏",
    context_char         = "▏",
    filetype_exclude     = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
    show_current_context = false -- delegated to mini.indentscope
  },
}
