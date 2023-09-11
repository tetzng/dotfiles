vim.g.mapleader = " "

vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set("n", "<leader>t", ":tabnew<CR>", { silent = true, desc = "open new tab" })
vim.keymap.set("n", "gr", "gT", { silent = true })

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>")
vim.keymap.set("n", "gf", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>")
vim.keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>")
vim.keymap.set("n", "gn", "<cmd>lua vim.lsp.buf.rename()<CR>")
vim.keymap.set("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>")

vim.keymap.set("i", "<C-h>", "<BS>", { silent = true })
vim.keymap.set("i", "<C-a>", "<Home>", { silent = true })
vim.keymap.set("i", "<C-e>", "<End>", { silent = true })
vim.keymap.set("i", "<C-b>", "<Left>", { silent = true })
vim.keymap.set("i", "<C-f>", "<Right>", { silent = true })

vim.keymap.set("c", "<C-a>", "<Home>")
vim.keymap.set("c", "<C-e>", "<End>")
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<C-f>", "<Right>")
