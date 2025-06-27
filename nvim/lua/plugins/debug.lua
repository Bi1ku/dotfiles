return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			dap.configurations.c = {
				{
					name = "Launch file",
					type = "codelldb",
					request = "launch",
					program = vim.fn.getcwd() .. "/build/execute", -- default executable path for my c projects
					cwd = "${workspaceFolder}",
					stopOnEntry = false,
				},
			}

			dap.adapters.codelldb = {
				type = "executable",
				command = "/Users/biiku/.config/codelldb-darwin-arm64/extension/adapter/codelldb",
			}

			vim.keymap.set("n", "<leader>b", function()
				dap.toggle_breakpoint()
			end, {})

			vim.keymap.set("n", "<leader>s", function()
				require("dap").continue()
			end, {})
		end,
	},
}
