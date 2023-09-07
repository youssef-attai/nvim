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

-- Toggle mardown preview in markdown markdown files
vim.keymap.set("n", "<leader>mp", function()
  vim.cmd("MarkdownPreviewToggle")
end)

vim.keymap.set("n", "Q", "<nop>")


-- Floaterm
vim.keymap.set("n", "<F1>", ":FloatermNew<CR>")
vim.keymap.set("t", "<F1>", "<C-\\><C-n>:FloatermNew<CR>")
vim.keymap.set("n", "<F2>", ":FloatermToggle<CR>")
vim.keymap.set("t", "<F2>", "<C-\\><C-n>:FloatermToggle<CR>")
vim.keymap.set("n", "<F4>", ":FloatermNext<CR>")
vim.keymap.set("t", "<F4>", "<C-\\><C-n>:FloatermNext<CR>")
vim.keymap.set("n", "<F3>", ":FloatermPrev<CR>")
vim.keymap.set("t", "<F3>", "<C-\\><C-n>:FloatermPrev<CR>")
vim.keymap.set("n", "<F5>", ":FloatermKill<CR>")
vim.keymap.set("t", "<F5>", "<C-\\><C-n>:FloatermKill<CR>")

-- Lazygit
vim.keymap.set("n", "<leader>lg", ":FloatermNew lazygit<CR>")

