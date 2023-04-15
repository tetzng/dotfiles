return {
  "kevinhwang91/nvim-hlslens",
  event = "VimEnter",
  keys = {
    {
      "n",
      "<cmd>execute('normal! ' . v:count1 . 'n')<cr><cmd>lua require('hlslens').start()<cr>",
      noremap = true,
      silent = true,
      desc =
      "nvim-hlslens n"
    },
    {
      "N",
      "<cmd>execute('normal! ' . v:count1 . 'N')<cr><cmd>lua require('hlslens').start()<cr>,",
      noremap = true,
      silent = true,
      desc =
      "nvim-hlslens N"
    },
    {
      "*",
      "*<cmd>lua require('hlslens').start()<cr>",
      noremap = true,
      silent = true,
      desc =
      "nvim-hlslens *"
    },
    {
      "#",
      "#<cmd>lua require('hlslens').start()<cr>",
      noremap = true,
      silent = true,
      desc =
      "nvim-hlslens #"
    },
    {
      "g*",
      "g*<cmd>lua require('hlslens').start()<cr>",
      noremap = true,
      silent = true,
      desc =
      "nvim-hlslens g*"
    },
    {
      "g#",
      "g#<cmd>lua require('hlslens').start()<cr>",
      noremap = true,
      silent = true,
      desc =
      "nvim-hlslens g#"
    },
    {
      "<leader>n",
      "<cmd>noh<cr>",
      noremap = true,
      silent = true,
      desc =
      "no highlights"
    },
  },
  config = true,
}
