vim.g.mapleader = " "

local function visual_normal_keymap(shortcut, command)
	vim.keymap.set("n", shortcut, command)
	vim.keymap.set("v", shortcut, command)
end

vim.keymap.set("i", "kj", "<ESC>")
vim.keymap.set("n", "<C-s>", ":w <CR>")
vim.keymap.set("n", "<tab>", ">>")

visual_normal_keymap("<S-e>", "$")
visual_normal_keymap("<S-b>", "0")
visual_normal_keymap("<C-u>", "{")
visual_normal_keymap("<C-d>", "}")
visual_normal_keymap("}", "<C-d>")
visual_normal_keymap("{", "<C-u>")
visual_normal_keymap("<C-u>", "{")
visual_normal_keymap("<C-d>", "}")
visual_normal_keymap("}", "<C-d>")
visual_normal_keymap("{", "<C-u>")
