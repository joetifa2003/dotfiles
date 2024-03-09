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
			require("configs.conform")
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			git = {
				enable = true,
			},

			renderer = {
				highlight_git = true,
				icons = {
					show = {
						git = true,
					},
				},
			},

			view = {
				side = "right",
			},

			on_attach = function(bufnr)
				local api = require("nvim-tree.api")

				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				-- default mappings
				api.config.mappings.default_on_attach(bufnr)

				-- custom mappings
				vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Up"))
				vim.keymap.set("n", "l", api.node.open.edit, opts("Up"))
			end,
		},
	},

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = require("configs.flash").opts,
		keys = require("configs.flash").keys,
	},
	{
		"nvim-orgmode/orgmode",
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter" },
		},
		lazy = false,
		config = require("configs.orgmode"),
	},
	{ "akinsho/org-bullets.nvim", lazy = false },
	{
		"lukas-reineke/headlines.nvim",
		lazy = false,
		dependencies = "nvim-treesitter/nvim-treesitter",
		opts = {
			org = {
				headline_highlights = { "Headline" },
			},
		},
	},

	{ "andweeb/presence.nvim", lazy = false },
	{ "wakatime/vim-wakatime", lazy = false },
	{
		"Exafunction/codeium.vim",
		lazy = false,
		enabled = true,
		config = function()
			vim.keymap.set("i", "<C-g>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<C-j>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true })
			vim.keymap.set("i", "<C-k>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true })
		end,
	},
	{ "windwp/nvim-ts-autotag", lazy = false, opts = {} },
	{ "folke/todo-comments.nvim", lazy = false, dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
	{ "mfussenegger/nvim-dap", lazy = false },
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
		"stevearc/dressing.nvim",
		lazy = false,
		config = require("configs.dressing"),
	},
	{
		"kdheepak/lazygit.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{ "mrjones2014/smart-splits.nvim", lazy = false },
	{
		"cbochs/grapple.nvim",
		lazy = false,
		opts = require("configs.graple"),
	},
	{
		"j-hui/fidget.nvim",
		lazy = false,
		opts = {},
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
