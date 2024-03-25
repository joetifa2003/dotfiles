return {
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
					lua = { "stylua" },
					javascript = { { "prettierd", "prettier" } },
					typescript = { { "prettierd", "prettier" } },
					typescriptreact = { { "prettierd", "prettier" } },
					json = { { "prettierd", "prettier" } },
					go = { "goimports-reviser", "goimports" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_fallback = true,
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

	{
		"nvim-java/nvim-java",
		dependencies = {
			"nvim-java/lua-async-await",
			"nvim-java/nvim-java-core",
			"nvim-java/nvim-java-test",
			"nvim-java/nvim-java-dap",
			"MunifTanjim/nui.nvim",
			"neovim/nvim-lspconfig",
			"mfussenegger/nvim-dap",
			{
				"williamboman/mason.nvim",
				opts = {
					registries = {
						"github:nvim-java/mason-registry",
						"github:mason-org/mason-registry",
					},
				},
			},
		},
	},
}
