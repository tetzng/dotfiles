return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
  lazy = true,
  init = function()
    vim.ui.select = function(...)
      require("lazy").load({ plugins = { "dressing.nvim" } })
      return vim.ui.select(...)
    end
  end,
  config = true,
}
