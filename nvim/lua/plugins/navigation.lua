return {
	{
		pin = true,
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
			"nvim-tree/nvim-web-devicons",
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

	{
		"ThePrimeagen/harpoon",
		pin = true,
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function(_, opts)
			local harpoon = require("harpoon")

			harpoon.setup(opts)

			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-m>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			for _, idx in ipairs({ 1, 2, 3, 4, 5, 6, 7, 8, 9 }) do
				vim.keymap.set("n", "<leader>" .. idx, function()
					harpoon:list():select(idx)
				end)
			end

			vim.keymap.set("n", "<leader>p", function()
				harpoon:list():prev()
			end)
			vim.keymap.set("n", "<leader>n", function()
				harpoon:list():next()
			end)
		end,
	},

	{
		"christoomey/vim-tmux-navigator",
		pin = true,
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
