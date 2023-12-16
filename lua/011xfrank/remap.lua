local opts = {noremap = true,silent = true}
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Window Navigation
keymap("n","<C-UP>","<C-w>k",opts)
keymap("n","<C-Down>","<C-w>j",opts)
keymap("n","<C-Left>","<C-w>h",opts)
keymap("n","<C-Right>","<C-w>l",opts)


--Nvim-Tree
keymap("n","<leader>n",":NvimTreeToggle<cr>",opts)

--ToggleTerm
keymap("n","<leader>t",":ToggleTerm<CR>",opts)

--Nvim default Folding
keymap('n', '<C-\\>', 'za',opts)

--bufferline
keymap("n","<leader><Right>",":BufferLineCycleNext<CR>",opts)
keymap("n","<leader><Left>",":BufferLineCyclePrev<CR>",opts)

keymap("n","<leader>1",":BufferLineGoToBuffer 1<CR>",opts)
keymap("n","<leader>2",":BufferLineGoToBuffer 2<CR>",opts)
keymap("n","<leader>3",":BufferLineGoToBuffer 3<CR>",opts)
keymap("n","<leader>4",":BufferLineGoToBuffer 4<CR>",opts)
keymap("n","<leader>5",":BufferLineGoToBuffer 5<CR>",opts)

--Tagbar
keymap("n","<F8>",":TagbarToggle<CR>",opts)


