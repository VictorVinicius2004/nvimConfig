local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

-- Define quais servidores de linguagem você quer que o Mason instale.
local servers = {
  "clangd",
  "lua_ls",
}

-- Configura o Mason para gerenciar os LSPs
require('mason').setup()
mason_lspconfig.setup({
  ensure_installed = servers,
})

-- Atalhos de teclado para funções do LSP
local on_attach = function(client, bufnr)
  local opts = { noremap=true, silent=true, buffer=bufnr }
  -- Use 'K' para ver a documentação, 'gd' para ir para a definição, etc.
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
end

-- Capacidades para o nvim-cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Itera sobre a lista de servidores e configura cada um com as opções padrão.
for _, server_name in ipairs(servers) do
  lspconfig[server_name].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
