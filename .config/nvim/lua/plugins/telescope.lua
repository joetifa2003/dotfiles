return {
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{
		"nvim-telescope/telescope.nvim",
		opts = {
			extensions_list = { "themes", "terms", "fzf" },
		},
	},
}
