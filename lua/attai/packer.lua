-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use("nvim-lua/plenary.nvim")

  use({
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  })

  use({
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup()
    end,
  })

  use({
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup()
    end,
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })

  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  })

  use({
    "williamboman/mason.nvim",
    run = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  })

  use("neovim/nvim-lspconfig")

  use("hrsh7th/nvim-cmp")

  use("L3MON4D3/LuaSnip")

  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  })

  use("saadparwaiz1/cmp_luasnip")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")

  use({
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  })

  use({
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup()
    end,
  })

  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("telescope").setup()
    end,
  })

  use({
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  })

  use("nvim-lualine/lualine.nvim")

  use("jose-elias-alvarez/null-ls.nvim")

  use("github/copilot.vim")

  use({
    "akinsho/flutter-tools.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
  })

  -- Fugitive
  use({
    "tpope/vim-fugitive",
    config = function()
      vim.keymap.set("n", "<leader>gt", vim.cmd.Git)
    end,
  })
	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})
end)
