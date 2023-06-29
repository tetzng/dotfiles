if vim.g.vscode then
  require("vscode/keymaps")
  vim.opt.clipboard = "unnamedplus" -- sync with system clipboard
else
  require("keymaps")
  require("options")

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
    concurrency = 100,
  })
end
