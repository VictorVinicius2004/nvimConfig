-- lua/core/plugin_config/cmp.lua

local cmp = require('cmp')
local luasnip = require('luasnip')

-- Carrega a coleção de snippets que instalamos
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  -- Habilita o uso do LuaSnip
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  mapping = {
    -- Navega para a SUGESTÃO ANTERIOR na lista com Ctrl+k
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    
    -- Navega para a PRÓXIMA SUGESTÃO na lista com Ctrl+j
    ['<C-j>'] = cmp.mapping.select_next_item(),
    
    -- Rola a documentação da sugestão
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    
    -- Fecha o menu de autocomplete
    ['<C-e>'] = cmp.mapping.abort(),
    
    -- Confirma a seleção com Enter
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

    -- O comportamento do Tab para navegar nos snippets continua o mesmo
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },

  -- As fontes de sugestões continuam as mesmas
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  })
})

-- adicionado por conta do autopairs
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
