local scheme = "default"
local scheme_table = {}

if scheme == "rose-pine" then
	scheme_table = {
		pin = true,
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = false,
		opts = {
			styles = {
				transparency = true,
				bold = false,
				italic = false,
			},
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)

			vim.cmd("colorscheme rose-pine")
		end,
	}
elseif scheme == "gruvbox" then
	scheme_table = {
		pin = true,
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		name = "gruvbox",
		lazy = false,
		opts = {
			transparent_mode = true,
		},
		config = function(_, opts)
			require("gruvbox").setup(opts)

			vim.cmd("colorscheme gruvbox")
		end,
	}
else
	scheme_table = {
		"tribela/transparent.nvim",
		event = "VimEnter",
		config = true,
	}
	vim.cmd("colorscheme default")
end

return {
	scheme_table,
	{
		pin = true,
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		lazy = true,
		name = "treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
				auto_install = true,
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
