--Plug 'maxmellon/vim-jsx-pretty'
return {
	{
		"maxmellon/vim-jsx-pretty",
		lazy = false,
		config = function()
			vim.cmd("let g:vim_jsx_pretty_highlight_close_tag = 1")
		end,
	},
}
