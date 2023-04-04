require("keymaps")
require("options")

if vim.g.vscode then
  require("vscode/keymaps")
else
  -- lazy.nvim
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)

  require("lazy").setup({
      spec = {
          { import = "plugins" },
      },
      defaults = {
          lazy = true,
          -- version = "*",
      },
      ui = {
          icons = {
              cmd = "⌘",
              config = "🛠",
              event = "📅",
              ft = "📂",
              init = "⚙",
              keys = "🗝",
              plugin = "🔌",
              runtime = "💻",
              source = "📄",
              start = "🚀",
              task = "📌",
              lazy = "󿦱",
          },
      },
  })
end
