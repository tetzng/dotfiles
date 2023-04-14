return {
  "nvim-neo-tree/neo-tree.nvim",
  event = "VimEnter",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-tree/nvim-web-devicons",
      config = function()
        require("nvim-web-devicons").setup({
          override = {
            ts = {
              icon = "ﯤ",
              color = "#3178C6",
            },
          },
        })
      end,
    },
    "MunifTanjim/nui.nvim",
    {
      -- only needed if you want to use the commands with "_with_window_picker" suffix
      "s1n7ax/nvim-window-picker",
      -- tag = "v1.*",
      config = function()
        require("window-picker").setup({
          autoselect_one = true,
          include_current = false,
          filter_rules = {
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { "neo-tree", "neo-tree-popup", "notify" },
              -- if the buffer type is one of following, the window will be ignored
              buftype = { "terminal", "quickfix" },
            },
          },
          other_win_hl_color = "#e35e4f",
        })
      end,
    },
  },
  config = function()
    require("pluginconfig/neo-tree")
  end,
}
