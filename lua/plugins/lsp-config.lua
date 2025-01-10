return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"tailwindcss",
					"dockerls",
					"jsonls",
					"markdown_oxide",
					"sqlls",
					"solidity",
					"rust_analyzer",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.markdown_oxide.setup({})
			lspconfig.sqlls.setup({})
			lspconfig.solidity.setup({})
			lspconfig.rust_analyzer.setup({})

			vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua",
					"ast_grep",
					"prettier",
					"eslint_d",
				},
			})
		end,
	},
}
