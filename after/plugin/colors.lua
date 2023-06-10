-- require('onedark').setup {
--     style = 'darker',
--     colors = {
--         -- rose900 = "#881337", -- define a new color
--     },
--     highlights = {
--         -- NvimTreeFolderName = { fg = '$rose900' },
--     }
-- }
--
-- require('onedark').load()

vim.o.background = 'dark'

require('vscode').setup({
    italic_comments = true,
})

require('vscode').load()
