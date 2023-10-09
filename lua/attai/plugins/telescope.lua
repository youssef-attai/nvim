return {
 'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
     local telescope = require("telescope")

     telescope.setup({})

     -- set keymaps
     local keymap = vim.keymap

     local builtin = require("telescope.builtin")
     keymap.set("n", "<leader>ff", builtin.find_files, {})
     keymap.set("n", "<leader>lg", builtin.live_grep, {})
     keymap.set("n", "<leader>b", builtin.buffers, {})
     keymap.set("n", "<leader>re", builtin.resume, {})
  end
}
