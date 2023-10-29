vim.g.mapleader = "<Space>" 

-- vim keymaps
vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("n", "<c-s>", ":w <CR>")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space><Space>', builtin.find_files, {})

-- nvim-tree 
vim.keymap.set('n', '<C-b>', ':NvimTreeFindFileToggle<CR>')

