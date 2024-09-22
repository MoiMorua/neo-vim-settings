return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		require("nvim-ts-autotag").setup({
			opts = {
				-- Defaults
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = false,
			},

			-- per_filetype = {
			--  ["html"] = {
			--    enable_close = false
			--  }
			-- }
		})

		treesitter.setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			-- autotag = {
			-- 	enable = true,
			-- },
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"c",
				"rust",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			rainbow = {
				enable = true,
				disable = { "html" },
				extended_mode = false,
				max_file_lines = nil,
			},
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
			refactor = {
				navigation = {
					enable = true,
					keymaps = {
						--goto_definition = "gnd",
						--list_definitions = "gnD",
						list_definitions_toc = "g0",
						goto_next_usage = "<C-*>",
						goto_previous_usage = "<C-#>",
					},
				},
				highlight_definitions = {
					enable = true,
				},
				highlight_current_scope = {
					enable = true,
				},
				smart_rename = {
					enable = true,
					keymaps = {
						smart_rename = "grr",
					},
				},
			},
		})
	end,
}
