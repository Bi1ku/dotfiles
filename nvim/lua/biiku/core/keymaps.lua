vim.g.mapleader = " "

-- vim keymaps
vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("n", "<C-s>", ":w <CR>")
vim.keymap.set("n", "<tab>", ">>")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Leader>g", builtin.live_grep)
vim.keymap.set("n", "<Leader><Space>", builtin.find_files)

-- nvim-tree
vim.keymap.set("n", "<C-b>", ":NvimTreeFindFileToggle<CR>")

-- barbar
vim.keymap.set("n", "<Leader>p", "<Cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<Leader>n", "<Cmd>BufferNext<CR>")
vim.keymap.set("n", "<Leader>1", "<Cmd>BufferGoto 1<CR>")
vim.keymap.set("n", "<Leader>2", "<Cmd>BufferGoto 2<CR>")
vim.keymap.set("n", "<Leader>3", "<Cmd>BufferGoto 3<CR>")
vim.keymap.set("n", "<Leader>4", "<Cmd>BufferGoto 4<CR>")
vim.keymap.set("n", "<Leader>5", "<Cmd>BufferGoto 5<CR>")
vim.keymap.set("n", "<Leader>6", "<Cmd>BufferGoto 6<CR>")
vim.keymap.set("n", "<Leader>7", "<Cmd>BufferGoto 7<CR>")
vim.keymap.set("n", "<Leader>8", "<Cmd>BufferGoto 8<CR>")
vim.keymap.set("n", "<Leader>9", "<Cmd>BufferGoto 9<CR>")
