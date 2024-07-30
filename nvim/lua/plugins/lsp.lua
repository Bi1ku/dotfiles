return {
	{
		"neovim/nvim-lspconfig",
		name = "lspconfig",
		lazy = false,
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"williamboman/mason-lspconfig",
		},
		config = function()
			local configs = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lsps = { "lua_ls", "tsserver", "jdtls" }

			for _, lsp in pairs(lsps) do
				if lsp ~= "lua_ls" then
					configs[lsp].setup({
						capabilities = capabilities,
					})
				end
			end

			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
		end,
	},

	{
		"mfussenegger/nvim-jdtls",
		name = "jdtls",
		lazy = true,
		ft = "java",
	},

	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		name = "mason-tool-installer",
		lazy = false,
		opts = {
			ensure_installed = {
				"java-debug-adapter",
				"java-test",
			},
		},

		{
			"hrsh7th/nvim-cmp",
			name = "nvim-cmp",
			event = "InsertEnter",
			lazy = true,
			dependencies = {
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-cmdline",
				"hrsh7th/cmp-nvim-lsp",
				"L3MON4D3/LuaSnip",
				"saadparwaiz1/cmp_luasnip",
			},
			config = function()
				local cmp = require("cmp")
				local luasnip = require("luasnip")

				cmp.setup({
					snippet = {
						expand = function(args)
							luasnip.lsp_expand(args.body)
						end,
					},

					mapping = cmp.mapping.preset.insert({
						["<C-b>"] = cmp.mapping.scroll_docs(-4),
						["<C-f>"] = cmp.mapping.scroll_docs(4),
						["<C-e>"] = cmp.mapping.abort(),
						["<CR>"] = cmp.mapping.confirm({ select = true }),
					}),

					sources = cmp.config.sources({
						{ name = "buffer" },
						{ name = "nvim_lsp" },
						{ name = "path" },
						{ name = "luasnip" },
						{ name = "cmdline" },
					}),
				})
			end,
		},
	},
}
