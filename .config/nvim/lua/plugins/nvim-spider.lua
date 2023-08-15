return {
  "chrisgrieser/nvim-spider",
  event = "VimEnter",
  config = function()
    require("spider").setup({
      skipInsignificantPunctuation = false,
    })

    vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
    vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
    vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
    vim.keymap.set({ "n", "o", "x" }, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })

    -- NOTE: https://github.com/chrisgrieser/nvim-spider#notes-on-operator-pending-mode
    vim.keymap.set("n", "dw", "de", { remap = true, desc = "delete word" })
    vim.keymap.set("n", "cw", "ce", { remap = true, desc = "change word" })
  end,
}
