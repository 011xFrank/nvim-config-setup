vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'rose-pine/neovim'

  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-tree/nvim-tree.lua'

  use 'windwp/nvim-autopairs'

  use {"akinsho/toggleterm.nvim", tag = '*'}

  use 'lukas-reineke/indent-blankline.nvim'

  use 'lewis6991/gitsigns.nvim'

  use 'simrat39/symbols-outline.nvim'

  use 'xiyaowong/transparent.nvim'

  use 'nvim-lualine/lualine.nvim'

  use {'nvim-telescope/telescope-fzf-native.nvim',run = 'make'}

  use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}

  use {'nvim-telescope/telescope-ui-select.nvim' }

  use {"kylechui/nvim-surround",tag = "*",}

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    'kevinhwang91/nvim-ufo',
    requires = {
      'kevinhwang91/promise-async'
    }
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

  use {
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
    }
  }
end)
