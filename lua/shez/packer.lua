-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ({
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
        vim.cmd('colorscheme catppuccin')
    end
  })
  use ('mattn/emmet-vim')
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }

  use('rafamadriz/friendly-snippets')
  use('saadparwaiz1/cmp_luasnip')
  use('tpope/vim-rhubarb')
  use('tpope/vim-sleuth')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('neovim/nvim-lspconfig') -- LSP 
  use('onsails/lspkind-nvim') --vscode pictograms
  use('hrsh7th/cmp-buffer') -- nvim-cmp source for buffer words
  use('hrsh7th/cmp-nvim-lsp') --nvim-cmp source for nvim's builtin LSP
  use('hrsh7th/nvim-cmp') --completion
  use('L3MON4D3/LuaSnip')
  end)

