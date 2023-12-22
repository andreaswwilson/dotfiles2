return {
	"leoluz/nvim-dap-go",
	ft = "go",
	dependencies = "mfussenegger/nvim-dap",
	keys = {
		{
			"<leader>dgt",
			function()
				require("dap-go").debug_test()
			end,
			desc = "nearest test",
		},
		{
			"<leader>dgl",
			function()
				require("dap-go").debug_last()
			end,
			desc = "debug last",
		},
	},
	config = function()
		require("dap-go").setup()
	end,
}
