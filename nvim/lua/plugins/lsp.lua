return {
	{
		"williamboman/mason-lspconfig.nvim",
		name = "mason-lsp",
		opts = {},
	},

	{
		"neovim/nvim-lspconfig",
		name = "lspconfig",
		config = function()
			local configs = require("lspconfig")

			configs.lua_ls.setup({})
		end,
	},
}
