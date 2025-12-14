vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number = true
vim.opt.relativenumber = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd([[
    augroup AutoSaveFolds
        autocmd!

        autocmd BufWinLeave * silent! mkview
        autocmd BufWinEnter * silent! loadview
    augroup END
]])

-- configuração para garantir que arquivos.py tenham 2 espaçoes de tabulação
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python", -- Aplica apenas a arquivos Python
  callback = function()
    -- Defina localmente (apenas para este buffer) as opções
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true -- Garante o uso de espaços em vez de tab
  end,
})
