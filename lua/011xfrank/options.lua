vim.cmd('set clipboard+=unnamedplus')

local options = {
  number = true,
	relativenumber = true,
	cursorline = true,
	autoindent = true,
	smartindent = true,
	wrap = false,
	incsearch = true,
	hlsearch = false,
	ignorecase = true,
	smartcase = true,
	expandtab = true,
	hidden = true,
	title = true,
	termguicolors = true,
  filetype = "on",

	mouse = 'a',
	fileencoding = 'utf-8',
	titlestring = 'NeoVim -- %t',
  signcolumn = "yes",
  foldmethod="indent",

	sidescrolloff = 10,
	tabstop = 2,
	shiftwidth = 2,
	laststatus = 2,
  softtabstop = 2,
	scrolloff = 10,
  foldcolumn = "1"
}

for option,value in pairs(options) do
	vim.opt[option] = value
end
