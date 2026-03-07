return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- Puxa as sugestões do LSP (Mason)
        "hrsh7th/cmp-buffer",   -- Sugere palavras que já estão no arquivo atual
        "hrsh7th/cmp-path",     -- Autocompleta caminhos de arquivos (ex: ./pasta/arquivo.txt)
        "L3MON4D3/LuaSnip",     -- Motor de snippets (obrigatório para o cmp funcionar)
        "saadparwaiz1/cmp_luasnip",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4), -- Rola a documentação para cima
                ['<C-f>'] = cmp.mapping.scroll_docs(4),  -- Rola a documentação para baixo
                ['<C-Space>'] = cmp.mapping.complete(),  -- Força o menu a abrir
                ['<C-e>'] = cmp.mapping.abort(),         -- Fecha o menu
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirma a seleção com Enter
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' }, -- Prioridade 1: Inteligência do código
                { name = 'luasnip' },  -- Prioridade 2: Snippets
            }, {
                { name = 'buffer' },   -- Prioridade 3: Palavras soltas do arquivo
                { name = 'path' },     -- Prioridade 4: Caminhos de pastas
            })
        })
    end
}
