function colorScheme(index)
  color_schemes = {
    "everforest",
    "gruvbox"
  }

  color = color_schemes[index]
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

colorScheme(1)
