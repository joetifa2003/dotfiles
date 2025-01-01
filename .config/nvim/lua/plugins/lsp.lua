return {
	{
		"chrisgrieser/nvim-lsp-endhints",
		event = "LspAttach",
		opts = {}, -- required, even if empty
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("nvchad.configs.lspconfig").defaults()
			require("configs.lspconfig")
		end,
	},
	{
		"stevearc/conform.nvim",
		lazy = false,
		config = function()
			local options = {
				formatters_by_ft = {
					templ = { "templ" },
					lua = { "stylua" },
					javascript = { "prettierd" },
					typescript = { "prettierd" },
					typescriptreact = { "prettierd" },
					svelte = { "prettierd" },
					json = { "prettierd" },
					go = { "goimports-reviser", "goimports" },
					markdown = { "prettierd" },
				},
				format_on_save = {
					timeout_ms = 1000,
					lsp_fallback = false,
				},
			}

			require("conform").setup(options)
		end,
	},

	{
		"leoluz/nvim-dap-go",
		lazy = false,
		config = require("configs.dapgo"),
		dependencies = { "mfussenegger/nvim-dap" },
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		lazy = false,
		config = require("configs.dapvtext"),
		dependencies = { "mfussenegger/nvim-dap" },
	},
	{
		"rcarriga/nvim-dap-ui",
		lazy = false,
		config = require("configs.dapui"),
		dependencies = { "mfussenegger/nvim-dap" },
	},
	{
		"j-hui/fidget.nvim",
		lazy = false,
		opts = {},
	},
	{
		"hrsh7th/nvim-cmp",
		opts = {
			completion = { completeopt = "menu,menuone,noselect" },
			preselect = "none",
		},
	},
}
