local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = ' '
-- keymap('n', 'J', '5j', {})
-- keymap('n', 'K', '5k', {})
-- keymap('n', 'K', '5k', {})
-- exit insert mode
keymap('i', 'jf', '<Esc>', {})
-- save
keymap('n', '<leader>s', ':w<CR>', {})
-- reload init.lua
keymap('n', '<leader>vr', ':so<Space>%<cr>', {})
-- move text up or down
keymap('n', '<A-k>', '<Up>ddp<Up>', {})
keymap('n', '<A-j>', 'ddp', {})

keymap('n', '<leader>pd', ':q!<CR>', {})
-- tabs
-- keymap('n', '', '', {})
keymap('n', 'tj', ':tabfirst<cr>', {})
keymap('n', 'tk', ':tablast<cr>', {})
keymap('n', 'tn', ':tabnew<cr>', {})
keymap('n', 'tl', ':tabnext<cr>', {})
keymap('n', 'th', ':tabprevious<cr>', {})
-- window splits
keymap('n', '<leader>psv', ':vs<cr>', {})
keymap('n', '<leader>psh', ':sp<cr>', {})
keymap('n', '<leader>pl', '<C-w>l', {})
keymap('n', '<leader>ph', '<C-w>h', {})
keymap('n', '<leader>pj', '<C-w>j', {})
keymap('n', '<leader>pk', '<C-w>k', {})

-- Telescope Keybinds
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', {})
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {})
keymap('n', '<leader>fw', '<cmd>Telescope live_grep<CR>', {})
-- keymap('n', '<leader>ft', '<cmd>Defx  <cr>', {})
-- keymap('n', '<leader>ft', '<cmd>NeoTreeFocusToggle<cr>', {})

-- LSP
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {})
keymap('n', '<leader>k', '<cmd>Lspsaga hover_doc<CR>', {})
keymap('n', '<leader>d', '<cmd>Lspsaga show_line_diagnostics<cr>', {})
keymap('n', '<leader>c', '<cmd>Lspsaga code_action<cr>', {})

keymap('n', '<leader>vi', '<cmd>tabnew ~/.config/nvim/lua/init.lua<cr>', {})
keymap('n', '<leader>ft', ':!echo keybind is <leader>e<cr>', {})
