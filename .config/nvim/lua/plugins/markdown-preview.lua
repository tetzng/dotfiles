return {
  "iamcco/markdown-preview.nvim",
  event = "VimEnter",
  build = function() vim.fn["mkdp#util#install"]() end,
}
