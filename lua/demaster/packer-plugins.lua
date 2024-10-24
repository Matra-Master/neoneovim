--
--This is a bootstrap function that downloads packer if it's not installed
--
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
-- Only required if you have packer configured as `opt`
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  -- Essentials and utils
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'junegunn/fzf.vim'
  use 'tpope/vim-fugitive'
  use {
      "ThePrimeagen/harpoon",
      branch = "harpoon2",
      requires = { {"nvim-lua/plenary.nvim"} }
  }
  use {
      "ThePrimeagen/refactoring.nvim",
      requires = {
          {"nvim-lua/plenary.nvim"},
          {"nvim-treesitter/nvim-treesitter"}
      }
  }

  use '2kabhishek/nerdy.nvim'

  use 'nvim-lualine/lualine.nvim'

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'nvim-tree/nvim-web-devicons'

  use { 'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'nvim-treesitter/nvim-treesitter-context'

  --Leap is the rework of Lightspeed
  use 'ggandor/leap.nvim'

  --use 'Exafunction/codeium.vim'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  use 'stevearc/oil.nvim'
  use 'christoomey/vim-tmux-navigator'
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-completion'
  use 'kristijanhusak/vim-dadbod-ui'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if Packer_bootstrap then
    require('packer').sync()
  end


--[[
  --
-- Lazy loading:
-- Load on specific commands
use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

-- Load on an autocommand event
use {'andymass/vim-matchup', event = 'VimEnter'}

-- Load on a combination of conditions: specific filetypes or commands
-- Also run code after load (see the "config" key)
use {
'w0rp/ale',
ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
cmd = 'ALEEnable',
config = 'vim.cmd[[ALEEnable]]--[['
}

-- Plugins can have dependencies on other plugins
use {
'haorenW1025/completion-nvim',
opt = true,
requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
}

-- Plugins can also depend on rocks from luarocks.org:
use {
'my/supercoolplugin',
rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
}

-- You can specify rocks in isolation
use_rocks 'penlight'
use_rocks {'lua-resty-http', 'lpeg'}

-- Local plugins can be included
use '~/projects/personal/hover.nvim'

-- Plugins can have post-install/update hooks
use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

-- Post-install/update hook with neovim command
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

-- Post-install/update hook with call of vimscript function with argument
use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

-- Use specific branch, dependency and run lua file after load
use {
'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
requires = {'kyazdani42/nvim-web-devicons'}
}

-- Use dependency and run lua function after load
use {
'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
config = function() require('gitsigns').setup() end
}

-- You can specify multiple plugins in a single call
use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

-- You can alias plugin names
use {'dracula/vim', as = 'dracula'}
end)
--]]
end)
