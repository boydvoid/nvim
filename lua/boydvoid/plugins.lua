require("lazy").setup({
    {'nvim-lualine/lualine.nvim'},
{
  'projekt0n/github-nvim-theme',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark_colorblind')
  end,

}, 
{'tpope/vim-commentary'},
{
'nvim-telescope/telescope.nvim', tag = '0.1.1',
  dependencies = { 'nvim-lua/plenary.nvim' }
},
{
'nvim-treesitter/nvim-treesitter', 
},
{
'VonHeikemen/lsp-zero.nvim',
branch = 'v2.x',
dependencies = {
-- LSP Support
{'neovim/nvim-lspconfig'},             -- Required
{                                      -- Optional
  'williamboman/mason.nvim',
  build = function()
    pcall(vim.cmd, 'MasonUpdate')
  end,
},
{'williamboman/mason-lspconfig.nvim'}, -- Optional

-- Autocompletion
{'hrsh7th/nvim-cmp'},     -- Required
{'hrsh7th/cmp-nvim-lsp'}, -- Required
{'L3MON4D3/LuaSnip'},     -- Required
}
}
})
