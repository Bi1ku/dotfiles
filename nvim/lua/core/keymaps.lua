vim.g.mapleader = " "

vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("n", "<C-s>", ":w <CR>")
vim.keymap.set("n", "<tab>", ">>")

vim.keymap.set({ "n", "v" }, "<S-e>", "$")
vim.keymap.set({ "n", "v" }, "<S-b>", "0")
vim.keymap.set({ "n", "v" }, "<C-u>", "{")
vim.keymap.set({ "n", "v" }, "<C-d>", "}")
vim.keymap.set({ "n", "v" }, "<C-u>", "{")
vim.keymap.set({ "n", "v" }, "<C-d>", "}")
vim.keymap.set({ "n", "v" }, "}", "<C-d>")
vim.keymap.set({ "n", "v" }, "{", "<C-u>")

vim.keymap.set("n", "–", ":split <CR>") -- alt + -
vim.keymap.set("n", "«", ":vsplit <CR>") -- alt + \

vim.keymap.set("n", "ø", ":vertical resize -10<CR>") -- alt + o
vim.keymap.set("n", "π", ":vertical resize +10<CR>") -- alt + p

vim.keymap.set("n", "gl", ":lua vim.diagnostic.open_float()<CR>")
