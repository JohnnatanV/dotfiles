return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "▎" },
      change = { text = "▎" },
      delete = { text = "" },
      topdelete = { text = "" },
      changedelete = { text = "▎" },
    },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, lhs, rhs, desc)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
      end

      -- Navegar entre cambios
      map("n", "]g", gs.next_hunk, "Next Git hunk")
      map("n", "[g", gs.prev_hunk, "Prev Git hunk")

      -- Acciones básicas
      map("n", "<leader>gs", gs.stage_hunk, "Stage hunk")
      map("n", "<leader>gr", gs.reset_hunk, "Reset hunk")
      map("n", "<leader>gp", gs.preview_hunk, "Preview hunk")
    end,
  },
}
