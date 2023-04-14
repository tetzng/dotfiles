return {
  "vim-skk/skkeleton",
  dependencies = {
    "vim-denops/denops.vim",
  },
  event = "InsertEnter",
  config = function()
    vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(skkeleton-toggle)", {})
    vim.api.nvim_set_keymap("c", "<C-j>", "<Plug>(skkeleton-toggle)", {})
  end,
}
