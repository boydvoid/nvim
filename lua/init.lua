require'keybinds' -- /.config/nvim/lua/keybinds.lua
require'plugins' -- /.config/nvim/lua/plugins.lua
require'config' -- /.config/nvim/lua/config.lua
require'nightfox'.load('nordfox')
require'settings/treesitter' -- /.config/nvim/lua/settings/treesitter.lua
require'settings/cmp' -- /.config/nvim/lua/settings/cmp.lua
require'settings/lspsaga' -- /.config/nvim/lua/settings/lspsaga.lua

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    }
)
