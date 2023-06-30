local null_ls = require("null-ls")

null_ls.setup({
    sources = {
      -- Markdown
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.formatting.markdownlint,

      -- Python
      null_ls.builtins.diagnostics.ruff,
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.formatting.black,

      -- Lua
      null_ls.builtins.formatting.stylua,
    },
})
