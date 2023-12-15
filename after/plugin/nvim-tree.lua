vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
vim.g.NvimTreeIndentMarker = 1

require("nvim-tree").setup()

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
        corner = "󱞩",
        edge = "󱞩",
        item = "󱞩",
        bottom = "|",
        none = " ",
      },
    }
  },
  view = {side = "left"},
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

