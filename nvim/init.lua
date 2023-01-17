require('keymaps')
require('options')
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  defaults = {
    lazy = true, -- every plugin is lazy-loaded by default
    version = "*", -- try installing the latest stable version for plugins that support semver
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
      lazy = "💤 ",
    },
  },
})

-- lsp
local lsp_config = require('lspconfig')
local mason_null_ls = require('mason-null-ls')

require('lspsaga').setup()
-- require('lsp_signature').setup({ hint_enable = false })
require('fidget').setup()

mason_null_ls.setup({
  ensure_installed = { 'prettier' },
  automatic_installation = true,
})
-- nvim-cmp
local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  enabled = true,
  mapping = cmp.mapping.preset.insert({
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  }),
  formatting = {
    fields = { 'abbr', 'kind', 'menu' },
    format = lspkind.cmp_format({
      mode = 'text',
    }),
  },
})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = 'Find files by Telescope' })
vim.keymap.set("n", "<Leader>f", builtin.live_grep, { desc = 'Grep files by Telescope' })

-- Fern
vim.keymap.set({ 'n' }, '<Leader>e', '<Cmd>Fern . -drawer -toggle<CR>')

-- require('lazy').setup("plugins", lazy_config)
