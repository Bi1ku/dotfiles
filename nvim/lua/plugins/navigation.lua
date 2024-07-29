return {
	{
		"nvim-telescope/telescope.nvim",
		name = "telescope",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
		opts = {},
		config = function(_, opts)
			require("telescope").setup(opts)
			require("telescope").load_extension("file_browser")

			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<Leader>g", builtin.live_grep)
			vim.keymap.set("n", "<Leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
			vim.keymap.set("n", "<Leader><Leader>", builtin.find_files)
		end,
	},

	{
		"romgrk/barbar.nvim",
		name = "barbar",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			animation = false,
		},
		version = "^1.0.0",
		config = function(_, opts)
			require("barbar").setup(opts)

			vim.keymap.set("n", "<Leader>w", ":BufferClose<CR>")
			vim.keymap.set("n", "<Leader>r", ":BufferRestore<CR>")
			vim.keymap.set("n", "<Leader>p", ":BufferPrevious<CR>")
			vim.keymap.set("n", "<Leader>n", ":BufferNext<CR>")
			vim.keymap.set("n", "<Leader>1", ":BufferGoto 1<CR>")
			vim.keymap.set("n", "<Leader>2", ":BufferGoto 2<CR>")
			vim.keymap.set("n", "<Leader>3", ":BufferGoto 3<CR>")
			vim.keymap.set("n", "<Leader>4", ":BufferGoto 4<CR>")
			vim.keymap.set("n", "<Leader>5", ":BufferGoto 5<CR>")
			vim.keymap.set("n", "<Leader>6", ":BufferGoto 6<CR>")
			vim.keymap.set("n", "<Leader>7", ":BufferGoto 7<CR>")
			vim.keymap.set("n", "<Leader>8", ":BufferGoto 8<CR>")
			vim.keymap.set("n", "<Leader>9", ":BufferGoto 9<CR>")
		end,
	},
}
