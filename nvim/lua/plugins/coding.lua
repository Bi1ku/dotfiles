return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<Tab>",
        },
      },
    },
  },

  {
    "m4xshen/hardtime.nvim",
    name = "hardtime",
    event = "InsertEnter",
    lazy = true,
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      max_count = 5,
    },
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    lazy = true,
    name = "autopairs",
    opts = {},
  },
}
