require("ibl").setup({
  enabled = true,
  indent = {
    char = "▏"
    --char = "┃",
  },
  exclude = {
    filetypes = {
      "terminal",
      "Nvim-Tree",
      "packer"
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

