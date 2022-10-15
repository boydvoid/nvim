
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
		-- themes
		use 'jdsimcoe/abstract.vim'
		use 'NLKNguyen/papercolor-theme'	
		use 'morhetz/gruvbox'
		use 'folke/tokyonight.nvim'
    use 'tomasr/molokai'
    use {'dracula/vim', as = 'dracula'}
    use 'wojciechkepka/vim-github-dark'
		use 'projekt0n/github-nvim-theme'

    use {
       'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
		use'kabouzeid/nvim-lspinstall'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'jiangmiao/auto-pairs'
    use 'ggandor/lightspeed.nvim'
    use 'mattn/emmet-vim'
    use 'tami5/lspsaga.nvim'
		use 'tpope/vim-commentary'
    use 'beauwilliams/statusline.lua'
		use 'EdenEast/nightfox.nvim'
		use 'lukas-reineke/indent-blankline.nvim'
    use {
       'prettier/vim-prettier',
        run = 'npm i --frozen-lockfile --production'
    }
	use 'norcalli/nvim-colorizer.lua'
	use 'lewis6991/gitsigns.nvim'
	use 'L3MON4D3/LuaSnip'
	use 'Shougo/defx.nvim'
	use 'onsails/lspkind.nvim'
	use 'saadparwaiz1/cmp_luasnip'
	use 'vimwiki/vimwiki'
end)
