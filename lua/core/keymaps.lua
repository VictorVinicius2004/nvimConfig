vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.autochdir = true

vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>fq', ':q!<CR>')
vim.keymap.set('n', '<leader>wq', ':wq<CR>')
vim.keymap.set('n', '<leader>qa', ':qa<CR>')
vim.keymap.set('n', '<leader>wqa', ':wqa<CR>')
vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>t', '<cmd>wa | vsp | terminal<cr>i')
vim.keymap.set('n', '<leader>sv', ':vsp<CR>')
vim.keymap.set('n', '<leader>ss', ':split<CR>')
vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")
vim.keymap.set("v", "<leader>c", '"+y')
vim.keymap.set('n', '<leader>sl', '<C-w>l')
vim.keymap.set('n', '<leader>sh', '<C-w>h')
vim.keymap.set('n', '<leader>sj', '<C-w>j')
vim.keymap.set('n', '<leader>sk', '<C-w>k')

-- keymap de bufferline
vim.keymap.set('n', '<Tab>', ':bn<CR>')
vim.keymap.set('n', '<S-Tab>', ':bp<CR>')
vim.keymap.set('n', '<leader>bd', ':bd<CR>')
