local kind_icons = {
  Text = "󰉿",
	Method = "",
	Function = "󰡱",
	Constructor = "",
  Field = " ",
	Variable = "󰀫",
	Class = "",
	Interface = "",
	Module = "󱃻",
	Property = "󰜢",
	Unit = "󰑭",
	Value = "󰎠",
	Enum = "",
	Keyword = "󰌋",
  Snippet = "",
	Color = "󰏘",
	File = "",
  Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "c",
  Struct = "",
	Event = "",
	Operator = "󰆕",
  TypeParameter = " ",
	Misc = " ",
}


local cmp = require("cmp")
local luasnip = require("luasnip")
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ["<Up>"] = cmp.mapping.select_prev_item(),
    ["<Down>"] = cmp.mapping.select_next_item(),
    ["<C-j>"] = cmp.mapping.scroll_docs(-4),
    ["<C-k>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    ["<C-Space>"] = cmp.mapping.confirm({ select = false }),
  }),
  formatting = {
    fields = {"menu","abbr","kind"},
    format = function(entry,vim_item)
      vim_item.kind = string.format('%s %s',kind_icons[vim_item.kind],vim_item.kind)

      vim_item.menu = ({
        luasnip = "[luasnip]",
        buffer = "[File]",
        path = "[Path]",
      })[entry.source.name]

      return vim_item
    end
  },
  sources = {
    {name = "nvim-lsp"},
    {name = "luasnip"},
    {name = "buffer"},
    {name = "path"},
  },
  experimental = {
    ghost_text = true
  },
  window = {
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    completion = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    }
  }
})
