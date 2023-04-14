return {
  "nvim-lua/telescope.nvim",
  tag = "0.1.1",
  event = "VimEnter",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("pluginconfig/telescope")
  end,
}
