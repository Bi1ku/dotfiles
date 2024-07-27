return {
  {
    "nvim-tree/nvim-tree.lua",
    name = "tree",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {},
  },
  {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup()

      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<Leader>g", builtin.live_grep)
      vim.keymap.set("n", "<Leader><Space>", builtin.find_files)
    end,
  },
}
