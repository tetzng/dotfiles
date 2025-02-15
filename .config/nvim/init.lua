if vim.g.vscode then
  require("vscode-neovim/keymaps")
  vim.o.clipboard = "unnamedplus" -- sync with system clipboard
else
  require("keymaps")
  require("options")
  if vim.g.neovide then
    -- vim.o.guifont = "UDEV Gothic 35LGNF:h16"
    vim.g.neovide_input_ime = true
    vim.g.neovide_transparency = 0.85
    vim.g.neovide_floating_corner_radius = 0.3

    vim.g.neovide_padding_top = 4
    vim.g.neovide_padding_bottom = 4
    vim.g.neovide_padding_right = 4
    vim.g.neovide_padding_left = 4
  end

  -- lazy.nvim
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
    },
    concurrency = 100,
    ui = {
      border = "rounded",
    }
  }

  require("lazy").setup(plugins, lazyconfig)
end
