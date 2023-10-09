vim.g.mapleader = " "

local keymap = vim.keymap

-- Save all buffers with ctrl + s
keymap.set("n", "<C-s>", function()
	vim.cmd("wa")
end)

-- Delete buffer with Leader + x
keymap.set("n", "<leader>x", function()
	vim.cmd("bd")
end)

-- Quit buffer with Leader + q
-- keymap.set("n", "<leader>q", function()
-- 	vim.cmd("q")
-- end)

-- Move between buffers
keymap.set("n", "<TAB>", ":bnext<CR>")
keymap.set("n", "<S-TAB>", ":bprevious<CR>")

-- Move between windows
keymap.set("n", "<C-h>", function()
	vim.cmd("wincmd h")
end)
keymap.set("n", "<C-j>", function()
	vim.cmd("wincmd j")
end)
keymap.set("n", "<C-k>", function()
	vim.cmd("wincmd k")
end)
keymap.set("n", "<C-l>", function()
	vim.cmd("wincmd l")
end)

-- Split windows
keymap.set("n", "<leader>hs", "<C-w>s")
keymap.set("n", "<leader>vs", "<C-w>v")

-- Search for visually selected text
keymap.set("v", "/", 'y/<C-R>"<CR>')

-- Keep cursor where it is when joining lines
keymap.set("n", "J", "mzJ`z")

-- Keep cursor centered when scrolling
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor centered when going to next/previous match
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Paste over text without losing the copied text from buffer
keymap.set("x", "<leader>p", [["_dP]])

-- Replace word under cursor
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("n", "Q", "<nop>")
