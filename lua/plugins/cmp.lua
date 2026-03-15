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
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }), 
                ['<Down>'] = cmp.config.disable,
                ['<Up>'] = cmp.config.disable,            
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
