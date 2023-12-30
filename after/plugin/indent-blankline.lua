require("ibl").setup({
  enabled = true,
  indent = {
    char = "┃",
  },
  exclude = {
    filetypes = {
      "terminal",
      "Nvim-Tree",
      "packer",
      "startify"
    }
  },
  scope = {
    enabled = false,
    show_start = false,
    show_end = false,
    highlight = {
      "function","label"
    },
  },
})

