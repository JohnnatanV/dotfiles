return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Buscar archivos" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Buscar texto (grep)" },
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { width = 0.9 },
    },
  },
}
