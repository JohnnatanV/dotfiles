-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Forzar guicursor después de cargar todo
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    vim.opt.guicursor = {
      "n-v-c:block",
      "i-ci-ve:ver25",
      "r-cr:hor20",
      "o:hor50",
      "a:blinkwait700-blinkoff400-blinkon250",
    }
  end,
})


-- Eliminar fondo en Normal y otros
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.cmd [[
      hi Normal guibg=NONE ctermbg=NONE
      hi NormalNC guibg=NONE ctermbg=NONE
      hi NormalFloat guibg=NONE ctermbg=NONE
      hi FloatBorder guibg=NONE ctermbg=NONE
      hi VertSplit guibg=NONE ctermbg=NONE
      hi TelescopeNormal guibg=NONE
      hi TelescopeBorder guibg=NONE
    ]]
  end,
})
