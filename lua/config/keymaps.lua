vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.autochdir = true

vim.keymap.set('n', '<leader>q', '<cmd>q<CR>')
vim.keymap.set('n', '<leader>fq', '<cmd>q!<CR>')
vim.keymap.set('n', '<leader>wq', '<cmd>wq<CR>')
vim.keymap.set('n', '<leader>qa', '<cmd>qa<CR>')
vim.keymap.set('n', '<leader>wqa', '<cmd>wqa<CR>')
vim.keymap.set('n', '<leader>n', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>t', '<cmd>wa | vsp | terminal<cr>i')
vim.keymap.set('n', '<leader>sv', '<cmd>vsp<CR>')
vim.keymap.set('n', '<leader>ss', '<cmd>split<CR>')
vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')
vim.keymap.set('v', '<leader>c', '"+y')
vim.keymap.set('n', '<leader>sl', '<C-w>l')
vim.keymap.set('n', '<leader>sh', '<C-w>h')
vim.keymap.set('n', '<leader>sj', '<C-w>j')
vim.keymap.set('n', '<leader>sk', '<C-w>k')
vim.keymap.set('n', '<leader>ls', '<cmd>w | Lazy sync<CR>')
