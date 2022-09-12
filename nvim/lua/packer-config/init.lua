return require('packer').startup(function(use)
  -- Packer package manager
  use('wbthomason/packer.nvim')

  -- Icons
  use('kyazdani42/nvim-web-devicons')

  -- nvim-tree
  use({
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })

  -- lualine
  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })

  -- Theme Tokyo Night
  use('folke/tokyonight.nvim')
end)