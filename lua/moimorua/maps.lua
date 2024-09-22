vim.g.mapleader = " "

local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Better window navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
-- Resize with arrows

map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

map("n", "<C-s>s", ":w<CR>")
map("n", "<C-s>", ":noautocmd w<CR>")
map("n", "<C-g>", ":Telescope find_files<CR>")

-- Visual Block --
-- Move text up and down
map("x", "J", ":m '>+1<CR>gv=gv")
map("x", "K", ":m '<-2<CR>gv=gv")

-- New Window and Find file
map("n", "<C-n>", "<CMD>vsplit<BAR>:Telescope find_files<CR>")

-- NeoTree
map("n", "<C-b>", ":NvimTreeToggle<CR>")

-- Close current file
map("n", "<C-w>w", "<CMD>q<CR>")
