vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ff", "<cmd>lua require('vscode-neovim').action('workbench.action.findInFiles')<CR>",
  { silent = true })
vim.keymap.set("n", "<leader>e",
  "<cmd>lua require('vscode-neovim').action('workbench.action.toggleSidebarVisibility')<CR>", { silent = true })
vim.keymap.set("n", "<leader>fp", "<cmd>lua require('vscode-neovim').action('workbench.action.quickOpen')<CR>>",
  { silent = true })
vim.keymap.set("i", "<C-j>", "<Nop>", { silent = true })
vim.keymap.set("n", "<C-w><C-h>", "<Nop>", { silent = true })
vim.keymap.set("n", "<C-w><C-j>", "<Nop>", { silent = true })
vim.keymap.set("n", "<C-w><C-k>", "<Nop>", { silent = true })
vim.keymap.set("n", "<C-w><C-l>", "<Nop>", { silent = true })
vim.keymap.set("x", "<C-w><C-h>", "<Nop>", { silent = true })
vim.keymap.set("x", "<C-w><C-j>", "<Nop>", { silent = true })
vim.keymap.set("x", "<C-w><C-k>", "<Nop>", { silent = true })
vim.keymap.set("x", "<C-w><C-l>", "<Nop>", { silent = true })
