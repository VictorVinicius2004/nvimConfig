return {
    "navarasu/onedark.nvim",
    priority = 1000, -- Garante que o tema carregue antes de qualquer outra coisa
    config = function()
        -- estilos: 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
        require('onedark').setup {
            style = 'dark'
        }
        require('onedark').load()
        vim.api.nvim_set_hl(0, "MatchParen", { 
            fg = "#e5c07b", -- Cor da letra (um amarelo forte)
            bg = "#4c566a", -- Cor do fundo (um cinza contrastante)
            bold = true     -- Deixa a fonte mais grossa
        })
    end,
}
