return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
      { '<leader>e', '<cmd>NvimTreeToggle<CR>' },
  },
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30, -- Largura da janela
      },
      renderer = {
        group_empty = true, -- Agrupa pastas vazias juntas
      },
      filters = {
        dotfiles = true, -- esconder arquivos ocultos
      },
    })
  end,
}
