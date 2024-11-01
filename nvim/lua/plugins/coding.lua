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

  --  {
  --    "m4xshen/hardtime.nvim",
  --    name = "hardtime",
  --    event = "InsertEnter",
  --    lazy = true,
  --    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  --    opts = {
  --      max_count = 5,
  --    },
  --  },

  --  {
  --    "windwp/nvim-ts-autotag",
  --    name = "autotag",
  --    lazy = true,
  --    event = {
  --      "BufReadPre",
  --      "BufNewFile",
  --    },
  --    opts = {},
  --  },
  --
  --  {
  --    "windwp/nvim-autopairs",
  --    event = {
  --      "BufReadPre",
  --      "BufNewFile",
  --    },
  --    lazy = true,
  --    name = "autopairs",
  --    opts = {},
  --    config = true,
  --  },

  {
    "nvimtools/none-ls.nvim",
    name = "null-ls",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

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
