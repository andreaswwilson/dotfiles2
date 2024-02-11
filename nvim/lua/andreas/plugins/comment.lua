return {
	"numToStr/Comment.nvim",
	event = { "VeryLazy" },
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		local comment = require("Comment")
		comment.setup({})
	end,
}
