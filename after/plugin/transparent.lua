require("transparent").setup({
  extra_groups = {
    "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
    "NvimTreeNormal" -- NvimTree
  },
})

require('transparent').clear_prefix('NvimTree')
require('transparent').clear_prefix('gitsigns')
require('transparent').clear_prefix('fidget')
