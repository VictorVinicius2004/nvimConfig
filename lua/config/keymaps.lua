vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.autochdir = true

vim.keymap.set('n', '<leader>q', '<cmd>q<CR>', { desc = "Sair" })
vim.keymap.set('n', '<leader>fq', '<cmd>q!<CR>', { desc = "Forçar saída" })
vim.keymap.set('n', '<leader>wq', '<cmd>wq<CR>', { desc = "Salvar e sair" })
vim.keymap.set('n', '<leader>qa', '<cmd>qa<CR>', { desc = "Sair de tudo" })
vim.keymap.set('n', '<leader>wqa', '<cmd>wqa<CR>', { desc = "Salvar e sair de tudo" })
vim.keymap.set('n', '<leader>n', '<cmd>nohlsearch<CR>', { desc = "Limpar destaque de busca" })
vim.keymap.set('n', '<leader>t', '<cmd>wa | vsp | terminal<cr>i', { desc = "Terminal vertical" })
vim.keymap.set('n', '<leader>ls', '<cmd>w | Lazy sync<CR>', { desc = "Salvar e Sync Lazy" })
vim.keymap.set('n', '<leader>sv', '<cmd>vsp<CR>', { desc = "Split Vertical" })
vim.keymap.set('n', '<leader>ss', '<cmd>split<CR>', { desc = "Split Horizontal" })
vim.keymap.set('n', '<leader>sl', '<C-w>l', { desc = "Ir para janela direita" })
vim.keymap.set('n', '<leader>sh', '<C-w>h', { desc = "Ir para janela esquerda" })
vim.keymap.set('n', '<leader>sj', '<C-w>j', { desc = "Ir para janela baixo" })
vim.keymap.set('n', '<leader>sk', '<C-w>k', { desc = "Ir para janela cima" })
vim.keymap.set('v', '<Tab>', '>gv', { desc = "Indentar para direita" })
vim.keymap.set('v', '<S-Tab>', '<gv', { desc = "Indentar para esquerda" })
vim.keymap.set('v', '<leader>c', '"+y', { desc = "Copiar para o clipboard do sistema" })

-- bufferline
vim.keymap.set('n', "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Buffer Anterior" })
vim.keymap.set('n', "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Próximo Buffer" })
vim.keymap.set('n', "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Buffer Anterior" })
vim.keymap.set('n', "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Próximo Buffer" })
vim.keymap.set('n', "<leader>bp", "<cmd>BufferLinePick<cr>", { desc = "Escolher Buffer (Pick)" })
vim.keymap.set('n', "<leader>bc", "<cmd>BufferLinePickClose<cr>", { desc = "Fechar Buffer Escolhido" })
