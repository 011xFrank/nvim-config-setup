local opts = {noremap = true,silent = true}
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Window Navigation
keymap("n","<C-UP>","<C-w>k",opts)
keymap("n","<C-Down>","<C-w>j",opts)
keymap("n","<C-Left>","<C-w>h",opts)
keymap("n","<C-Right>","<C-w>l",opts)

--Nvim default Folding
keymap('n', '<C-\\>', 'za',opts)

keymap("n","bd",":bd<CR>",opts)
