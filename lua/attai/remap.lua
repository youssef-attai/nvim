vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Save with Ctrl+s
vim.keymap.set("n", "<C-s>", function()
	vim.cmd("w")
end)

-- Delete buffer with Leader + x
vim.keymap.set("n", "<leader>x", function()
	vim.cmd("bd")
end)

-- Move between buffers
vim.keymap.set("n", "<TAB>", ":bnext<CR>")
vim.keymap.set("n", "<S-TAB>", ":bprevious<CR>")

-- Move between windows
vim.keymap.set("n", "<C-h>", function()
	vim.cmd("wincmd h")
end)
vim.keymap.set("n", "<C-j>", function()
	vim.cmd("wincmd j")
end)
vim.keymap.set("n", "<C-k>", function()
	vim.cmd("wincmd k")
end)
vim.keymap.set("n", "<C-l>", function()
	vim.cmd("wincmd l")
end)

-- Split windows
vim.keymap.set("n", "<leader>hs", "<C-w>s")
vim.keymap.set("n", "<leader>vs", "<C-w>v")

-- Search for visually selected text
vim.keymap.set("v", "/", 'y/<C-R>"<CR>')

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

-- Format code
vim.keymap.set("n", "<leader>fr", vim.lsp.buf.format)

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "Q", "<nop>")
