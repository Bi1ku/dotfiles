return {
	{
		"stevearc/dressing.nvim",
		name = "dressing",
		opts = {},
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		opts = {
			styles = {
				transparency = true,
			},
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)

			vim.cmd("colorscheme rose-pine")
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		name = "lualine",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},
}
