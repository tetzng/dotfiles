return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  keys = {
    { "<leader>bl", "<cmd>:BufferLineCycleNext<cr>", noremap = true, silent = true, desc = "Navigate next buffer" },
    { "<leader>bh", "<cmd>:BufferLineCyclePrev<cr>", noremap = true, silent = true, desc = "Navigate previous buffer" },
    { "<leader>bd", "<cmd>:BufferLineCloseLeft<cr>", noremap = true, silent = true, desc = "Close all visible buffers to the left of the current buffer" },
    { "<leader>bD", "<cmd>:BufferLineCloseRight<cr>", noremap = true, silent = true, desc = "Close all visible buffers to the right of the current buffer" },
  },
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
      buffer_close_icon = "",
    },
  },
}
