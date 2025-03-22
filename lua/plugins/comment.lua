return {
	"numToStr/Comment.nvim",
	opts = {
		padding = true,
		sticky = true,
		ignore = nil,
		toggler = { line = "/", block = "*" },
		opleader = { line = "/", block = "*" },
		extra = { above = "/O", below = "/o", eol = "/A" },
		mappings = { basic = true, extra = true },
		pre_hook = nil,
		post_hook = nil,
	},
	config = function(_, opts)
		require("Comment").setup(opts)
	end,
}
