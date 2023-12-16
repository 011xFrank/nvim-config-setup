local keymap = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

require("toggleterm").setup({
  direction = "float",
  float_opts = {
    border = "curved"
  }
})

keymap("n", "<leader>t", ":ToggleTerm<CR>",opt)
keymap("t", "<ESC>", "<C-\\><C-n>:q<CR>",opt)
