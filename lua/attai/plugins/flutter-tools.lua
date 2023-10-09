return {
	"akinsho/flutter-tools.nvim",
	ft = { "dart" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		"stevearc/dressing.nvim", -- optional for vim.ui.select
	},
	config = function()
		-- import cmp-nvim-lsp plugin
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local on_attach = require("attai.utils.on_attach")
		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		require("flutter-tools").setup({
			lsp = {
				capabilities = capabilities,
				on_attach = function(client, bufnr)
					on_attach(client)

					local keymap = vim.keymap -- for conciseness
					local opts = { noremap = true, silent = true }
					opts.buffer = bufnr

					-- FlutterRun using alt+R
					opts.desc = "Flutter Run"
					keymap.set("n", "<A-R>", "<Cmd>FlutterRun<CR>", opts)

					-- FlutterReload using alt+r
					opts.desc = "Flutter Reload"
					keymap.set("n", "<A-r>", "<Cmd>FlutterReload<CR>", opts)

					-- FlutterRestart using alt+r+e
					opts.desc = "Flutter Restart"
					keymap.set("n", "<A-r><A-e>", "<Cmd>FlutterRestart<CR>", opts)
				end,
			},
		})
	end,
}
