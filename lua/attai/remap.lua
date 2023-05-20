vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Split windows
vim.keymap.set("n", "<leader>hs", "<C-w>s")
vim.keymap.set("n", "<leader>vs", "<C-w>v")

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Search for visually selected text
vim.keymap.set("v", "/", "y/<C-R>\"<CR>")

-- Keep cursor where it is when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor centered when going to next/previous match
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over text without losing the copied text from buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Save with Ctrl+s
vim.keymap.set({"n", "i"}, "<C-s>", function()
    vim.cmd("w")
end)

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "y", [["+y]])

-- Delete to system clipboard
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-q>", ":bdelete<CR>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>fr", vim.lsp.buf.format)

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Quickly make a file executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Easy way to source a file
-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)

