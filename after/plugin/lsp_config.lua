
local servers = { "clangd", "lua_ls", "tsserver", "pyright", "html", "cssls" }

require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = servers
})

local on_attach = function(_,_)
  vim.keymap.set("n","<leader>rn",vim.lsp.buf.rename,{})
  vim.keymap.set("n","<leader>ca",vim.lsp.buf.code_action,{})

  vim.keymap.set("n","<leader>gd",vim.lsp.buf.definition,{})
  vim.keymap.set("n","<leader>gr",require("telescope.builtin").lsp_references,{})
  vim.keymap.set("n","<leader>gi",vim.lsp.buf.implementation,{})
  vim.keymap.set("n","K",vim.lsp.buf.hover,{})
end

for _, server in ipairs(servers) do
  require("lspconfig")[server].setup{
    on_attach = on_attach,
  }
end
