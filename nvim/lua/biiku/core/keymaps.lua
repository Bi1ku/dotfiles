vim.g.mapleader = "<Space>" 

----------------
-- VIM KEYMAPS
----------------

vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("n", "<c-s>", ":w <CR>")

-------------
-- PLUGINS
-------------

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space><Space>', builtin.find_files, {})

-- Nvim-tree 
vim.keymap.set('n', '<C-b>', ':NvimTreeFindFileToggle<CR>')

