vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.autochdir = true

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number = true
vim.opt.relativenumber = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

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
vim.keymap.set("n", "<leader>,", '<C-w>>')
vim.keymap.set("n", "<leader>.", '<C-w><')
vim.keymap.set('n', '<leader>sl', '<C-w>l')
vim.keymap.set('n', '<leader>sh', '<C-w>h')
vim.keymap.set('n', '<leader>sj', '<C-w>j')
vim.keymap.set('n', '<leader>sk', '<C-w>k')
