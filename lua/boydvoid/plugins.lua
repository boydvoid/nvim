require("lazy").setup({
    { 'nvim-tree/nvim-tree.lua' },
    { 'neovim/nvim-lspconfig' },
    { 'jose-elias-alvarez/null-ls.nvim' },
    { 'MunifTanjim/prettier.nvim' },
    { "windwp/nvim-autopairs" },
    { "lukas-reineke/format.nvim" },
    { 'nvim-lualine/lualine.nvim' },
    {
        "https://git.sr.ht/~nedia/auto-format.nvim",
        event = "BufWinEnter",
        config = function()
            require("auto-format").setup()
        end
    },
    {
        'projekt0n/github-nvim-theme',
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('github-theme').setup({
                -- ...
            })

            vim.cmd('colorscheme github_dark_dimmed')
        end,

    },
    { 'tpope/vim-commentary' },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
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
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
})
