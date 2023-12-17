require("ibl").setup({
  enabled = true,
  indent = {
    char = "┃",
  },
  exclude = {
    filetypes = {
      "terminal",
      "Nvim-Tree",
      "packer"
    }
  },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    highlight = {
      "function","label"
    },
  },
})

