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
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  --THEMES

  use('folke/tokyonight.nvim')
  use({
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
      vim.cmd('colorscheme catppuccin')
    end
  })
  use('lunarvim/Onedarker.nvim')
  --
  use('mattn/emmet-vim')
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      {
        'L3MON4D3/LuaSnip'
      }, -- Required
    }
  }
  use('rafamadriz/friendly-snippets')
  use('saadparwaiz1/cmp_luasnip')
  use('tpope/vim-rhubarb')
  use('tpope/vim-sleuth')
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('onsails/lspkind-nvim') --vscode pictograms
  use('MunifTanjim/prettier.nvim')
  use('folke/zen-mode.nvim')
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use({
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "echo $OPENAI_API_KEY",
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })

  use('github/copilot.vim')
  use {
    'wthollingsworth/pomodoro.nvim',
    requires = 'MunifTanjim/nui.nvim',
    config = function()
      require('pomodoro').setup({
        time_work = 25,
        time_break_short = 5,
        time_break_long = 20,
        timers_to_long_break = 4
      })
    end
  }
  use { 'vimwiki/vimwiki',
    config = function()
      vim.g.vimwiki_list = {
        {
          path   = '~/vimwiki',
          syntax = 'markdown',
          ext    = '.md',
        }
      }
      vim.g.vimwiki_ext2syntax = {
        ['.md'] = 'markdown',
        ['.markdown'] = 'markdown',
        ['.mdown'] = 'markdown',
      }
    end
  }
end)
