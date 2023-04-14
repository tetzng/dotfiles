return {
  "jayp0521/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "jose-elias-alvarez/null-ls.nvim",
  },
  config = function()
    require("pluginconfig/mason-null-ls")
  end,
}
