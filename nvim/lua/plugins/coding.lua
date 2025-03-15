return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		name = "copilot",
		event = "InsertEnter",
		opts = {
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<C-e>",
				},
			},
		},
	},

	{
		dir = "~/.config/nvim/lua/custom/cowboy.nvim",
		opts = {
			keys = { "h", "j", "k", "l" },
			thresh = 5,
			delay = 1000,
			disable = { "txt", "md" },
		},
	},

	{
		"nvimtools/none-ls.nvim",
		name = "null-ls",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/prettier.nvim",
		},
		config = function()
			local null_ls = require("null-ls")
			local prettier = require("prettier")
			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

			prettier.setup({
				cli_options = {
					tab_width = 10,
				},
			})

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.clang_format,
					null_ls.builtins.formatting.black,
				},

				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ async = false })
							end,
						})
					end
				end,
			})
		end,
	},
}
