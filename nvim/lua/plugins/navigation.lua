return {
  {
    "nvim-telescope/telescope.nvim",
    name = "telescope",
    lazy = true,
    keys = {
      { "<leader><space>", ":Telescope find_files<CR>" },
      { "<C-b>",           ":Telescope file_browser path=%:p:h select_buffer=true<CR>" },
      { "<leader>g",       ":Telescope live_grep<CR>" },
    },
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
    opts = {
      pickers = {
        find_files = {
          theme = "ivy",
        },
      },
      extensions = {
        file_browser = {
          theme = "ivy",
          grouped = true,
        },
      },
    },
    config = function(_, opts)
      require("telescope").setup(opts)

      require("telescope").load_extension("file_browser")
    end,
  },

  {
    "romgrk/barbar.nvim",
    version = "*",
    name = "barbar",
    lazy = true,
    event = "BufEnter",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      animation = false,
    },
    config = function(_, opts)
      require("barbar").setup(opts)

      local key_opts = { noremap = true, silent = true }

      vim.keymap.set("n", "<Leader>w", ":BufferClose<CR>", key_opts)
      vim.keymap.set("n", "<Leader>r", ":BufferRestore<CR>", key_opts)
      vim.keymap.set("n", "<Leader>p", ":BufferPrevious<CR>", key_opts)
      vim.keymap.set("n", "<Leader>n", ":BufferNext<CR>", key_opts)
      vim.keymap.set("n", "<Leader>1", ":BufferGoto 1<CR>", key_opts)
      vim.keymap.set("n", "<Leader>2", ":BufferGoto 2<CR>", key_opts)
      vim.keymap.set("n", "<Leader>3", ":BufferGoto 3<CR>", key_opts)
      vim.keymap.set("n", "<Leader>4", ":BufferGoto 4<CR>", key_opts)
      vim.keymap.set("n", "<Leader>5", ":BufferGoto 5<CR>", key_opts)
      vim.keymap.set("n", "<Leader>6", ":BufferGoto 6<CR>", key_opts)
      vim.keymap.set("n", "<Leader>7", ":BufferGoto 7<CR>", key_opts)
      vim.keymap.set("n", "<Leader>8", ":BufferGoto 8<CR>", key_opts)
      vim.keymap.set("n", "<Leader>9", ":BufferGoto 9<CR>", key_opts)
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    name = "tmux-navigator",
    lazy = true,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
}
