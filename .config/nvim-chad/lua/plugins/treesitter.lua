return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		-- NOTE: additional parser
		{ "nushell/tree-sitter-nu", build = ":TSUpdate nu" },
	},
	build = ":TSUpdate",
}
