return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        -- 'Espaço + f + f' para buscar arquivos
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Buscar Arquivos" },
        -- 'Espaço + f + g' para buscar texto dentro dos arquivos
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Buscar Texto" },
    },
}
