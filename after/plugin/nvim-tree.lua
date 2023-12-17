local opts = {noremap = true,silent = true}
local keymap = vim.api.nvim_set_keymap

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


require("nvim-tree").setup({
  sort = { sorter = "case_sensitive", },
  update_focused_file = { enable = true, },
  renderer = {
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "󰝰",
          empty = "󰉖",
          empty_open = "󰷏",
          symlink = "",
          symlink_open = "",
        }
      }
    },
    indent_markers = {
      enable = true,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      }
    }
  },
  view = {
    side = "left",
    relativenumber = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  filters = {
    dotfiles = true,
  },
})

--Keymap
keymap("n","<leader>n",":NvimTreeToggle<cr>",opts)

