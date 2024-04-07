-- mappings

vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.keymap.set

map("i","jk","<ESC>",{desc="Exit insert with jk"})
map("n","<leader>nh",":nohl<CR>",{desc="Clear search highlight"})

map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- window movement 
map("n","<c-h>","<c-w>h",{desc="To right window"})
map("n","<c-l>","<c-w>l",{desc="To left window"})
map("n","<c-j>","<c-w>j",{desc="To down window"})
map("n","<c-k>","<c-w>k",{desc="To up window"})
