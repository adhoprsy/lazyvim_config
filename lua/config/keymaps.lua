-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local del = vim.keymap.del

-- ctrl + q exit nvim
set("n", "<C-q>", ":qa<CR>", { noremap = true, silent = true })

-- f7 toggle terminal
set("n", "<F7>", function()
  Snacks.terminal()
end, { desc = "Termnal (cwd)" })

set("t", "<F7>", "<cmd>close<cr>", { desc = "Hide Termnal" })

del("n", "<c-/>")
del("n", "<c-_>")
del("t", "<C-/>")
del("t", "<c-_>")

-- comment
set({ "n", "i", "v" }, "<c-/>", "<cmd>normal gcc<cr>", { desc = "toggle comment" })
