vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'sainnhe/everforest'

  use 'morhetz/gruvbox'

  use {
    'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-tree/nvim-tree.lua'

  use 'windwp/nvim-autopairs'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  use {"akinsho/toggleterm.nvim", tag = '*'}

  use 'lukas-reineke/indent-blankline.nvim'

  use {'neoclide/coc.nvim', branch = 'release'}
  
  use {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async'
  }

  use 'rcarriga/nvim-notify'

  use 'lewis6991/gitsigns.nvim'

  use {
    'akinsho/bufferline.nvim',
    tag = "*"
  }

end)
