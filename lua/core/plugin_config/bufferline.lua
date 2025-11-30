require("bufferline").setup({
    options = {
        always_show_bufferline = true,
        -- Define o estilo da linha de buffers. 'buffers' é o padrão.
        mode = "buffers", 

        -- Estilo do separador. Experimente 'slant', 'thin', 'padded', etc.
        separator_style = "slant", 

        -- Adiciona um offset para que o Bufferline não comece imediatamente na esquerda
        -- Útil se você usar nvim-tree ou outro explorador de arquivos.
        offsets = {
            {
                filetype = "NvimTree", 
                text = "File Explorer", 
                text_align = "center",
                separator = true
            }
        },

        -- Mostrar ícones, úteis se você instalou 'nvim-web-devicons'
        indicator = {
            style = 'icon',
            icon = '▎',
        },
        
        -- Outras opções úteis:
        -- diagnostics = "nvim_lsp", -- Mostra erros/avisos da LSP
        -- right_mouse_command = "lua require('bufferline').remove_dd_buffer()", -- Comando para fechar buffer com botão direito
    }
})
