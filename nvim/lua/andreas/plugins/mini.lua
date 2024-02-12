return {
	"echasnovski/mini.nvim",
	event = { "User FilePost" },
	config = function()
		require("mini.surround").setup()
		require("mini.pairs").setup()
	end,
}
