return {
  "echasnovski/mini.indentscope",
  version = false, -- wait till new 0.7.0 release to put it back on semver
  event = "BufReadPre",
  opts = {
    symbol = "▏",
    options = {
      border = 'both',
      indent_at_cursor = false,
      try_as_border = true
    },
  },
  config = function(_, opts)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
    require("mini.indentscope").setup(opts)
  end,
}
