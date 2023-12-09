return {
  "kevinhwang91/nvim-bqf",
  ft = 'qf',
  dependencies = {
    {
      'junegunn/fzf',
      build = "./install --all"
    },
    'nvim-treesitter/nvim-treesitter',
  },
}
