return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				initial_mode = "normal",
				set_env = { ["COLORTERM"] = "nil" },
			},
			pickers = {
				buffers = {
					show_all_buffers = true,
					sort_mru = true,
					mappings = {
						["i"] = {
						},
            ["n"]= {
              ["dd"] = "delete_buffer",
            }
					},
				},
			},
		})


		-- set keymaps
		local keymap = vim.keymap
		local builtin = require("telescope.builtin")
		-- Disable folding in Telescope's result window.
		vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })
		keymap.set("n", "<C-p>", builtin.git_files, {})
    -- jj.lsp_references()
		-- keymap.set("n", "<C-f>", function()
	  --		builtin.grep_string({ search = vim.fn.input("Grep > ") })
		-- end)
    keymap.set('n', '<C-l>l', function() builtin.lsp_references() end, { noremap = true, silent = true })
		keymap.set("n", "<C-g>", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<C-d>", "<cmd>Telescope buffers<cr>", { desc = "Switch between buffers" })
		keymap.set("n", "<leader>gg", "<cmd>Telescope git_status<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>gc", "<cmd>Telescope git commits<cr>", { desc = "Find todos" })
	end,
}
