-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Navegar entre los campos del snippet
vim.keymap.set({ "i", "s" }, "<C-j>", function()
  return require("luasnip").jump(1)
end, { desc = "Next snippet field", silent = true })

vim.keymap.set({ "i", "s" }, "<C-k>", function()
  return require("luasnip").jump(-1)
end, { desc = "Prev snippet field", silent = true })
