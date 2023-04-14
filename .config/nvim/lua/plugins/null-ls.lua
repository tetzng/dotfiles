return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("pluginconfig/null-ls")
  end,
}
