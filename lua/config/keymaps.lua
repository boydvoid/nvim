-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

local opts = { noremap = true, silent = true }

keymap.set("i", "jf", "<esc>", opts)

keymap.set("n", "<leader>s", ":w<CR>", {})
-- reload init.lua
keymap.set("n", "<leader>vr", ":so<Space>%<cr>", {})
-- move text up or down
keymap.set("n", "<A-k>", "<Up>ddp<Up>", {})
keymap.set("n", "<A-j>", "ddp", {})

keymap.set("n", "<leader>dd", ":q!<CR>", {})
-- tabs
-- keymap('n', '', '', {})
keymap.set("n", "tj", ":tabfirst<cr>", {})
keymap.set("n", "tk", ":tablast<cr>", {})
keymap.set("n", "tn", ":tabnew<cr>", {})
keymap.set("n", "tl", ":tabnext<cr>", {})
keymap.set("n", "th", ":tabprevious<cr>", {})
-- window splits
keymap.set("n", "<leader>vv", ":vs<cr>", {})
keymap.set("n", "<leader>hh", ":sp<cr>", {})
keymap.set("n", "<leader>pl", "<C-w>l", {})
keymap.set("n", "<leader>ph", "<C-w>h", {})
keymap.set("n", "<leader>pj", "<C-w>j", {})
keymap.set("n", "<leader>pk", "<C-w>k", {})

-- Telescope Keybinds
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {})
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {})
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", {})
-- keymap.set('n', '<leader>ft', '<cmd>Defx  <cr>', {})
-- keymap.set('n', '<leader>ft', '<cmd>NeoTreeFocusToggle<cr>', {})

-- LSP
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", {})
keymap.set("n", "gD", "<cmd>tab split<cr><cmd>lua vim.lsp.buf.definition()<cr>", {})
keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", {})

keymap.set("n", "<leader>k", "<cmd>lua vim.lsp.buf.hover()<CR>", {})
-- keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<cr>", {})
keymap.set("n", "<leader>c", "<cmd>lua vim.lsp.buf.code_action()<cr>", {})
-- keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)

keymap.set("n", "<leader>vi", "<cmd>tabnew ~/.config/nvim/lua/init.lua<cr>", {})
-- keymap('n', '<leader>e', ':NvimTreeToggle<cr>', {})
-- vim.keymap.set("n", "<leader>e", ":Oil<cr>", { desc = "Open parent directory" })

-- keymap("n", "<leader>rf", ":%! rustfmt<cr>", {})
keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})
keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})
