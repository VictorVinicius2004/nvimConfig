-- lua/core/plugin_config/lsp.lua

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Lista de servidores que você quer instalar
local servers = {
  "clangd",
  "lua_ls",
}

-- Configura o Mason
mason.setup()
mason_lspconfig.setup({
  ensure_installed = servers,
})

-- Atalhos do LSP
local on_attach = function(client, bufnr)
  local opts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
end

-- Capacidades para nvim-cmp
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Função utilitária para configurar cada servidor usando a nova API
local function setup_server(name)
  local lspconfig = vim.lsp.configs
  local ok, config = pcall(require, "lspconfig.server_configurations." .. name)
  if not ok then return end

  vim.lsp.start({
    name = name,
    cmd = config.default_config.cmd,
    root_dir = config.default_config.root_dir,
    settings = config.default_config.settings,
    capabilities = capabilities,
    on_attach = on_attach,
  })
end

-- Configura todos os servidores
for _, server_name in ipairs(servers) do
  setup_server(server_name)
end

