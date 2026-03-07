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
