return {
  "rose-pine/neovim",
  name = "rose-pine",
  opts = {
    styles = {
      transparency = false,
    },
  },
  config = function()
    vim.cmd("colorscheme rose-pine")
  end,
}
