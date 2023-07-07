local lualine = require("lualine")

lualine.setup({
	options = {
		disabled_filetypes = {
			"NvimTree",
			"packer",
		},
	},
})
