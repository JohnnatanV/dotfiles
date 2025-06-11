return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    opts.sources = {
      nls.builtins.formatting.prettier,
      nls.builtins.diagnostics.eslint_d,
    }
  end,
}
