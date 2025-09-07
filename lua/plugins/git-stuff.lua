return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<Leader>ph", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<Leader>lb", ":Gitsigns toggle_current_line_blame<CR>", {})
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "<Leader>gb", ":Git blame<CR>", {})
		end,
	},
}
