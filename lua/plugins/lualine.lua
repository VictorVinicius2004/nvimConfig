return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- Adiciona ícones minimalistas na barra
    config = function()
        require("lualine").setup({
            options = {
                theme = "onedark", -- Puxa as cores do tema que acabamos de instalar
                component_separators = '|',
                section_separators = '',
            },
        })
    end,
}
