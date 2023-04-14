return {
  "akinsho/nvim-bufferline.lua",
  event = "VeryLazy",
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      always_show_bufferline = false,
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
    },
  },
}
