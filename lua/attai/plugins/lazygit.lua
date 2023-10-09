return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymap
		vim.keymap.set({ "n" }, "<leader><leader>", function()
			vim.cmd("LazyGit")
		end, { desc = "Toggle lazygit" })
	end,
}
