--
--This is a bootstrap function that downloads lazy.nvim if it's not installed
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({

  -- Essentials and utils
  'nvim-lua/plenary.nvim',
  'nvim-lua/popup.nvim',
  'nvim-telescope/telescope.nvim',
  'junegunn/fzf.vim',
  'tpope/vim-fugitive',
  'ThePrimeagen/harpoon',

  'nvim-lualine/lualine.nvim',

  -- Themes
  'folke/tokyonight.nvim',
  'ellisonleao/gruvbox.nvim',

  { 'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  },
  'nvim-treesitter/nvim-treesitter-context',

  --Leap is the rework of Lightspeed
  'ggandor/leap.nvim',

  'Exafunction/codeium.vim',

  'stevearc/oil.nvim',

  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

  -- LSP Support
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},
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

})
