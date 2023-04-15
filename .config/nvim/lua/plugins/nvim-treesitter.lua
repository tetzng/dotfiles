return {
  "nvim-treesitter/nvim-treesitter",
  event = "VimEnter",
  build = ":TSUpdate",
  config = function()
    require('nvim-treesitter.configs').setup({
      highlight = {
        enable = true,
      },
    })
  end,
}
