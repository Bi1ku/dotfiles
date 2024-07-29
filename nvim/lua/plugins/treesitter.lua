return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	name = "treesitter",
	opts = {
		configs = {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
