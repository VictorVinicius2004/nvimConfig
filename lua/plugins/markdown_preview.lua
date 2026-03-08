return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = function()
    require("lazy").load({ plugins = { "markdown-preview.nvim" } })
    vim.fn["mkdp#util#install"]()
  end,
  keys = {
    { "<leader>mp", ft = "markdown", "<cmd>MarkdownPreview<cr>", desc = "Markdown Preview",},
    { "<leader>mP", "<cmd>MarkdownPreviewStop<cr>" }
  },
  config = function()
    vim.cmd([[do FileType]])
  end,
}
