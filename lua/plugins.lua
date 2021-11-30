
require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'tomasr/molokai'
    use {'dracula/vim', as = 'dracula'}
    use 'wojciechkepka/vim-github-dark'
    use {
       'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
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

    -- use 'terrortylor/nvim-comment'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'jiangmiao/auto-pairs'
    use 'ggandor/lightspeed.nvim'
   use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {
      update_to_buf_dir = {
        enable= true
      }
    } end
    }
    use 'mattn/emmet-vim'
    use 'tami5/lspsaga.nvim'
    use 'github/copilot.vim'
		use 'tpope/vim-commentary'
    use 'beauwilliams/statusline.lua'
		use 'EdenEast/nightfox.nvim'
		use 'lukas-reineke/indent-blankline.nvim'
    use {
       'prettier/vim-prettier',
        run = 'npm i --frozen-lockfile --production'
    }

end)
