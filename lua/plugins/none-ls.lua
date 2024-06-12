-- Code formatting
return {
  "nvimtools/none-ls.nvim",
  dependencies = {"nvimtools/none-ls-extras.nvim",},
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- LUA
        null_ls.builtins.formatting.stylua,
        -- JavaScript / HTML / CSS
        null_ls.builtins.formatting.prettier,
        --null_ls.builtins.diagnostics.eslint_d,
        --require("none-ls.diagnostics.eslint_d"),
        -- Pyton
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
      },
    })
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
