---@class LazyPluginSpec
return {
  "folke/sidekick.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  ---@class sidekick.Config
  opts = {
    cli = {
      win = {
        keys = {
          buffers       = { "<c-b>", "buffers", mode = "nt", desc = "open buffer picker" },
          files         = { "<c-f>", "files", mode = "nt", desc = "open file picker" },
          hide_n        = { "q", "hide", mode = "n", desc = "hide the terminal window" },
          hide_ctrl_q   = { "<c-q>", "hide", mode = "n", desc = "hide the terminal window" },
          hide_ctrl_dot = { "<c-.>", "hide", mode = "nt", desc = "hide the terminal window" },
          hide_ctrl_z   = { "<c-z>", "hide", mode = "nt", desc = "hide the terminal window" },
          prompt        = { "<c-p>", "prompt", mode = "t", desc = "insert prompt or context" },
          stopinsert    = { "<c-q>", "stopinsert", mode = "t", desc = "enter normal mode" },
          -- Navigate windows in terminal mode. Only active when:
          -- * layout is not "float"
          -- * there is another window in the direction
          -- With the default layout of "right", only `<c-h>` will be mapped
          -- nav_left      = { "<c-h>", "nav_left"  , expr = true, desc = "navigate to the left window" },
          nav_left      = nil,
          nav_down      = nil,
          nav_up        = nil,
          nav_right     = nil,
        },
      },
      -- mux = {
      --   backend = "zellij",
      --   enabled = true,
      -- },
    },
  },
  keys = {
    {
      "<leader>aa",
      function()
        require("sidekick.cli").toggle({ name = "codex", focus = true })
      end,
      mode = { "n", "v" },
      desc = "Sidekick: Toggle",
    },
    {
      "<leader>ab",
      function()
        require("sidekick.cli").toggle({ name = "buffer", focus = true })
      end,
      desc = "Sidekick: Buffer",
    },
    {
      "<leader>ar",
      function()
        require("sidekick.cli").toggle({ name = "recent", focus = true })
      end,
      desc = "Sidekick: Recent",
    },
    {
      "<leader>as",
      function()
        require("sidekick.cli").toggle({ name = "symbols", focus = true })
      end,
      desc = "Sidekick: Symbols",
    },
  },
}
