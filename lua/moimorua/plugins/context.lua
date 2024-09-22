return {
  "wellle/context.vim",
  lazy = false,
  config = function()
    vim.cmd("let g:context_enabled = 1")
    vim.cmd("let g:context_max_height = 21")
    vim.cmd("let g:context_max_per_indent = 5")

  end
}
