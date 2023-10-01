-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end

  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- treesitter playground neovim is deprecated as it's now included in NeoVim
  -- use:
  -- :Inspect to show the highlight groups under the cursor
  -- :InspectTree to show the parsed syntax tree ("TSPlayground")
  -- :EditQuery to open the Live Query Editor (Nvim 0.10+)
  use('ThePrimeagen/harpoon')

  -- shows tree of history of changes. Changes persist over restarts:
  use('mbbill/undotree')

  use('tpope/vim-fugitive')



end)
