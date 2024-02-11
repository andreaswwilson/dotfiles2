return {
	"echasnovski/mini.nvim",
	event = { "VeryLazy" },
	config = function()
		require("mini.surround").setup()
		require("mini.pairs").setup()
	end,
}
