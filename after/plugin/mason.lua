require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "pyright", "cssls", "html", "jsonls", "tsserver", "marksman" },
})
require("mason-null-ls").setup({
	ensure_installed = { "stylua", "markdownlint", "mypy", "black", "ruff" },
})
