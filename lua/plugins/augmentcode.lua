return {
	"augmentcode/augment.vim",
	config = function()
		vim.keymap.set(
			"n",
			"<leader>ae",
			":let g:augment_disable_completions = v:false<CR>",
			{ desc = "Globally enable suggestions (on by default)" }
		)
		vim.keymap.set(
			"n",
			"<leader>ad",
			":let g:augment_disable_completions = v:true<CR>",
			{ desc = "Globally disable suggestions" }
		)
		vim.keymap.set("n", "<leader>ac", ":Augment chat<CR>", { desc = "Send a chat message to Augment" })
		vim.keymap.set("n", "<leader>an", ":Augment chat-new<CR>", { desc = "Start a new chat conversation" })
		vim.keymap.set("n", "<leader>at", ":Augment chat-toggle<CR>", { desc = "Toggle the chat panel visibility" })
	end,
}
