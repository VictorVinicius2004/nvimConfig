return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false, 
    opts = {
        filesystem = {
            hijack_netrw_behavior = "open_current",
        }
    },   
    keys = {
        -- 'Espaço + e' para abrir/fechar a barra lateral
        { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Explorador de Arquivos" },
    },
}
