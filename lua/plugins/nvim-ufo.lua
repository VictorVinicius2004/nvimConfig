return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async"
  },
  config = function()
    -- 1. Configurações obrigatórias do Neovim para o UFO funcionar bem
    vim.o.foldcolumn = '1' -- Mostra uma coluna na esquerda com os ícones de fold
    vim.o.foldlevel = 99 -- Garante que os arquivos abram com os folds expandidos
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- 2. Atalhos globais para abrir/fechar TODOS os folds usando o UFO
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds, { desc = "Abrir todos os folds (UFO)" })
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds, { desc = "Fechar todos os folds (UFO)" })

    -- 3. Configuração principal do plugin
    require('ufo').setup({
      provider_selector = function(bufnr, filetype, buftype)
        return {'lsp', 'indent'}
      end
    })
  end
}
