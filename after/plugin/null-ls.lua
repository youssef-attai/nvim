local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.diagnostics.eslint,
        -- null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.code_actions.eslint,
        -- null_ls.builtins.code_actions.refactoring,
        null_ls.builtins.diagnostics.php,
        null_ls.builtins.formatting.pint
    },
})
