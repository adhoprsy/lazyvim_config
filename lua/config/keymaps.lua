-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ctrl + q exit nvim
vim.keymap.set("n", "<C-q>", ":qa<CR>", { noremap = true, silent = true })

-- f7 toggle terminal
vim.keymap.set("n", "<F7>", function()
    Snacks.terminal()
end, { desc = "Termnal (cwd)" })

vim.keymap.set("t", "<F7>", "<cmd>close<cr>", { desc = "Hide Termnal" })

vim.keymap.del("n", "<c-/>")
vim.keymap.del("n", "<c-_>")
vim.keymap.del("t", "<C-/>")
vim.keymap.del("t", "<c-_>")

-- comment
vim.keymap.set({ "n", "i", "v" }, "<c-/>", "<cmd>normal gcc<cr>", { desc = "toggle comment" })
