return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"Weissle/persistent-breakpoints.nvim",
	},
	keys = {
		{
			"<F5>",
			function()
				require("dap").continue()
			end,
			desc = "continue",
		},
		{
			"<F10>",
			function()
				require("dap").step_over()
			end,
			desc = "step over",
		},
		{
			"<F11>",
			function()
				require("dap").step_into()
			end,
			desc = "step into",
		},
		{
			"<F12>",
			function()
				require("dap").step_out()
			end,
			desc = "step out",
		},
		{
			"<leader>dR",
			function()
				require("dap").restart()
			end,
			desc = "restart debugging session",
		},
		{
			"<leader>dx",
			function()
				require("dap").terminate()
			end,
			desc = "terminate debugging session",
		},
		{
			"<leader>db",
			"<cmd>lua require('persistent-breakpoints.api').toggle_breakpoint()<CR>",
			desc = "toggle breakpoint",
		},
		{
			"<leader>dc",
			"<cmd>lua require('persistent-breakpoints.api').set_conditional_breakpoint()<CR>",
			desc = "Set conditional breakpoint",
		},
		{
			"<leader>dd",
			"<cmd>lua require('persistent-breakpoints.api').clear_all_breakpoints()<CR>",
			desc = "Clear all breakpoints",
		},
		{
			"<leader>dr",
			function()
				require("dap").repl.open()
			end,
			desc = "repl open",
		},
		{
			"<leader>dl",
			function()
				require("dap").run_last()
			end,
			desc = "run last",
		},
		-- {
		-- 	"<leader>du",
		-- 	function()
		-- 		local widgets = require("dap.ui.widgets")
		-- 		local sidebar = widgets.sidebar(widgets.scopes)
		-- 		sidebar.open()
		-- 	end,
		-- 	desc = "open debugging sidebar",
		-- },
	},
	config = function()
		require("persistent-breakpoints").setup({
			load_breakpoints_event = { "BufReadPost" },
		})
		vim.fn.sign_define("DapBreakpoint", { text = "🔴", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapLogPoint", { text = "🔶", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapRejected", { text = "🚫", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointCondition", { text = "🟥", texthl = "", linehl = "", numhl = "" })
		vim.fn.sign_define("DapStopped", { text = "▶️", texthl = "", linehl = "", numhl = "" })
	end,
}
