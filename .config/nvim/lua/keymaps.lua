vim.g.mapleader = " "

vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "<leader>t", ":tabnew<CR>", { silent = true, desc = 'open new tab' })
vim.keymap.set("n", "gr", "gT", { silent = true })
