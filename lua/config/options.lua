local opt = vim.opt
local g = vim.g

-- Desativa provedores não utilizados (Perl e Ruby) para carregar mais rápido
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

-- Números de Linha
opt.number = true          -- Mostra o número da linha atual
opt.relativenumber = true  -- Números relativos (excelente para navegação)

-- Tabs e Indentação
opt.tabstop = 4            -- 1 TAB = 4 espaços
opt.shiftwidth = 4         -- Tamanho da indentação
opt.expandtab = true       -- Converte TABs em espaços automaticamente
opt.autoindent = true      -- Mantém a indentação da linha anterior

-- Busca Inteligente
opt.ignorecase = true      
opt.smartcase = true       

-- Área de Transferência (Clipboard) sincronizada com o Zorin OS
opt.clipboard = "unnamedplus"

-- Aparência e Interface
opt.termguicolors = true   -- Habilita cores 24-bits para temas
opt.signcolumn = "yes"     -- Mantém a coluna esquerda aberta
opt.wrap = false           -- Não quebra linhas longas
opt.cursorline = true      -- Destaca a linha do cursor

-- para o undotree
vim.opt.undofile = true
local undodir = vim.fn.stdpath("data") .. "/undodir"
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end
vim.opt.undodir = undodir

-- 1. Define O QUE o Neovim deve lembrar (folds e posição do cursor)
vim.opt.viewoptions = { "folds", "cursor" }

-- 2. Cria um grupo para organizar esses comandos automáticos (boa prática)
local view_group = vim.api.nvim_create_augroup("RememberFolds", { clear = true })

-- 3. Salva a "view" automaticamente quando você sai do arquivo (BufWinLeave)
vim.api.nvim_create_autocmd("BufWinLeave", {
  group = view_group,
  pattern = "?*", -- O "?*" garante que não tente salvar janelas vazias
  command = "mkview",
})

-- 4. Carrega a "view" automaticamente quando você entra no arquivo (BufWinEnter)
vim.api.nvim_create_autocmd("BufWinEnter", {
  group = view_group,
  pattern = "?*",
  command = "silent! loadview", -- O "silent!" evita erros ao abrir arquivos novos que ainda não têm uma view salva
})

-- Mostra uma coluna na esquerda indicando onde estão os folds
vim.opt.foldcolumn = "1"
