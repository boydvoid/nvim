vim.g.mapleader = " "
local keymap = vim.api.nvim_set_keymap

-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

keymap('i', 'jf', '<Esc>', {})
-- save
keymap('n', '<leader>s', ':w<CR>', {})
-- reload init.lua
keymap('n', '<leader>vr', ':so<Space>%<cr>', {})
-- move text up or down
keymap('n', '<A-k>', '<Up>ddp<Up>', {})
keymap('n', '<A-j>', 'ddp', {})

keymap('n', '<leader>dd', ':q!<CR>', {})
-- tabs
-- keymap('n', '', '', {})
keymap('n', 'tj', ':tabfirst<cr>', {})
keymap('n', 'tk', ':tablast<cr>', {})
keymap('n', 'tn', ':tabnew<cr>', {})
keymap('n', 'tl', ':tabnext<cr>', {})
keymap('n', 'th', ':tabprevious<cr>', {})
-- window splits
keymap('n', '<leader>vv', ':vs<cr>', {})
keymap('n', '<leader>hh', ':sp<cr>', {})
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
keymap('n', 'gD', '<cmd>tab split<cr><cmd>lua vim.lsp.buf.definition()<cr>', {})
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {})

keymap('n', '<leader>k', '<cmd>Lspsaga hover_doc<CR>', {})
keymap('n', '<leader>d', '<cmd>Lspsaga show_line_diagnostics<cr>', {})
keymap('n', '<leader>c', '<cmd>Lspsaga code_action<cr>', {})

keymap('n', '<leader>vi', '<cmd>tabnew ~/.config/nvim/lua/init.lua<cr>', {})
-- keymap('n', '<leader>e', ':NvimTreeToggle<cr>', {})
vim.keymap.set("n", "<leader>e", ":Oil<cr>", { desc = "Open parent directory" })

keymap('n', '<leader>rf', ':%! rustfmt<cr>', {})
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {})
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", {})
