return {
	"m4xshen/hardtime.nvim",
	name = "hardtime",
	event = "InsertEnter",
	lazy = true,
	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
	opts = {
		max_count = 5,
	},
}
