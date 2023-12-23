local opts = {noremap = true,silent = true}
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Nvim default Folding
keymap('n', '<C-\\>', 'za',opts)

--Buffer Delete
keymap("n","bd",":bd<CR>",opts)


