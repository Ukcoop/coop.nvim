return {
	"augmentcode/augment.vim",
	config = function()
		vim.g.augment_disable_completions = true
		vim.keymap.set({ "n", "v" }, "<leader>ac", ":Augment chat<CR>", { desc = "Send a chat message to Augment" })
		vim.keymap.set("n", "<leader>an", ":Augment chat-new<CR>", { desc = "Start a new chat conversation" })
		vim.keymap.set("n", "<leader>at", ":Augment chat-toggle<CR>", { desc = "Toggle the chat panel visibility" })
	end,
}
