return {
    "atiladefreitas/dooing",
    keys = {
        { "<leader>td", "<cmd>Dooing<cr>", desc = "Toggle Dooing" },
    },
    config = function()
        require("dooing").setup({
            window = {
                width = 40,
                height = 20,
            },
        })
    end,
}
