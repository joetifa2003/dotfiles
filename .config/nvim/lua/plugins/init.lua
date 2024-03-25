return {
	{ "andweeb/presence.nvim", lazy = false },
	{ "wakatime/vim-wakatime", lazy = false },
	{ "windwp/nvim-ts-autotag", lazy = false, opts = {} },
	{ "folke/todo-comments.nvim", lazy = false, dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
	{ "mfussenegger/nvim-dap", lazy = false },
	{ "mrjones2014/smart-splits.nvim", lazy = false },
	{ "nvim-neotest/nvim-nio", lazy = false },

	{
		"kdheepak/lazygit.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"cbochs/grapple.nvim",
		lazy = false,
		opts = require("configs.graple"),
	},
}
