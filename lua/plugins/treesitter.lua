return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "bash",
      "python",
      "javascript",
      "html",
      "css",
      "json",
      "markdown",
      "query"
    },

    highlight = {
      enable = true,
    },

    indent = {
      enable = true,
    },
  },
}
