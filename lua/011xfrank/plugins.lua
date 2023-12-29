vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'vimwiki/vimwiki'

  use 'rose-pine/neovim'

  use 'windwp/nvim-autopairs'

  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-tree.lua'

  use 'lewis6991/gitsigns.nvim'

  use 'gen740/SmoothCursor.nvim'

  use 'nvim-lualine/lualine.nvim'

  use 'xiyaowong/transparent.nvim'

  use 'nvim-tree/nvim-web-devicons'

  use 'simrat39/symbols-outline.nvim'

  use 'lukas-reineke/indent-blankline.nvim'

  use {"kylechui/nvim-surround",tag = "*",}

  use {"akinsho/toggleterm.nvim", tag = '*'}

  use {'nvim-telescope/telescope-ui-select.nvim'}

  use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}

  use {'nvim-telescope/telescope-fzf-native.nvim',run = 'make'}

  use {'kevinhwang91/nvim-ufo',requires = {'kevinhwang91/promise-async'}}

  use {"utilyre/barbecue.nvim",tag = "*",requires = {"SmiteshP/nvim-navic",}}

  use {'nvim-telescope/telescope.nvim', tag = '0.1.x',requires = {'nvim-lua/plenary.nvim'}}

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

  use {
    "anuvyklack/windows.nvim",
    requires = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    },
  }

  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/Luasnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    }
  }

end)
