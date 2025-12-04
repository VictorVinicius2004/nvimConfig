require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "lua", "rust", "ruby", "vim", "java", "html", "css", "javascript", "bash"},

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
