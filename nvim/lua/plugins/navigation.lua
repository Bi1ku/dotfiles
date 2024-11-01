return {
	{
		"nvim-telescope/telescope.nvim",
		name = "telescope",
		lazy = true,
		keys = {
			{ "<leader><space>", ":Telescope find_files<CR>" },
			{ "<C-b>", ":Telescope file_browser path=%:p:h select_buffer=true<CR>" },
			{ "<leader>g", ":lua require('telescope.builtin').live_grep()<CR>" },
			{ "<leader>fb", ":Telescope buffers<CR>" },
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
		opts = {
			pickers = {
				find_files = {
					hidden = true,
					theme = "ivy",
				},
				live_grep = {
					theme = "ivy",
					hidden = true,
				},
			},
			extensions = {
				file_browser = {
					grouped = true,
					hidden = true,
					theme = "ivy",
				},
			},
		},
		config = function(_, opts)
			require("telescope").setup(opts)

			require("telescope").load_extension("file_browser")
		end,
	},

	--	{
	--		"romgrk/barbar.nvim",
	--		version = "*",
	--		name = "barbar",
	--		lazy = true,
	--		event = "BufEnter",
	--		dependencies = {
	--			"lewis6991/gitsigns.nvim",
	--			"nvim-tree/nvim-web-devicons",
	--		},
	--		init = function()
	--			vim.g.barbar_auto_setup = false
	--		end,
	--		opts = {
	--			animation = false,
	--		},
	--		config = function(_, opts)
	--			require("barbar").setup(opts)
	--
	--			local key_opts = { noremap = true, silent = true }
	--
	-- TODO: LAZY LOAD KEYS
	--			vim.keymap.set("n", "<Leader>w", ":BufferClose<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>r", ":BufferRestore<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>p", ":BufferPrevious<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>n", ":BufferNext<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>1", ":BufferGoto 1<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>2", ":BufferGoto 2<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>3", ":BufferGoto 3<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>4", ":BufferGoto 4<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>5", ":BufferGoto 5<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>6", ":BufferGoto 6<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>7", ":BufferGoto 7<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>8", ":BufferGoto 8<CR>", key_opts)
	--			vim.keymap.set("n", "<Leader>9", ":BufferGoto 9<CR>", key_opts)
	--		end,
	--	},

	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function(_, opts)
			local harpoon = require("harpoon")

			harpoon.setup(opts)

			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			vim.keymap.set("n", "<leader>1", function()
				harpoon:list():select(1)
			end)
			vim.keymap.set("n", "<leader>2", function()
				harpoon:list():select(2)
			end)
			vim.keymap.set("n", "<leader>3", function()
				harpoon:list():select(3)
			end)
			vim.keymap.set("n", "<leader>4", function()
				harpoon:list():select(4)
			end)

			vim.keymap.set("n", "<C-S-P>", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<C-S-N>", function()
				harpoon:list():next()
			end)
		end,
	},

	{
		"christoomey/vim-tmux-navigator",
		name = "tmux-navigator",
		lazy = true,
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},
}
