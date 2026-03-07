return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        require("mason").setup()

        -- Garante que os servidores para C e Python estejam sempre instalados
        require("mason-lspconfig").setup({
            ensure_installed = { "clangd", "pyright" },
        })

        -- Puxa as capacidades do nvim-cmp para os servidores saberem que você tem autocompletar
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- Aplica a configuração base para TODOS os LSPs de uma vez (usando o '*')
        vim.lsp.config("*", {
            capabilities = capabilities
        })

        -- Ativa os servidores usando a nova API nativa e ultrarrápida do Neovim
        vim.lsp.enable("clangd")
        vim.lsp.enable("pyright")

        -- 'K' em cima de uma função para ver a documentação dela
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        -- 'gd' (go to definition) para pular para onde a função foi criada
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        -- 'Espaço + ca' (code action) ver sugestões de correção de erros
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
}
