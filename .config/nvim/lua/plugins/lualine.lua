return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
  event = "VeryLazy",
  config = function()
    require("pluginconfig/lualine")
  end,
}
