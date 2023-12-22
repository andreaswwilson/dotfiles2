return {
	"rcarriga/nvim-dap-ui",
	keys = {
		{
			"<leader>du",
			function()
				require("dapui").toggle()
			end,
			silent = true,
		},
	},
	opts = {
		layouts = {
			{
				elements = {
					{ id = "scopes", size = 1 },
				},
				size = 0.25,
				position = "bottom",
			},
			{
				elements = {
					{ id = "breakpoints", size = 0.30 },
					{ id = "watches", size = 0.70 },
				},
				size = 0.250,
				position = "right",
			},
		},
	},
	config = function(_, opts)
		require("dapui").setup(opts)
	end,
}
