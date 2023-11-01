vim.g.mapleader = " "

-- vim keymaps
vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("n", "<c-s>", ":w <CR>")
vim.keymap.set("n", "<tab>", ">>")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Leader><Space>", builtin.find_files, {})

-- nvim-tree
vim.keymap.set("n", "<C-b>", ":NvimTreeFindFileToggle<CR>")
