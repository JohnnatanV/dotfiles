return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- para que cargue antes que otros plugins
  lazy = false,
  opts = {
    flavour = "mocha", -- cambia a mocha, frappe, latte o macchiato si querés
    transparent_background = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      which_key = true,
      indent_blankline = { enabled = true },
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
