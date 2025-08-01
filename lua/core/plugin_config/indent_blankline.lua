-- Configuração para a versão 3 do indent-blankline
vim.opt.list = true

-- Em vez de uma função setup(), a v3 usa variáveis globais (vim.g)
vim.g.indent_blankline_char = '│'
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_show_current_context_start = true

-- Adicional: Desativa o plugin em tipos de arquivos onde ele não é útil
vim.g.indent_blankline_filetype_exclude = { 
  "help", 
  "terminal", 
  "packer", 
  "lspinfo", 
  "TelescopePrompt", 
  "TelescopeResults", 
  "nvim-tree",
}

vim.cmd [[highlight IndentBlanklineContextChar guifg=#E5C07B gui=nocombine]]
