return {
	"m4xshen/hardtime.nvim",
	event = "BufEnter",
	lazy = true,
	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
	opts = {
		max_count = 10,
	},
}
