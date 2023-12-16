
local highlight = {
    "indentColor1",
}

require("ibl").setup{
  enabled = true,
  indent = {char = "▏"},
  exclude = {
    filetypes = {
      "terminal",
      "Nvim-Tree",
      "packer"
    }
  }
}

--local hooks = require("ibl.hooks")
--hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
--    vim.api.nvim_set_hl(0, "indentColor1", { fg = "#E4BB97" })
--end)

--require("ibl").setup { indent = { highlight = highlight } }
