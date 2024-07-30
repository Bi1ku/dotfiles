return {
  {
    "stevearc/dressing.nvim",
    name = "dressing",
    opts = {},
    lazy = true,
    event = "BufEnter",
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    lazy = false,
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
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
}
