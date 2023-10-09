return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			renderer = {
				icons = {
					glyphs = {
						-- git = {
						-- 	unstaged = "U",
						-- 	staged = "✓",
						-- 	unmerged = "",
						-- 	renamed = "R",
						-- 	untracked = "?",
						-- 	deleted = "",
						-- 	ignored = "◌",
						-- },
					},
				},
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
	end,
}
