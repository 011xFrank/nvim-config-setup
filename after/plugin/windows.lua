vim.o.winwidth = 10
vim.o.winminwidth = 10
vim.o.equalalways = false

local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set('n', '<C-w>=', cmd 'WindowsEqualize')

local windows = require("windows")
windows.setup({})
