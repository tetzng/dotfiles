if vim.g.vscode then
  require("vscode/keymaps")
  vim.o.clipboard = "unnamedplus" -- sync with system clipboard
else
  require("keymaps")
  require("options")
  if vim.g.neovide then
    -- vim.o.guifont = "UDEV Gothic 35LGNF:h14" -- text below applies for VimScript
    vim.g.neovide_input_ime = true
    vim.g.neovide_transparency = 0.9
  end

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
  vim.opt.runtimepath:prepend(lazypath)

  ---@type LazySpec
  local plugins = {
    { import = "plugins" },
  }

  ---@type LazyConfig
  local lazyconfig = {
    defaults = {
      lazy = true,
      -- version = "*",
    },
    concurrency = 100,
  }

  require("lazy").setup(plugins, lazyconfig)
end
