
local highlight = {
    "indentColor1",
}

require("ibl").setup{
  enabled = true,
  exclude = {
    filetypes = {
      "terminal",
      "Nvim-Tree",
      "packer"
    }
  }
}

local hooks = require("ibl.hooks")
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "indentColor1", { fg = "#5B6C5D" })
end)

require("ibl").setup { indent = { highlight = highlight } }
