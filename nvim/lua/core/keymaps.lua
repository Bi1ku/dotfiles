vim.g.mapleader = " "

vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("n", "<C-s>", ":w <CR>")
vim.keymap.set("n", "<tab>", ">>")

vim.keymap.set({ "n", "v" }, "<S-e>", "$")
vim.keymap.set({ "n", "v" }, "<S-b>", "0")
vim.keymap.set({ "n", "v" }, "<C-u>", "{")
vim.keymap.set({ "n", "v" }, "<C-d>", "}")
vim.keymap.set({ "n", "v" }, "}", "<C-d>")
vim.keymap.set({ "n", "v" }, "{", "<C-u>")
vim.keymap.set({ "n", "v" }, "<C-u>", "{")
vim.keymap.set({ "n", "v" }, "<C-d>", "}")
vim.keymap.set({ "n", "v" }, "}", "<C-d>")
vim.keymap.set({ "n", "v" }, "{", "<C-u>")
